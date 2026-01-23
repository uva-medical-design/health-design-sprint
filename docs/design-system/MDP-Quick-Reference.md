# MDP Design System — Quick Reference

> One-page summary for rapid asset creation. Full spec: `MDP-Design-System-Specification-v2.md`

---

## Brand

**Logo:** `<mdp>` — Always lowercase, JetBrains Mono
**Brackets:** Warm accent (#E07A5F) on light backgrounds, white on dark
**Tagline:** Medical Design Program
**Sub-brand (Tier 1):** `<mdp>` + "Health Design Sprint" below at 50-60% size

```
      <mdp>
HEALTH DESIGN SPRINT
```

---

## Colors

### Core Palette

| Name | Hex | Usage |
|------|-----|-------|
| Near Black | `#1A1A1A` | Primary text, dark backgrounds |
| Gray 500 | `#6B6B6B` | Secondary text |
| Gray 300 | `#9CA3AF` | Tertiary text, placeholders |
| Near White | `#F5F5F5` | Surfaces, cards |
| White | `#FFFFFF` | Backgrounds |

### Accent Colors

| Name | Hex | Usage |
|------|-----|-------|
| **Warm** | `#E07A5F` | Primary accent, empathy, important |
| **Cool** | `#3D5A6C` | Technical, systems, tips |
| **Energy** | `#E8A838` | Action, workshops, activities |
| **Experimental** | `#7B68EE` | AI, innovation, learn more |

### Mood Backgrounds

| Mood | Background | Use Case |
|------|------------|----------|
| Warm | `#FAF7F2` | Empathy, discussions |
| Cool | `#F0F4F8` | Technical content |
| Energy | `#FFFBF5` | Activities, workshops |
| Dark | `#1A1A1A` | Focus, evening sessions |

---

## Typography

**Primary Font:** JetBrains Mono (Google Fonts)

```css
font-family: 'JetBrains Mono', monospace;
```

| Size | Weight | Usage |
|------|--------|-------|
| 48px | Light (300) | Hero titles |
| 32px | Medium (500) | H1, page titles |
| 24px | Medium (500) | H2, sections |
| 16px | Regular (400) | Body text |
| 14px | Regular (400) | Small text, captions |
| 12px | Regular (400) | Micro text |

---

## Callout System

| Type | Icon | Color | Background |
|------|------|-------|------------|
| Activity | `>` | `#E8A838` | `#FFFBF5` |
| Important | `!` | `#E07A5F` | `#FAF7F2` |
| Tip | `*` | `#3D5A6C` | `#F0F4F8` |
| Learn More | `+` | `#7B68EE` | `#F8F7FC` |

**Structure:**
```html
<div class="callout callout-activity">
  <span class="callout-icon">></span>
  <div>
    <span class="callout-type">Activity</span>
    <p>Your instruction here.</p>
  </div>
</div>
```

---

## Symbol Vocabulary

| Symbol | Meaning |
|--------|---------|
| `<` | Diverge (explore, expand) |
| `>` | Converge (focus, decide) |
| `<>` | Transform (complete cycle) |
| `<•>` | Spark (AI companion) |

---

## Layout

- **Slide aspect ratio:** 16:9
- **Max content width:** 1000px
- **Grid:** 12-column
- **Spacing scale:** 4, 8, 12, 16, 24, 32, 48, 64, 96px

---

## Components

### Buttons
```css
.btn-primary {
  background: #1A1A1A;
  color: #FFFFFF;
  padding: 0.5rem 1rem;
  border-radius: 6px;
}
```

### Cards
```css
.card {
  background: #FFFFFF;
  border-radius: 8px;
  padding: 1.5rem;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
  border-top: 3px solid #E07A5F;
}
```

### Bullets (Chevron style)
```css
li::before {
  content: '>';
  color: #E07A5F;
}
```

---

## Quick CSS Variables

```css
:root {
  --color-warm: #E07A5F;
  --color-cool: #3D5A6C;
  --color-energy: #E8A838;
  --color-experimental: #7B68EE;
  --color-near-black: #1A1A1A;
  --bg-warm: #FAF7F2;
  --bg-cool: #F0F4F8;
  --bg-energy: #FFFBF5;
  --font-mono: 'JetBrains Mono', monospace;
}
```

---

## File Naming

- Slides: `slides-day[N]-[session].html`
- Images: `day[N]-hero-[topic].png`
- Templates: `[topic]-template.md`

---

*Last updated: January 2026*
