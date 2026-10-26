# Assets

Some of these files are referenced from outside the repository. Read before
deleting or renaming anything here.

- `screenshot.png` — **the theme's cover in Obsidian's community directory.**
  Referenced by `obsidian-releases/community-css-themes.json`
  (`"screenshot": "assets/screenshot.png"`). Removing it leaves a broken image
  in Settings → Appearance → Themes → Manage.
- `EN-us/` and `PT-br/` — banners and diagrams embedded by `README.md` and
  `README.pt.md`. Keep both locales in sync.
- `logos/` — brand marks, used outside the repository (store listings, social).

The theme itself ships only `theme.css` and `manifest.json`; nothing here is
loaded by Obsidian at runtime.
