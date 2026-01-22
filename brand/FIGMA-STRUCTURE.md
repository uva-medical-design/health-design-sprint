# Figma Design System Structure
## Medical Design Program `<mdp>`

This guide provides the complete structure for building the MDP design system in Figma.

---

## Quick Start

1. Install **Tokens Studio** plugin in Figma
2. Import `tokens/figma-tokens.json`
3. Import SVG assets from `assets/` folder
4. Follow the page structure below

---

## File Structure

Create these pages in order:

```
Medical Design Program
├── Cover
├── 1. Foundations
│   ├── Colors
│   ├── Typography
│   └── Spacing & Layout
├── 2. Logo System
│   ├── Primary Marks
│   ├── Usage Guidelines
│   └── Clear Space
├── 3. Components
│   ├── Buttons
│   ├── Cards
│   ├── Code Blocks
│   ├── Navigation
│   └── Characters
├── 4. Patterns
│   ├── Slide Templates
│   ├── Document Templates
│   └── Digital Templates
├── 5. Mood System
│   ├── Neutral (Default)
│   ├── Dark
│   ├── Warm
│   ├── Cool
│   ├── Energy
│   └── Experimental
└── 6. Reference
    ├── Do's and Don'ts
    └── Asset Checklist
```

---

## Page 1: Foundations

### Colors Section

Create color style swatches in this order:

#### Primitive Colors (8 swatches)
| Name | Hex | Figma Style Name |
|------|-----|------------------|
| Black | `#000000` | `color/primitive/black` |
| Near Black | `#1a1a1a` | `color/primitive/near-black` |
| Dark Gray | `#333333` | `color/primitive/dark-gray` |
| Mid Gray | `#666666` | `color/primitive/mid-gray` |
| Light Gray | `#999999` | `color/primitive/light-gray` |
| Pale Gray | `#e0e0e0` | `color/primitive/pale-gray` |
| Off White | `#f5f5f5` | `color/primitive/off-white` |
| White | `#ffffff` | `color/primitive/white` |

#### Semantic Colors - Light Mode
| Name | Value | Figma Style Name |
|------|-------|------------------|
| Background Primary | `#ffffff` | `color/light/bg/primary` |
| Background Secondary | `#f5f5f5` | `color/light/bg/secondary` |
| Background Tertiary | `#e0e0e0` | `color/light/bg/tertiary` |
| Text Primary | `#1a1a1a` | `color/light/text/primary` |
| Text Secondary | `#333333` | `color/light/text/secondary` |
| Text Tertiary | `#666666` | `color/light/text/tertiary` |
| Text Disabled | `#999999` | `color/light/text/disabled` |
| Border Default | `#e0e0e0` | `color/light/border/default` |
| Border Strong | `#666666` | `color/light/border/strong` |

#### Semantic Colors - Dark Mode
| Name | Value | Figma Style Name |
|------|-------|------------------|
| Background Primary | `#1a1a1a` | `color/dark/bg/primary` |
| Background Secondary | `#2a2a2a` | `color/dark/bg/secondary` |
| Background Tertiary | `#333333` | `color/dark/bg/tertiary` |
| Text Primary | `#f5f5f5` | `color/dark/text/primary` |
| Text Secondary | `#cccccc` | `color/dark/text/secondary` |
| Text Tertiary | `#999999` | `color/dark/text/tertiary` |
| Text Disabled | `#666666` | `color/dark/text/disabled` |
| Border Default | `#333333` | `color/dark/border/default` |
| Border Strong | `#666666` | `color/dark/border/strong` |

#### Future Accent Colors (Reference Only)
| Name | Hex | Note |
|------|-----|------|
| Teal | `#00897B` | Medical/clinical |
| Indigo | `#3F51B5` | Technical |
| Coral | `#FF7043` | Warm/approachable |

---

### Typography Section

**Font:** JetBrains Mono (install from Google Fonts)

#### Presentation Styles (16:9 slides)
| Style Name | Size | Weight | Line Height |
|------------|------|--------|-------------|
| `type/presentation/hero` | 96px | Bold | 110% |
| `type/presentation/section-title` | 60px | Bold | 120% |
| `type/presentation/slide-title` | 44px | SemiBold | 120% |
| `type/presentation/body` | 28px | Regular | 150% |
| `type/presentation/caption` | 20px | Regular | 150% |
| `type/presentation/code` | 24px | Regular | 140% |

#### Digital Styles (Web/App)
| Style Name | Size | Weight | Line Height |
|------------|------|--------|-------------|
| `type/digital/h1` | 48px | Bold | 120% |
| `type/digital/h2` | 32px | SemiBold | 120% |
| `type/digital/h3` | 24px | SemiBold | 120% |
| `type/digital/body` | 16px | Regular | 150% |
| `type/digital/small` | 14px | Regular | 150% |
| `type/digital/code` | 14px | Regular | 140% |

---

### Spacing Section

Create spacing tokens as frame dimensions:

| Token | Value | Use |
|-------|-------|-----|
| `spacing/0` | 0px | Reset |
| `spacing/1` | 4px | Tight gaps |
| `spacing/2` | 8px | Icon gaps |
| `spacing/3` | 12px | Compact padding |
| `spacing/4` | 16px | Standard padding |
| `spacing/5` | 20px | Medium gap |
| `spacing/6` | 24px | Section gap |
| `spacing/8` | 32px | Large gap |
| `spacing/10` | 40px | Section padding |
| `spacing/12` | 48px | Large section |
| `spacing/16` | 64px | Hero padding |
| `spacing/20` | 80px | Major section |
| `spacing/24` | 96px | Hero section |

---

## Page 2: Logo System

### Primary Marks

Import these SVGs from `brand/assets/`:

1. **logo-primary-dark.svg** — Dark text for light backgrounds
2. **logo-primary-light.svg** — Light text for dark backgrounds
3. **logo-bold-dark.svg** — Bold weight, dark
4. **logo-bold-light.svg** — Bold weight, light
5. **favicon.svg** — `<>` brackets only
6. **spark-character.svg** — `<•>` character
7. **logo-sprint-mode.svg** — `<<>>` rapid iteration

### Logo Variants Component

Create a component set with these variants:

```
Logo / Weight=Regular, Mode=Light
Logo / Weight=Regular, Mode=Dark
Logo / Weight=Bold, Mode=Light
Logo / Weight=Bold, Mode=Dark
```

### Clear Space Rules

Create a frame showing:
- The logo with clear space equal to the height of `m`
- Visual guides showing minimum margins
- Example: If logo height is 40px, clear space is ~20px on all sides

```
┌─────────────────────────┐
│                         │
│    ┌───────────┐        │
│    │  <mdp>    │        │  ← m-height padding
│    └───────────┘        │
│                         │
└─────────────────────────┘
```

### Minimum Sizes

| Context | Minimum Size |
|---------|--------------|
| Favicon | 16px |
| Footer | 14px |
| Document header | 12pt |
| Social avatar | 400px |

---

## Page 3: Components

### Button Component

Create variants:

```
Button / Size=Large, Style=Primary, State=Default
Button / Size=Large, Style=Primary, State=Hover
Button / Size=Large, Style=Primary, State=Disabled
Button / Size=Large, Style=Secondary, State=Default
Button / Size=Large, Style=Secondary, State=Hover
Button / Size=Large, Style=Secondary, State=Disabled
Button / Size=Medium, Style=Primary, State=Default
... (repeat for all combinations)
```

**Button specs:**
- Font: JetBrains Mono SemiBold
- Large: 16px font, 16px/24px padding
- Medium: 14px font, 12px/16px padding
- Small: 12px font, 8px/12px padding
- Border radius: 8px
- Primary: Near-black bg, white text
- Secondary: White bg, near-black text, 1px border

### Card Component

```
Card / Mode=Light, HasCode=False
Card / Mode=Light, HasCode=True
Card / Mode=Dark, HasCode=False
Card / Mode=Dark, HasCode=True
```

**Card specs:**
- Padding: 24px
- Border radius: 8px
- Border: 1px pale-gray (light) or dark-gray (dark)
- Background: white (light) or near-black (dark)

### Code Block Component

```
CodeBlock / Mode=Light, Size=Default
CodeBlock / Mode=Light, Size=Large
CodeBlock / Mode=Dark, Size=Default
CodeBlock / Mode=Dark, Size=Large
```

**Code block specs:**
- Light mode: off-white bg, near-black text
- Dark mode: near-black bg, off-white text
- Padding: 24px (default), 32px (large)
- Border radius: 8px
- Font: JetBrains Mono Regular, 14px (default), 24px (large)

### Character Components

#### Spark `<•>`
Create as a component for reuse in slides:
- Font: JetBrains Mono Regular
- Size variants: 24px, 36px, 48px
- Color variants: Light mode, Dark mode

#### Kaomoji Set
Create text components (use sparingly):
- `¯\_(ツ)_/¯` — "It happens"
- `ʕ•ᴥ•ʔ` — Friendly curiosity
- `(☞ﾟヮﾟ)☞` — Encouragement

---

## Page 4: Patterns

### Slide Templates (1920x1080)

#### Title Slide
```
┌──────────────────────────────────────┐
│                                      │
│                                      │
│           <mdp>                      │
│     Medical Design Program           │
│                                      │
│           [Subtitle]                 │
│                                      │
│                                      │
└──────────────────────────────────────┘
```
- Logo: Hero size (48-96px)
- Title: type/presentation/section-title
- Centered layout

#### Section Divider
```
┌──────────────────────────────────────┐
│                                      │
│    <                                 │
│    Section Title                     │
│    >                                 │
│                                      │
└──────────────────────────────────────┘
```
- Animated bracket possibility
- Bold section title

#### Content Slide
```
┌──────────────────────────────────────┐
│  Slide Title                         │
│  ─────────────────────────────────   │
│                                      │
│  • Bullet point one                  │
│  • Bullet point two                  │
│  • Bullet point three                │
│                                      │
│                            <mdp>  01 │
└──────────────────────────────────────┘
```
- Title: type/presentation/slide-title
- Body: type/presentation/body
- Footer: small logo + page number

#### Code Slide
```
┌──────────────────────────────────────┐
│  Code Example                        │
│  ─────────────────────────────────   │
│  ┌────────────────────────────────┐  │
│  │ function example() {           │  │
│  │   return "hello";              │  │
│  │ }                              │  │
│  └────────────────────────────────┘  │
│                            <mdp>  01 │
└──────────────────────────────────────┘
```
- Dark code block on light slide
- 24px code font

### Document Templates (Letter 8.5x11)

#### Header
```
<mdp>                    Document Title
─────────────────────────────────────────
```
- Logo: 12pt
- Horizontal rule: 1px pale-gray

#### Footer
```
─────────────────────────────────────────
Medical Design Program              Page X
```

---

## Page 5: Mood System

### Neutral (Default) — ACTIVE FOR V1

| Element | Value |
|---------|-------|
| Energy | Calm, professional |
| Colors | Monochrome only |
| Typography | Standard weights |
| Animation | Static or minimal |
| Density | Balanced whitespace |

### Dark

| Element | Value |
|---------|-------|
| Background | `#1a1a1a` |
| Text | `#f5f5f5` |
| Energy | Focused, immersive |
| Use | Code demos, evening sessions |

### Warm (Future)

| Element | Value |
|---------|-------|
| Background | Warm gray tint |
| Accent | Potential coral |
| Energy | Welcoming |
| Use | Onboarding, celebrations |

### Cool (Future)

| Element | Value |
|---------|-------|
| Background | Cool gray tint |
| Accent | Potential indigo/teal |
| Energy | Clinical, precise |
| Use | Formal presentations |

### Energy (Future)

| Element | Value |
|---------|-------|
| Contrast | High |
| Typography | Bolder weights |
| Energy | Dynamic, activating |
| Use | Sprint days, ideation |

### Experimental (Future)

| Element | Value |
|---------|-------|
| Rules | Variable |
| Requires | Leadership approval |
| Use | Conference showcases |

---

## Page 6: Reference

### Do's and Don'ts

#### DO
- Use JetBrains Mono for all text
- Keep logo lowercase `<mdp>`
- Maintain minimum clear space
- Use monochrome for v1
- Enable ligatures for `<>` combinations

#### DON'T
- Use UVA Navy or Orange
- Add decorative elements to the logo
- Use more than 2-3 kaomoji per course
- Mix moods within a single document
- Reduce logo below minimum sizes

### Asset Checklist

- [ ] JetBrains Mono font installed
- [ ] Color styles created (light + dark)
- [ ] Typography styles created
- [ ] Logo components built
- [ ] Button component set complete
- [ ] Card components complete
- [ ] Code block components complete
- [ ] Slide templates created
- [ ] Document templates created
- [ ] Tokens imported via Tokens Studio

---

## Import Instructions

### Tokens Studio Setup

1. Install **Tokens Studio for Figma** plugin
2. Open plugin panel
3. Click **Import** → **From File**
4. Select `brand/tokens/figma-tokens.json`
5. Click **Create Styles** to generate Figma styles

### SVG Import

1. In Figma, press `Cmd/Ctrl + Shift + K` (Place Image)
2. Navigate to `brand/assets/`
3. Select SVG files
4. Place on Logo System page
5. Convert to components

### Font Setup

1. Download JetBrains Mono from [Google Fonts](https://fonts.google.com/specimen/JetBrains+Mono)
2. Install all weights (Thin through ExtraBold)
3. Restart Figma if needed

---

## Version History

| Version | Date | Notes |
|---------|------|-------|
| v1.0 | Feb 2026 | Monochrome launch |

---

## Related Files

- `tokens/design-tokens.json` — W3C Design Tokens format
- `tokens/figma-tokens.json` — Tokens Studio format
- `assets/` — SVG logo files
- `specs/` — Detailed specifications
