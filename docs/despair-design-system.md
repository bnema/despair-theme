# Despair Design System
**Version 1.0** | Design Guidelines & Color Palette Reference

A comprehensive dark theme design system built around muted grays and subtle teals, emphasizing minimalism, depth, and visual hierarchy through careful use of desaturated tones.

---

## Table of Contents
1. [Core Philosophy](#core-philosophy)
2. [Color Palette](#color-palette)
3. [UI Component Guidelines](#ui-component-guidelines)
4. [Typography & Text Hierarchy](#typography--text-hierarchy)
5. [State Management](#state-management)
6. [Application-Specific Adaptations](#application-specific-adaptations)

---

## Core Philosophy

The Despair design system is built on these fundamental principles:

- **Muted Minimalism**: Desaturated grays and subtle teals create a calm, focused environment
- **Subtle Depth**: Multiple shades of gray provide hierarchy without harsh contrasts
- **Restrained Accent**: Teal serves as a gentle hint color, never overwhelming
- **Layered Shadows**: Progressive darkening creates depth without borders
- **Professional Restraint**: Understated aesthetic for distraction-free work

---

## Color Palette

### Background Colors

| Name | Hex | RGB | Usage | Lightness |
|------|-----|-----|-------|-----------|
| **Void Black** | `#08090a` | `8, 9, 10` | Primary editor/terminal background, deepest layer | 4% |
| **Shadow Gray** | `#0f1011` | `15, 16, 17` | Sidebar, borders, subtle dividers | 6% |
| **Deep Charcoal** | `#181a1b` | `24, 26, 27` | Floating panels, input fields | 10% |
| **Eerie Black** | `#222823` | `34, 40, 35` | Active tab background, highlighted sections | 15% |
| **Slate Gray** | `#2d3236` | `45, 50, 54` | Hover states, card backgrounds | 19% |

**Design Notes:**
- Use Void Black (`#08090a`) for maximum contrast with text
- Layer backgrounds progressively: void → shadow → charcoal → eerie → slate
- Avoid using more than 3 background shades in a single view
- The green tint in Eerie Black adds subtle warmth

### Foreground & Text Colors

| Name | Hex | RGB | Usage | Weight |
|------|-----|-----|-------|--------|
| **Seasalt** | `#f4f7f5` | `244, 247, 245` | Main body text, active UI elements | Regular |
| **Pure White** | `#fefefe` | `254, 254, 254` | Emphasized text, selected items, function names | Bold |
| **Light Gray** | `#b8bbbf` | `184, 187, 191` | Secondary information, labels | Regular |
| **Silver Gray** | `#8b8f94` | `139, 143, 148` | Tertiary text, inactive elements | Regular |
| **Dim Gray** | `#6a6e73` | `106, 110, 115` | Comments, hints, placeholders | Regular/Italic |

**Contrast Ratios:**
- Seasalt on Void Black: ~14:1 (WCAG AAA)
- Pure White on Void Black: ~16:1 (WCAG AAA)
- Light Gray on Void Black: ~8:1 (WCAG AAA)
- Dim Gray on Void Black: ~5:1 (WCAG AA)

### Accent & Interactive Colors - Teal Spectrum

| Name | Hex | RGB | Usage | Context |
|------|-----|-----|-------|---------|
| **Bright Teal** | `#7db5b5` | `125, 181, 181` | Keywords, links, active indicators, focus states | Primary action |
| **Slate Teal** | `#5a8585` | `90, 133, 133` | Types, classes, buttons, active selections | Secondary action |
| **Deep Teal** | `#3d6666` | `61, 102, 102` | Numbers, constants, secondary elements | Tertiary |
| **Dark Teal** | `#2a4a4a` | `42, 74, 74` | Selections, borders, hover states | Background accent |
| **Muted Teal** | `#1f3636` | `31, 54, 54` | Subtle highlights, inactive states | Minimal accent |

**Opacity Modifiers:**
- `80` (50% opacity): Hover states, inactive selections
- `60` (37% opacity): Subtle highlights
- `40` (25% opacity): Very subtle backgrounds
- `20` (12% opacity): Barely visible overlays

### Neutral Grays - Hierarchy Spectrum

| Name | Hex | RGB | Usage | Lightness |
|------|-----|-----|-------|-----------|
| **Rose Quartz** | `#a7a2a9` | `167, 162, 169` | Selected text, muted accents | 65% |
| **Storm Gray** | `#757982` | `117, 121, 130` | Borders, separators | 48% |
| **Davys Gray** | `#575a5e` | `87, 90, 94` | Inactive borders, subtle UI elements | 35% |
| **Graphite** | `#3f4245` | `63, 66, 69` | Very subtle dividers | 26% |

### Semantic & Status Colors

| Name | Hex | RGB | Usage | Semantic Meaning |
|------|-----|-----|-------|------------------|
| **Success Teal** | `#7db5b5` | `125, 181, 181` | Git additions, success states, confirmations | Positive action |
| **Soft Red** | `#d96c75` | `217, 108, 117` | Errors, deletions, destructive actions | Negative action |
| **Muted Orange** | `#d9a66c` | `217, 166, 108` | Warnings, modified states, attention needed | Caution |
| **Info Blue** | `#6c9bd9` | `108, 155, 217` | Information states, hints | Informational |

**Guidelines:**
- Reserve semantic colors strictly for their meanings
- Never use red for non-error states
- Teal should indicate completion or addition
- Orange warns but doesn't block

### Border & Divider Colors

| Name | Hex | RGB | Usage | Visual Weight |
|------|-----|-----|-------|---------------|
| **Subtle Border** | `#0f1011` | `15, 16, 17` | Inactive borders, subtle dividers | Minimal |
| **Medium Border** | `#575a5e` | `87, 90, 94` | Standard borders, separators | Medium |
| **Active Border** | `#5a8585` | `90, 133, 133` | Active pane borders, focused inputs | Medium |
| **Focus Border** | `#7db5b5` | `125, 181, 181` | Focus indicators, selection borders | Strong |

---

## UI Component Guidelines

### Buttons & Interactive Elements

#### Primary Button
```
Background: #5a8585 (Slate Teal)
Foreground: #fefefe (Pure White)
Hover: #7db5b5 (Bright Teal)
Active: #3d6666 (Deep Teal)
Disabled: #6a6e73 (Dim Gray)
```

#### Secondary Button
```
Background: #2d3236 (Slate Gray)
Foreground: #f4f7f5 (Seasalt)
Hover: #3d6666 (Deep Teal)
```

#### Link/Text Button
```
Default: #7db5b5 (Bright Teal)
Hover: #5a8585 (Slate Teal)
Underline: On hover only
```

### Tabs & Navigation

#### Active Tab
```
Background: #222823 (Eerie Black)
Text: #f4f7f5 (Seasalt)
Border Top: Optional #5a8585 accent
```

#### Inactive Tab
```
Background: #08090a (Void Black)
Text: #6a6e73 (Dim Gray)
Hover Background: #0f1011 (Shadow Gray)
```

#### Tab Container
```
Background: #08090a (Void Black)
Border: #0f1011 (Shadow Gray)
```

### Input Fields & Forms

#### Text Input
```
Background: #181a1b (Deep Charcoal)
Foreground: #f4f7f5 (Seasalt)
Border: #0f1011 (Default)
Border (Focus): #5a8585 (Slate Teal)
Placeholder: #6a6e73 (Dim Gray)
```

#### Validation States
```
Error Background: #d96c7540 (Soft Red with 40 opacity)
Error Border: #d96c75
Warning Background: #d9a66c40 (Muted Orange with 40 opacity)
Warning Border: #d9a66c
Info Background: #6c9bd940 (Info Blue with 40 opacity)
Info Border: #6c9bd9
```

### Lists & Selections

#### Active Selection
```
Background: #5a8585 (Slate Teal)
Foreground: #fefefe (Pure White)
```

#### Inactive Selection
```
Background: #2a4a4a (Dark Teal)
Foreground: #f4f7f5 (Seasalt)
```

#### Hover State
```
Background: #2a4a4a80 (Dark Teal with 80 opacity)
Foreground: #f4f7f5 (Seasalt)
```

#### Focus State
```
Background: #5a858580 (Slate Teal with 80 opacity)
Foreground: #f4f7f5 (Seasalt)
```

### Panels & Containers

#### Sidebar/Navigation
```
Background: #0f1011 (Shadow Gray)
Foreground: #f4f7f5 (Seasalt)
Border: #0f1011
Section Header Background: #181a1b
```

#### Floating Panels/Modals
```
Background: #181a1b (Deep Charcoal)
Border: #0f1011
Shadow: #08090a80 (Void Black with 80 opacity)
```

#### Status Bar
```
Background: #181a1b (Deep Charcoal)
Foreground: #f4f7f5 (Seasalt)
Border: #0f1011
Debug State: #d96c75 background with #fefefe text
```

### Badges & Indicators

#### Default Badge
```
Background: #5a8585 (Slate Teal)
Foreground: #fefefe (Pure White)
```

#### Activity Badge
```
Background: #7db5b5 (Bright Teal)
Foreground: #08090a (Void Black)
Shape: Circle or rounded rectangle (4px radius)
```

---

## Typography & Text Hierarchy

### Font Weights
- **Regular (400)**: Body text, standard UI elements
- **Bold (700)**: Headings, function names, emphasized elements
- **Italic**: Comments, keywords, quotations

### Hierarchy by Color

| Level | Color | Usage |
|-------|-------|-------|
| **H1 - Emphasis** | `#fefefe` (Pure White) | Function names, selected items, titles |
| **H2 - Primary** | `#f4f7f5` (Seasalt) | Body text, labels, active elements |
| **H3 - Secondary** | `#b8bbbf` (Light Gray) | Secondary labels, metadata |
| **H4 - Tertiary** | `#8b8f94` (Silver Gray) | Tertiary information |
| **H5 - Dim** | `#6a6e73` (Dim Gray) | Comments, hints, inactive elements |
| **H6 - Accent** | `#7db5b5` (Bright Teal) | Links, keywords, interactive highlights |

---

## State Management

### Interaction States Priority

1. **Disabled** → `#6a6e73` (overrides all)
2. **Error** → `#d96c75` (overrides focus/hover)
3. **Focus** → `#5a8585` or `#7db5b5` borders
4. **Hover** → Background opacity changes (+80)
5. **Active** → Background solid color
6. **Default** → Base colors

### Visual Feedback Patterns

#### On Click/Activate
- Background changes from hover to solid color
- Border color intensifies (subtle → active)

#### On Hover
- Background adds 80 opacity variant
- Text color may brighten slightly

#### On Focus
- Border changes to `#5a8585` (keyboard navigation)
- May include subtle glow effect using box-shadow

#### On Disable
- All colors shift to `#6a6e73`
- Opacity reduced to 50%
- Cursor: not-allowed

---

## Application-Specific Adaptations

### Terminal/Console Applications
**ANSI Color Mapping:**
```
Black:   #08090a    Bright Black:   #2d3236
Red:     #d96c75    Bright Red:     #d96c75
Green:   #7db5b5    Bright Green:   #7db5b5
Yellow:  #d9a66c    Bright Yellow:  #d9a66c
Blue:    #6c9bd9    Bright Blue:    #6c9bd9
Magenta: #a7a2a9    Bright Magenta: #a7a2a9
Cyan:    #5a8585    Bright Cyan:    #7db5b5
White:   #f4f7f5    Bright White:   #fefefe
```

**Cursor:**
- Color: `#5a8585`
- Text: `#f4f7f5`

**Selection:**
- Background: `#2a4a4a`
- Foreground: `#f4f7f5`

### Code Editors (VSCode, Neovim, Zed)

#### Syntax Highlighting
```
Comments:     #6a6e73 (italic)
Keywords:     #7db5b5 (italic)
Strings:      #a7a2a9
Numbers:      #3d6666
Booleans:     #7db5b5
Functions:    #fefefe (bold)
Types/Classes: #5a8585
Operators:    #5a8585
Variables:    #f4f7f5
Constants:    #3d6666
```

#### Editor Features
```
Line Highlight:         #181a1b
Selection:              #2a4a4a
Find Match:             #2a4a4a
Current Find Match:     #5a8585
Cursor:                 #5a8585
Line Numbers:           #3f4245
Active Line Number:     #7db5b5 (bold)
Indent Guides:          #3f4245
Active Indent Guide:    #5a8585
```

#### Git Decorations
```
Added:       #7db5b5
Modified:    #d9a66c
Deleted:     #d96c75
Untracked:   #6c9bd9
Ignored:     #6a6e73
Conflicting: #d96c75
```

### File Managers (Yazi, EZA)

#### File Type Colors
```
Directories:  #5a8585
Executables:  #7db5b5
Images:       #a7a2a9
Videos/Audio: #d9a66c
Archives:     #d96c75
Documents:    #f4f7f5
Code Files:   Varies by language
Symlinks:     #6c9bd9
```

#### Permissions Display
```
Read (r):     #d9a66c
Write (w):    #d96c75
Execute (x):  #7db5b5
Special (s):  #6c9bd9
Directory (d): #5a8585
```

### System Monitors (btop)

#### Graph Gradients
Use 3-color gradients for smooth transitions:

**CPU:**
```
Start:  #3d6666
Mid:    #5a8585
End:    #7db5b5
```

**Memory:**
```
Start:  #2a4a4a
Mid:    #5a8585
End:    #7db5b5
```

**Network Download:**
```
Start:  #1f3636
Mid:    #3d6666
End:    #5a8585
```

**Network Upload:**
```
Start:  #5a8585
Mid:    #3d6666
End:    #2a4a4a
```

---

## Accessibility Guidelines

### Minimum Contrast Ratios
- **Normal text**: 4.5:1 (WCAG AA)
- **Large text**: 3:1 (WCAG AA)
- **UI components**: 3:1 (WCAG AA)

### Color Blindness Considerations
- Never rely on color alone for critical information
- Use icons, patterns, or text labels alongside colors
- Test with deuteranopia and protanopia simulators
- The desaturated palette works well for most color vision deficiencies

### Focus Indicators
- Always visible with 3:1 contrast minimum
- Use `#5a8585` or `#7db5b5` borders
- Minimum 2px border width
- Consider adding subtle box-shadow for additional visibility

---

## Implementation Notes

### Opacity Best Practices
When using opacity variants, prefer rgba or hex with alpha:
- Hex with alpha: `#2a4a4a80` (50%)
- RGBA: `rgba(42, 74, 74, 0.5)`

### Smooth Transitions
Apply transitions to interactive elements:
```css
transition: background-color 150ms ease-in-out,
            border-color 150ms ease-in-out,
            color 100ms ease-in-out;
```

### Dark Theme Considerations
- Avoid pure black to reduce eye strain
- Use slightly lighter text on very dark backgrounds
- Add subtle depth with layered backgrounds
- Consider blur effects for floating elements (background-blur)

### Recommended Background Opacity
For applications supporting transparency:
- Editor/Terminal: 95% (`0.95`)
- Unfocused splits: 70% (`0.7`)
- Overlay modals: 90-95% (`0.9-0.95`)

---

## Design Checklist

When implementing the Despair design system:

- [ ] Use `#08090a` as the primary background
- [ ] Use `#f4f7f5` for main text (never pure white for body text)
- [ ] Reserve `#fefefe` for emphasis and important elements
- [ ] Use `#7db5b5` for primary interactive elements
- [ ] Use `#5a8585` for secondary interactive elements
- [ ] Apply semantic colors consistently (teal=success, red=error, orange=warning)
- [ ] Ensure 4.5:1 contrast ratio minimum for text
- [ ] Use opacity variants for hover states (`80` opacity)
- [ ] Add focus indicators with `#5a8585` or `#7db5b5` borders
- [ ] Layer backgrounds progressively (void → shadow → charcoal → eerie → slate)
- [ ] Test with keyboard navigation
- [ ] Verify color meanings are clear without relying on color alone

---

## Version History

**v1.0** - Initial release
- Core color palette defined with 5 background nuances
- 5 teal accent shades for visual hierarchy
- 4 gray shades for text hierarchy
- UI component guidelines established
- Application-specific adaptations documented
- Accessibility guidelines included

---

**License**: MIT
