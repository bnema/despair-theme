# Despair Theme - Color Design System

A dark, muted color palette with subtle contrasts.

## Color Palette

### Black
- **Usage**: Primary dark background, deep shadows
- **HEX**: `#08090a`
- **RGB**: `rgba(8, 9, 10, 1)`
- **HSL**: `hsla(210, 11%, 4%, 1)`

### Rose Quartz
- **Usage**: Muted accent, selected text, highlights
- **HEX**: `#a7a2a9`
- **RGB**: `rgba(167, 162, 169, 1)`
- **HSL**: `hsla(283, 4%, 65%, 1)`

### Seasalt
- **Usage**: Primary foreground text, light elements
- **HEX**: `#f4f7f5`
- **RGB**: `rgba(244, 247, 245, 1)`
- **HSL**: `hsla(140, 16%, 96%, 1)`

### Davys Gray
- **Usage**: Borders, secondary text, UI elements
- **HEX**: `#575a5e`
- **RGB**: `rgba(87, 90, 94, 1)`
- **HSL**: `hsla(214, 4%, 35%, 1)`

### Eerie Black
- **Usage**: Secondary dark background, containers
- **HEX**: `#222823`
- **RGB**: `rgba(34, 40, 35, 1)`
- **HSL**: `hsla(130, 8%, 15%, 1)`

### Slate Teal
- **Usage**: Hint color, subtle accents, add visual interest without overwhelming
- **HEX**: `#5a8585`
- **RGB**: `rgba(90, 133, 133, 1)`
- **HSL**: `hsla(180, 19%, 44%, 1)`

---

## CSS Variables

```css
/* CSS HEX */
--black: #08090aff;
--rose-quartz: #a7a2a9ff;
--seasalt: #f4f7f5ff;
--davys-gray: #575a5eff;
--eerie-black: #222823ff;
--slate-teal: #5a8585ff;

/* CSS HSL */
--black: hsla(210, 11%, 4%, 1);
--rose-quartz: hsla(283, 4%, 65%, 1);
--seasalt: hsla(140, 16%, 96%, 1);
--davys-gray: hsla(214, 4%, 35%, 1);
--eerie-black: hsla(130, 8%, 15%, 1);
--slate-teal: hsla(180, 19%, 44%, 1);
```

## SCSS Variables

```scss
/* SCSS HEX */
$black: #08090aff;
$rose-quartz: #a7a2a9ff;
$seasalt: #f4f7f5ff;
$davys-gray: #575a5eff;
$eerie-black: #222823ff;
$slate-teal: #5a8585ff;

/* SCSS HSL */
$black: hsla(210, 11%, 4%, 1);
$rose-quartz: hsla(283, 4%, 65%, 1);
$seasalt: hsla(140, 16%, 96%, 1);
$davys-gray: hsla(214, 4%, 35%, 1);
$eerie-black: hsla(130, 8%, 15%, 1);
$slate-teal: hsla(180, 19%, 44%, 1);

/* SCSS RGB */
$black: rgba(8, 9, 10, 1);
$rose-quartz: rgba(167, 162, 169, 1);
$seasalt: rgba(244, 247, 245, 1);
$davys-gray: rgba(87, 90, 94, 1);
$eerie-black: rgba(34, 40, 35, 1);
$slate-teal: rgba(90, 133, 133, 1);
```

## Gradients

```scss
/* SCSS Gradient */
$gradient-top: linear-gradient(0deg, #08090aff, #5a8585ff, #a7a2a9ff, #f4f7f5ff, #575a5eff, #222823ff);
$gradient-right: linear-gradient(90deg, #08090aff, #5a8585ff, #a7a2a9ff, #f4f7f5ff, #575a5eff, #222823ff);
$gradient-bottom: linear-gradient(180deg, #08090aff, #5a8585ff, #a7a2a9ff, #f4f7f5ff, #575a5eff, #222823ff);
$gradient-left: linear-gradient(270deg, #08090aff, #5a8585ff, #a7a2a9ff, #f4f7f5ff, #575a5eff, #222823ff);
$gradient-top-right: linear-gradient(45deg, #08090aff, #5a8585ff, #a7a2a9ff, #f4f7f5ff, #575a5eff, #222823ff);
$gradient-bottom-right: linear-gradient(135deg, #08090aff, #5a8585ff, #a7a2a9ff, #f4f7f5ff, #575a5eff, #222823ff);
$gradient-top-left: linear-gradient(225deg, #08090aff, #5a8585ff, #a7a2a9ff, #f4f7f5ff, #575a5eff, #222823ff);
$gradient-bottom-left: linear-gradient(315deg, #08090aff, #5a8585ff, #a7a2a9ff, #f4f7f5ff, #575a5eff, #222823ff);
$gradient-radial: radial-gradient(#08090aff, #5a8585ff, #a7a2a9ff, #f4f7f5ff, #575a5eff, #222823ff);
```

## Theme Mapping

### Recommended Usage for Omarchy Apps

| Element | Color | Usage |
|---------|-------|-------|
| Background | Black (`#08090a`) | Primary dark background, terminal background |
| Container Background | Eerie Black (`#222823`) | Secondary containers, panel backgrounds |
| Foreground/Text | Seasalt (`#f4f7f5`) | Primary text color |
| Border | Davys Gray (`#575a5e`) | Window borders, separators |
| Accent/Selected | Rose Quartz (`#a7a2a9`) | Selected items, highlights, accents |
| Hint/Subtle | Slate Teal (`#5a8585`) | Subtle accents, hints, visual interest |

## Color Accessibility

- **Seasalt on Black**: High contrast for readability
- **Slate Teal on Black**: Good contrast for hints and subtle accents
- **Rose Quartz on Black**: Medium contrast for accents
- **Davys Gray**: Subtle borders without harsh contrast
