<p align="center">
    <img src="assets/moonshade-banner.svg" alt="Moonshade, um cantinho calmo para escrever à noite" width="100%">
</p>

---

<p align="center">
    <img src="assets/moonshade-screenshot.svg" width="100%">
</p>

---

### 📃 Prefácio

Este tema nasceu da necessidade de ter um cantinho calmo para escrever à noite: um roxo bem escuro, bordas discretas e um texto que não cansa os olhos. Foi feito primeiro para o meu próprio uso, então talvez não atenda a tudo o que você precisa. Mas, se ele combinar com o seu jeito de escrever e pensar, fico feliz em dividi-lo com você.

Para que ele possa ser seu também, deixei algumas opções no plugin **Style Settings**, onde você pode personalizar paletas de cor, tons de fundo, tipografia e mais. Sem o plugin, o tema funciona normalmente com o visual padrão.

Ele também é fruto de aprendizado. Usei ferramentas de IA como companhia durante o desenvolvimento, para entender melhor cada parte do CSS enquanto construía o tema. Ele continua evoluindo.

Fique à vontade para usar, adaptar ao seu gosto e sugerir melhorias. Seja bem-vindo(a).

---

### ✨ Características

O Moonshade é simples de propósito: não reinventa o Obsidian, só o deixa mais calmo para escrever à noite. Os detalhes que ele cuida:

- **Só modo escuro**, em roxo bem escuro, com dois tons de fundo.
- **Doze paletas** que trocam de uma vez o destaque e as cores de pastas e arquivos, e uma opção para trocar só a cor de destaque.
- **Cantos arredondados** ajustáveis de 0 a 20 px em abas, botões, tabelas, citações e molduras.
- **Explorador com ícones** para pastas, notas, Bases, Canvas, imagens e PDFs, com a extensão (`.png`, `.base`, `.canvas`...) em uma etiqueta discreta no fim da linha. As notas `.md` ficam sem etiqueta.
- **Abas compactas**, com a aba ativa maior e sublinhada na cor de destaque, ou as abas padrão do Obsidian, se preferir. As abas empilhadas também têm visual próprio.
- **Seis estilos de callout** à escolha (padrão, barra lateral, cabeçalho em faixa, minimalista, etiqueta e cartão com sombra), com cores e ícones também para os tipos em português (`> [!dica]`, `> [!aviso]`...).
- **Notas bem acabadas:** títulos em degraus nítidos, tabelas, citações, callouts, blocos de código, propriedades e tags com a mesma borda e o mesmo arredondamento.
- **Tipografia à escolha:** fonte do texto, dos títulos, da interface e do código (com opção para desligar ligaduras), além do tamanho do texto, da altura da linha e da largura da coluna.
- **Interface flutuante:** barra de status, perfil do cofre e botões do explorador em pílulas com borda e sombra suave (dá para voltar ao clássico), botões da janela em traço fino e barras de rolagem discretas.
- **Checkboxes de tarefa com 22 estados:** além de pendente e feito, mais 20 estados (`- [/]`, `- [>]`, `- [!]`, `- [I]`...), cada um com ícone e cor próprios, e uma opção para trocar tudo por ícones Lucide sem caixa.
- **Canvas, Bases e Kanban** estilizados no mesmo visual.
- **Animações suaves**, com velocidade ajustável, que respeitam a opção do sistema de reduzir movimento.
- **Exportação para PDF** em papel claro, mesmo com o tema escuro.
- **Funciona sem plugins.** O Style Settings só acrescenta as opções.

> [!IMPORTANT]
> O tema existe apenas no modo escuro, não aplicando nada no modo claro do Obsidian.

---

### 📥 Instalação

**Pelo Obsidian:**

>1. Abra _Configurações → Aparência_ e, em _Temas_, clique em **Gerenciar**.
>2. Procure por **Moonshade** e clique em **Instalar e usar**.

**Manualmente:**

>1. Baixe `theme.css` e `manifest.json` deste repositório.
>2. Coloque os dois arquivos em `<seu cofre>/.obsidian/themes/Moonshade/`.
>3. Em _Configurações → Aparência_, selecione o tema.

**Opcional:** instale o plugin [Style Settings](https://github.com/mgmeyers/obsidian-style-settings) para personalizar fundo, paletas e muito mais.

---

### 🎛️ Personalização

Com o Style Settings instalado, as opções ficam em _Configurações → Style Settings → Moonshade_.

| Grupo | O que você ajusta |
| --- | --- |
| **Cores** | Paleta de cores, cor de destaque e tom do fundo |
| **Formato** | Arredondamento dos cantos, largura do texto da nota e estilo dos callouts |
| **Abas** | Abas do tema (pílulas) ou abas padrão do Obsidian |
| **Texto e tabelas** | Tamanho do texto, altura da linha, espaçamento das tabelas e ícones Lucide nos checkboxes |
| **Tipografia** | Fonte do texto, dos títulos, da interface e do código, e ligaduras |
| **Interface** | Barras de rolagem, velocidade das animações, rolagem suave, barra de status, perfil do cofre e botões do explorador clássicos |

---

### 🌑 Tons de Fundo

<img src="assets/moonshade-background-tones.svg" alt="Comparação dos tons de fundo Profunda e Noite"><br>

O Moonshade não tem modo claro, mas oferece dois tons de fundo escuros. A escolha muda a base de todo o Obsidian: painéis, barra lateral e editor.

- **Profunda:** o mais escuro, quase preto. Tem mais contraste com o texto e dá um ar mais intenso e marcante ao tema.
- **Noite:** um degrau mais claro, com um roxo-azulado que deixa tudo mais suave e calmo, como a noite. É a escolha para quem prefere menos contraste.

A opção se chama **Tom do fundo**.

---

### 🎨 Paleta de Cores

<img src="assets/moonshade-color-palettes.svg" alt="Visão geral das doze paletas de cores do tema"><br>

O tema possui doze paletas de cores diferentes: Lua, Lavanda, Oceano, Céu, Aurora, Bosque, Mel, Âmbar, Pêssego, Rubi, Crepúsculo e Névoa. Cada uma muda de uma vez a cor de destaque (links, listas, itens selecionados, borda da janela ativa e tags), as pastas e as cores do gráfico. Os arquivos mantêm uma cor fixa. A opção é **Paleta de cores**; para mudar só a cor de links, seleção e item ativo, use **Cor de destaque**, logo abaixo dela.

---

### 💬 Estilos de Callout

<img src="assets/moonshade-callout-styles.svg" alt="Os seis estilos de callout do tema"><br>

Os blocos de aviso (`> [!note]`, `> [!tip]`...) têm seis aparências. O que muda é só o formato (borda, barra, cabeçalho, etiqueta ou sombra); a cor de cada tipo continua a mesma em todos. Há também cores e ícones para os nomes em português, como `dica`, `aviso`, `erro` e `exemplo`. A opção é **Estilo dos callouts**.

---

### 🗂️ Explorador e Elementos Flutuantes

<img src="assets/moonshade-file-explorer.svg" alt="Explorador de arquivos com ícones e extensões"><br>

Pastas, notas, Bases, Canvas, imagens e PDFs têm ícones próprios, e a extensão aparece numa etiqueta à direita (as notas `.md` ficam sem ela). A cor das pastas segue a paleta; a dos arquivos é fixa.

<img src="assets/moonshade-floating-elements.svg" alt="Comparação entre os elementos clássicos e os flutuantes"><br>

A barra de status, o perfil do cofre e os botões do explorador flutuam em pílulas, com borda, desfoque e uma sombra suave. Os três podem voltar ao visual clássico, cada um por uma opção própria no Style Settings: barra de status clássica, perfil do cofre clássico e botões do explorador clássicos.

---

### 🗃️ Abas

<img src="assets/moonshade-tab-styles.svg" alt="Estilos de abas: Moonshade, padrão do Obsidian e empilhadas"><br>

As abas do Moonshade são pílulas compactas, com a aba ativa maior e sublinhada. Se preferir o estilo do Obsidian, ligue **Abas padrão do Obsidian**; o modo de abas empilhadas tem visual próprio e não muda.

---

### ✅ Checkboxes de Tarefa

<img src="assets/moonshade-task-checkboxes.svg" alt="Os 22 estados de tarefa, em caixa e em ícones Lucide"><br>

Além do pendente `- [ ]` e do feito `- [x]`, escreva outro caractere dentro dos colchetes para marcar o estado da tarefa, como `- [/] Escrever as notas da versão`. São 20 estados extras, cada um com ícone e cor próprios, e os caracteres seguem a convenção de temas como o Minimal, então notas que já usam esses estados continuam funcionando.

| Estado | Caractere | Estado | Caractere | Estado | Caractere |
| --- | --- | --- | --- | --- | --- |
| Em andamento | `[/]` | Estrela | `[*]` | Local | `[l]` |
| Cancelado | `[-]` | Ideia | `[I]` | Economia | `[S]` |
| Adiado | `[>]` | Urgente | `[f]` | A favor | `[p]` |
| Agendado | `[<]` | Chave | `[k]` | Contra | `[c]` |
| Importante | `[!]` | Vitória | `[w]` | Sobe | `[u]` |
| Pergunta | `[?]` | Citação | `["]` | Desce | `[d]` |
| Informação | `[i]` | Favorito | `[b]` | | |

Por padrão, cada estado aparece em uma caixa tingida com a cor dele, e só o cancelado `[-]` fica riscado e apagado. As letras diferenciam maiúsculas de minúsculas: `[i]` é informação e `[I]` é ideia.

Se preferir, ligue **Ícones Lucide nos checkboxes**: some a caixa e fica só o ícone, do mesmo tamanho dela. O pendente vira um círculo vazio, só com o contorno, e o feito e todos os estados extras viram ícones preenchidos na cor do estado.

---

### 🧩 Compatibilidade

| | |
| --- | --- |
| **Obsidian** | 1.4.0 ou superior (a estilização de Bases exige o Obsidian 1.9 ou superior) |
| **Modo** | Somente escuro |
| **Plugins** | Style Settings (opcional). Canvas, Bases e Kanban estilizados |
| **Plataforma** | Pensado para desktop. No celular funciona com ajustes básicos |

---

### ☕ Caso você goste do tema

Ele é gratuito e serve também como minha forma de aprendizado. Se quiser contribuir com um cafezinho (ou salvar minha coluna e as noites mal dormidas), o link está aqui:

<a href="https://www.buymeacoffee.com/ibriddge" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me a Coffee" style="height: 50px !important;width: 200px !important;"></a>

---

### 📬 Feedback e Suporte

Encontrou um bug ou tem uma sugestão? Abra uma [issue](https://github.com/ibridd/moonshade/issues) no repositório.

---

### 📄 Créditos e Licença

- Licença [MIT](LICENSE).
- Ícones do explorador e dos checkboxes de tarefa baseados no [Lucide](https://lucide.dev) (licença ISC).
- Personalização pelo plugin [Style Settings](https://github.com/mgmeyers/obsidian-style-settings), de mgmeyers.

---

<p align="center">
    <img src="assets/moonshade-footer.svg" alt="Moonshade, um cantinho calmo para escrever à noite" widith="100%">
</p>
