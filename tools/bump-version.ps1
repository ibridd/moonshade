#Requires -Version 5.1
<#
.SYNOPSIS
    Atualiza a versao do Moonshade em todos os lugares de uma vez.

.DESCRIPTION
    O numero da versao aparece em cinco tipos de arquivo: manifest.json,
    README.md, README.pt.md, os banners/covers SVG (com V1.0.x ou v1.0.x
    desenhado no texto) e as referencias do CHANGELOG.

    O script le a versao atual do manifest e troca em todos eles de uma vez,
    preservando maiusculas/minusculas e as quebras de linha de cada arquivo.
    Nos SVGs ele troca qualquer versao que encontrar, o que tambem conserta
    imagens que tenham ficado para tras numa release anterior.

.PARAMETER Version
    Versao de destino, por exemplo 1.0.8.

.PARAMETER Next
    Calcula o proximo patch a partir do manifest (1.0.7 -> 1.0.8).

.PARAMETER DryRun
    Mostra o que mudaria, sem gravar nada.

.EXAMPLE
    .\tools\bump-version.ps1 -Next -DryRun
    .\tools\bump-version.ps1 -Next
    .\tools\bump-version.ps1 -Version 1.1.0
#>
[CmdletBinding(DefaultParameterSetName = 'Next')]
param(
    [Parameter(ParameterSetName = 'Explicit', Mandatory = $true)]
    [ValidatePattern('^\d+\.\d+\.\d+$')]
    [string]$Version,

    [Parameter(ParameterSetName = 'Next')]
    [switch]$Next,

    [switch]$DryRun
)

$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$utf8 = New-Object System.Text.UTF8Encoding($false)

function Read-Text([string]$path) {
    [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)
}

function Write-Text([string]$path, [string]$text) {
    [System.IO.File]::WriteAllText($path, $text, $utf8)
}

# --- versao atual e de destino ------------------------------------------------
$manifestPath = Join-Path $root 'manifest.json'
$manifest = Read-Text $manifestPath
if ($manifest -notmatch '"version"\s*:\s*"(\d+\.\d+\.\d+)"') {
    throw 'Nao consegui ler a versao em manifest.json'
}
$old = $Matches[1]

if ($PSCmdlet.ParameterSetName -eq 'Next') {
    $p = $old.Split('.')
    $p[2] = ([int]$p[2] + 1).ToString()
    $new = $p -join '.'
} else {
    $new = $Version
}

Write-Host "Versao: $old -> $new" -ForegroundColor Cyan
if ($new -eq $old) {
    Write-Host 'Mesma versao: apenas arquivos defasados (SVGs) serao sincronizados.' -ForegroundColor DarkGray
}
if ($DryRun) { Write-Host '(simulacao: nada sera gravado)' -ForegroundColor DarkGray }
Write-Host ''

$total = 0
$avisos = @()
$alterados = @()

function Update-File {
    param(
        [string]$RelativePath,
        [string]$Pattern,
        $Replacement,
        [int]$Esperado = -1,
        [switch]$Silent
    )
    $path = Join-Path $root $RelativePath
    if (-not (Test-Path $path)) {
        $script:avisos += "ausente: $RelativePath"
        return
    }
    $text = Read-Text $path
    $count = ([regex]::Matches($text, $Pattern)).Count
    if ($count -eq 0) {
        if (-not $Silent) { $script:avisos += "sem ocorrencia: $RelativePath" }
        return
    }
    if ($Esperado -ge 0 -and $count -ne $Esperado) {
        $script:avisos += "$RelativePath tem $count ocorrencia(s), esperado $Esperado"
    }
    $novo = [regex]::Replace($text, $Pattern, $Replacement)
    if (-not $DryRun) { Write-Text $path $novo }
    $script:total += $count
    $script:alterados += $RelativePath
    '{0,-52} {1} troca(s)' -f $RelativePath, $count
}

# 1. manifest
Update-File 'manifest.json' '"version"\s*:\s*"\d+\.\d+\.\d+"' "`"version`": `"$new`"" 1

# 2. READMEs (linha da tabela de compatibilidade)
Update-File 'README.md' '(\| \*\*Version\*\* \| )\d+\.\d+\.\d+' "`${1}$new" 1
Update-File 'README.pt.md' '(\| \*\*Versão\*\* \| )\d+\.\d+\.\d+' "`${1}$new" 1

# 3. SVGs: troca qualquer V1.2.3 / v1.2.3, mantendo a caixa da letra
$svgs = Get-ChildItem (Join-Path $root 'assets') -Recurse -Filter *.svg
foreach ($svg in $svgs) {
    $rel = $svg.FullName.Substring($root.Length).TrimStart('\', '/')
    Update-File $rel '(?<![0-9.])V\d+\.\d+\.\d+(?![0-9.])' "V$new" -Silent
    Update-File $rel '(?<![0-9.])v\d+\.\d+\.\d+(?![0-9.])' "v$new" -Silent
}

# 4. CHANGELOG: so confere, nao inventa conteudo
$changelogPath = Join-Path $root 'CHANGELOG.md'
if (Test-Path $changelogPath) {
    $changelog = Read-Text $changelogPath
    if ($changelog -notmatch [regex]::Escape("## [$new]")) {
        $avisos += "CHANGELOG.md: falta a secao '## [$new]'"
    }
    if ($changelog -notmatch [regex]::Escape("[$new]: https://")) {
        $avisos += "CHANGELOG.md: falta a referencia '[$new]: https://github.com/ibridd/moonshade/releases/tag/$new'"
    }
}

# --- resumo -------------------------------------------------------------------
Write-Host ''
if ($total -eq 0) {
    Write-Host 'Nenhum arquivo precisava de troca.' -ForegroundColor Yellow
} elseif ($DryRun) {
    Write-Host "$total troca(s) em $($alterados.Count) arquivo(s) -- simulacao." -ForegroundColor Green
    Write-Host 'Rode sem -DryRun para gravar.' -ForegroundColor DarkGray
} else {
    Write-Host "$total troca(s) em $($alterados.Count) arquivo(s)." -ForegroundColor Green
    Write-Host ''
    git -C $root diff --stat
}

if ($avisos.Count -gt 0) {
    Write-Host "`nAtencao:" -ForegroundColor Yellow
    $avisos | ForEach-Object { "  - $_" }
}
