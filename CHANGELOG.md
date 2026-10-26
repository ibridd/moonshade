# Changelog

All notable changes to Moonshade are documented here. The same notes are
published with each [GitHub release](https://github.com/ibridd/moonshade/releases).

The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and
the project uses [Semantic Versioning](https://semver.org/).

## [1.0.6] — 2026-10-25

### Changed

- **Command palette and quick switcher:** the modal follows the theme's corner
  radius. The search field lost its box and glow (a single line underneath) and
  the results list has rounded bottom corners.
- **Pane resize handles:** they use the border color and switch to the accent
  color on hover.
- **Settings window:** lighter border. When opened in a separate window, it gets
  a frame drawn by the theme.
- **Tasks:** the checkbox is fully filled with the state's color, like the
  completed check, for all 20 states the theme defines.
- **Floating explorer pills:** the explorer buttons and the vault profile fit
  their content instead of stretching. `--lua-buttons-align` sets where the
  button pill sits (`center` or `flex-start`).

### Fixed

- **Label-style callout:** the icon was invisible (same color as the label
  background); the fold arrow now shows on collapsible callouts, pointing right
  when closed and down when open; long titles truncate with an ellipsis.
- **Bases table:** the corners ignored the corner radius because Obsidian
  hard-codes 7px inside notes. They now follow it.
- **File explorer:** icons are aligned with the file name. Fine-tune with
  `--lua-icon-nudge`, `--lua-file-icon-shift` and `--lua-icon-size` (default
  15px).
- **Primary button (Save, Create…):** it kept losing its color on hover; it now
  stays on the accent color. The warning button keeps its red border.
- **Button hover animation:** buttons lift 1px with a soft shadow and sink when
  clicked; icon buttons grow 7% and shrink when clicked. Adjust with
  `--lua-btn-lift` and `--lua-icon-grow`. Duration follows the animation speed
  setting, drops to zero with the system's reduce-motion, and only applies with
  a mouse.

## [1.0.5] — 2026-10-25

### Changed

- Reduced `!important` usage from 20 to 7 by raising selector specificity
  (callouts, table cells, mobile explorer buttons, task checkboxes,
  reduced-motion).
- Replaced `clip-path: inset()` on resize handles with `top`/`height`.
- Replaced `text-decoration-color` with the `text-decoration` shorthand.
- Replaced one `:has()` with a sibling combinator and scoped the remaining
  right-sidebar one to `.workspace`.

No visual changes intended.

## [1.0.4] — 2026-10-25

A mobile polish release; desktop is unchanged.

### Changed

- **Mobile corner radius:** round buttons and bars on phones and tablets
  (navigation bar, drawer header icons, sidebar toggles, view header actions)
  and the settings cards follow the corner radius slider. At the default (10)
  buttons stay round; at 0 they become square.
- **Mobile navigation bar:** the floating bar uses the theme's palette.
- **Mobile file explorer:** the drawer's button bar lost its pill frame (border,
  blur and shadow were drawn only halfway on Android) and got side margins; the
  extension tag is vertically centered and no longer stretches the file row.
- **Mobile modals and menus:** the pop/drop animation applies only on desktop.
  On phones it conflicted with Obsidian's bottom sheets and broke the
  drag-to-close gesture.
- **Touch screens:** table rows no longer stay highlighted after a tap.
- **Style Settings:** the info text now notes that the status bar, vault pill and
  tab options have no effect on phones, and the corner radius description
  mentions the mobile buttons and bars.
- Mobile rules are grouped in one section of `theme.css`.

Minimum Obsidian version remains **1.9.0**.

## [1.0.3] — 2026-10-24

### Changed

- Minimum Obsidian version raised to **1.9.0** (matches the Bases styling
  requirement).
- Removed `!important` from the resize handle (divider line) rules, relying on
  selector specificity instead.
- Replaced the `p:has(mark)` selector with a rule on `mark` itself, so the extra
  line height applies only where there is a highlight.

No visual changes intended.

## [1.0.2] — 2026-10-24

Maintenance release. See the
[1.0.1…1.0.2 comparison](https://github.com/ibridd/moonshade/compare/1.0.1...1.0.2).

## [1.0.1] — 2026-10-24

Maintenance release. See the
[1.0.0…1.0.1 comparison](https://github.com/ibridd/moonshade/compare/1.0.0...1.0.1).

## [1.0.0] — 2026-10-24

First public release: a calm dark purple theme for Obsidian.

### Added

- **12 colour palettes** that change the accent, folder colours, graph colours
  and Canvas borders together.
- **2 background tones:** Deep (almost black) and Night (a bit lighter).
- **Flat layout:** joined frames, split side by side or stacked, with a divider
  in the tab strip. Both sidebars can be collapsed.
- **6 callout styles:** default, side bar, header band, minimal, title tag and
  shadow card. Every type has its own colour, with Portuguese names and a
  fallback for unknown types.
- **Note styling:** headings, links, tags, highlights, tasks (optional Lucide
  icons), quotes, tables and code.
- **Files and folders:** an icon per file type and an extension badge (`.png`,
  `.pdf`, `.base`, `.canvas`…), except for `.md` notes. Folders follow the
  palette.
- **21 options in Style Settings:** palette, tone, corner radius, text width and
  size, line height, table spacing, callout style, fonts, scrollbars, animation
  speed and more.
- Floating status bar, vault profile pill, window buttons, tooltips and menus,
  command palette and modals, light paper when printing, reduced-motion support,
  phone and tablet tweaks, and styling for Canvas, Bases and the Kanban plugin
  (best effort: these depend on Obsidian internals and plugins).

[1.0.6]: https://github.com/ibridd/moonshade/releases/tag/1.0.6
[1.0.5]: https://github.com/ibridd/moonshade/releases/tag/1.0.5
[1.0.4]: https://github.com/ibridd/moonshade/releases/tag/1.0.4
[1.0.3]: https://github.com/ibridd/moonshade/releases/tag/1.0.3
[1.0.2]: https://github.com/ibridd/moonshade/releases/tag/1.0.2
[1.0.1]: https://github.com/ibridd/moonshade/releases/tag/1.0.1
[1.0.0]: https://github.com/ibridd/moonshade/releases/tag/1.0.0
