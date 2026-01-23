# MDP Design System Specification
## Medical Design Program — Complete Brand & Design System
### Version 2.0 — January 2026

---

# Table of Contents

1. [Brand Foundation](#1-brand-foundation)
2. [Logo System](#2-logo-system)
3. [Color System](#3-color-system)
4. [Typography](#4-typography)
5. [Symbol Vocabulary](#5-symbol-vocabulary)
6. [Callout System](#6-callout-system)
7. [Spark Mascot](#7-spark-mascot)
8. [ASCII Human Figures](#8-ascii-human-figures)
9. [Animation System](#9-animation-system)
10. [Media Treatments](#10-media-treatments)
11. [Layout & Grid](#11-layout--grid)
12. [Component Library](#12-component-library)
13. [Content Patterns](#13-content-patterns)
14. [Forms & Inputs](#14-forms--inputs)
15. [Interactive Exercises](#15-interactive-exercises)
16. [Writing & Voice](#16-writing--voice)
17. [Motion & Interaction](#17-motion--interaction)
18. [Print Specifications](#18-print-specifications)
19. [Large Format](#19-large-format)
20. [Physical Items](#20-physical-items)
21. [File Organization](#21-file-organization)
22. [Email Signature](#22-email-signature)
23. [Spacing Scale](#23-spacing-scale)
24. [Mobile & Responsive Design](#24-mobile--responsive-design)
25. [CSS Reference](#25-css-reference)
26. [Sub-Branding Framework](#26-sub-branding-framework)
27. [External Tool Integration](#27-external-tool-integration)
28. [Decision Log](#28-decision-log)

---

# 1. Brand Foundation

## Brand Name
- **Primary:** Medical Design Program
- **Abbreviation:** MDP
- **Logo Form:** `<mdp>`

## Brand Philosophy
The MDP brand uses a "sacred/free" model:
- **Sacred elements** (never change): Logo form, symbol meanings, typography choice, callout vocabulary
- **Free elements** (vary by context): Color moods, illustration styles, energy levels

## Core Concept
The chevron brackets `< >` represent the fundamental rhythm of design thinking:
- `<` = Diverge (open, explore, expand possibilities)
- `>` = Converge (focus, decide, narrow down)
- `<>` = Transform (complete cycle of diverge then converge)

---

# 2. Logo System

## Primary Logo
```
<mdp>
```

## Typography
- **Font:** JetBrains Mono
- **Default Weight:** Light (300) for digital
- **Print Weight:** Regular (400) for better legibility
- **Small Size Weight:** Regular (400) or Medium (500)
- **Case:** Always lowercase `mdp` (never uppercase)

## Weight Usage Guidelines

| Context | Weight | Notes |
|---------|--------|-------|
| Digital (large) | 300 (Light) | Refined, modern feel |
| Digital (small, <16px) | 400 (Regular) | Better legibility |
| Print | 400 (Regular) | Holds up in reproduction |
| Signage | 500 (Medium) | Strong presence |
| Embroidery | 500-600 | Thread requires heavier weight |

## Minimum Sizes
- **Digital:** 12px minimum (use weight 400+ at this size)
- **Print:** 8pt minimum with weight 400
- **Below minimum:** Use icon-only version `<>` or `<•>`

## Logo Versions

### Mark Only
```
<mdp>
```
Use for: Brand recognition contexts, headers

### Horizontal Lockup
```
<mdp>  Medical Design Program
```
- Logo font: JetBrains Mono, same size as program text
- Program text: System font (system-ui, -apple-system, sans-serif), Regular (400)
- Color: Program text in Gray-500 (`#6B6B6B`)
- Spacing: 10-12px gap between logo and text

Use for: Document headers, email signatures, web headers

### Stacked Lockup
```
      <mdp>
MEDICAL DESIGN PROGRAM
```
- Logo: JetBrains Mono, Light (300)
- Program text: JetBrains Mono, Regular (400), ALL CAPS
- Letter-spacing: 0.15em on program text
- Size: Program text at 40-50% of logo size

Use for: Title slides, centered layouts, formal documents

### Course Variant
```
      <mdp>
HEALTH DESIGN SPRINT
```
Use for: Course-specific materials

### Icon Only (Brackets)
```
<>
```
Use for: Favicons, app icons, very small spaces

### Spark Icon
```
<•>
```
Use for: AI-specific contexts, mascot representations

### Dark Badge (Punchy Print Variant)
- Background: Near Black (`#1A1A1A`)
- Text: White
- Brackets: Warm (`#E07A5F`)
- Padding: 4-8px horizontal, 4-6px vertical
- Border-radius: 4px

Use for: Posters, printed exercise sheets, mugs, physical items where high contrast is needed

## Bracket Color Treatments

| Treatment | Brackets | Text | Use Case |
|-----------|----------|------|----------|
| Monochrome | Black | Black | Print default, formal |
| Warm Accent | #E07A5F | Black | Primary digital |
| Cool Accent | #3D5A6C | Black | Technical contexts |
| Energy Accent | #E8A838 | Black | Workshops, action |
| Experimental Accent | #7B68EE | Black | AI, innovation |
| Reversed | #E07A5F | White | Dark backgrounds |
| Reversed Mono | White | White | Dark backgrounds, B&W |
| Dark Badge | #E07A5F | White on #1A1A1A bg | Punchy print applications |

## Required Logo Files

| File Name | Description | Weight |
|-----------|-------------|--------|
| `mdp-logo-light.svg` | Black text, transparent bg | 300 |
| `mdp-logo-dark.svg` | White text, transparent bg | 400 |
| `mdp-logo-print.svg` | Optimized for print | 400 |
| `mdp-logo-badge.svg` | Dark badge variant | 400 |
| `mdp-icon-brackets.svg` | Just `<>` | 400 |
| `mdp-icon-spark.svg` | `<•>` for AI contexts | 400 |
| `mdp-favicon.ico` | Multi-size favicon | — |

## Logo Don'ts
- Never use uppercase `<MDP>`
- Never stretch or distort
- Never add effects (shadows, gradients on the logo itself)
- Never change the font
- Never rearrange the elements

---

# 3. Color System

## Mood-Based Color System

The MDP color system uses 6 contextual "moods" that transform the entire palette based on content type.

### Neutral Mood (Default)
- **Use for:** Documentation, reference materials, default state
- **Background:** #FFFFFF
- **Surface:** #F5F5F5
- **Text Primary:** #1A1A1A
- **Text Secondary:** #6B6B6B
- **Accent:** #1A1A1A (or warm #E07A5F)

### Dark Mood
- **Use for:** Evening sessions, focus work, immersive content
- **Background:** #1A1A1A
- **Surface:** #2D2D2D
- **Text Primary:** #F5F5F5
- **Text Secondary:** #9CA3AF
- **Accent:** #E07A5F (warm) or #E8A838 (energy)

### Warm Mood
- **Use for:** Empathy, user research, patient-facing, discussions
- **Background:** #FAF7F2
- **Surface:** #FFFFFF
- **Text Primary:** #1A1A1A
- **Text Secondary:** #6B6B6B
- **Accent:** #E07A5F

### Cool Mood
- **Use for:** Systems thinking, operations, technical content
- **Background:** #F0F4F8
- **Surface:** #FFFFFF
- **Text Primary:** #1A1A1A
- **Text Secondary:** #6B6B6B
- **Accent:** #3D5A6C

### Energy Mood
- **Use for:** Workshops, sprints, calls to action, task assignments, activities
- **Background:** #FFFBF5
- **Surface:** #FFFFFF
- **Text Primary:** #1A1A1A
- **Text Secondary:** #6B6B6B
- **Accent:** #E8A838

### Experimental Mood
- **Use for:** AI features, future concepts, innovation, prototyping, learn more
- **Background:** #F8F7FC
- **Surface:** #FFFFFF
- **Text Primary:** #1A1A1A
- **Text Secondary:** #6B6B6B
- **Accent:** #7B68EE

## Core Grayscale Palette

| Token | Hex | Usage |
|-------|-----|-------|
| Near Black | #1A1A1A | Primary text, dark backgrounds |
| Gray 700 | #4A4A4A | Heavy secondary text |
| Gray 500 | #6B6B6B | Secondary text, labels |
| Gray 300 | #9CA3AF | Tertiary text, placeholders |
| Gray 200 | #D1D5DB | Borders, dividers |
| Gray 100 | #E5E7EB | Light borders, subtle backgrounds |
| Near White | #F5F5F5 | Surfaces, cards |
| White | #FFFFFF | Backgrounds |

## Accent Colors

| Name | Hex | Usage |
|------|-----|-------|
| Warm | #E07A5F | Primary accent, empathy, user focus, important |
| Cool | #3D5A6C | Systems, technical, operations, tips |
| Energy | #E8A838 | Action, workshops, urgency, activities |
| Experimental | #7B68EE | AI, innovation, future, learn more |

---

# 4. Typography

## Primary Typeface
**JetBrains Mono** — A monospace font designed for developers, chosen for:
- Excellent legibility at all sizes
- Distinctive bracket characters (important for logo)
- Code-friendly appearance matching the prototyping theme
- Available as a Google Font

## Fallback Stack
```css
font-family: 'JetBrains Mono', 'IBM Plex Mono', 'Fira Code', monospace;
```

**Note:** If using Fira Code, disable ligatures:
```css
font-variant-ligatures: none;
```

## Type Scale

| Token | Size | Weight | Line Height | Usage |
|-------|------|--------|-------------|-------|
| Hero | 48px | 300 (Light) | 1.2 | Landing pages, major headings |
| Display | 36px | 300 (Light) | 1.2 | Section titles |
| H1 | 32px | 500 (Medium) | 1.3 | Page titles |
| H2 | 24px | 500 (Medium) | 1.4 | Section headings |
| H3 | 20px | 500 (Medium) | 1.4 | Subsection headings |
| Body | 16px | 400 (Regular) | 1.6 | Main content |
| Body Small | 14px | 400 (Regular) | 1.5 | Secondary content |
| Caption | 14px | 400 (Regular) | 1.4 | Labels, metadata (use secondary color) |
| Code | 14px | 400 (Regular) | 1.5 | Code blocks, technical content |
| Micro | 12px | 400 (Regular) | 1.4 | Fine print, timestamps |

---

# 5. Symbol Vocabulary

The MDP symbol vocabulary uses ASCII characters with specific meanings:

| Symbol | Name | Meaning | Usage |
|--------|------|---------|-------|
| `<` | Open/Diverge | Explore, expand, open possibilities | Beginning of exploration phase |
| `>` | Close/Converge | Focus, decide, narrow down | Decision points, conclusions, activities |
| `<>` | Transform | Complete design cycle | Process completion, iteration |
| `<<>>` | Amplify | Scale impact, expand reach | Growth, scaling concepts |
| `^` | Expand/Emerge | Growth, emergence, elevation | New ideas, insights |
| `_` | Foundation | Base, essentials, ground | Core concepts, fundamentals |

## Usage Examples
- Section headers: `< Discovery Phase >`
- Transitions: `Problem <> Solution`
- Growth moments: `Insight ^`
- Foundation content: `_ Core Principles _`

---

# 6. Callout System

## Callout Types

The callout system uses brand-aligned symbols in the accent color for each type. All callouts use:
- Full background tint
- Left border accent (3px)
- Icon in accent color
- Type label in accent color (uppercase, small)

| Type | Icon | Color | Background | Use Case |
|------|------|-------|------------|----------|
| **Activity** | `>` | Energy #E8A838 | #FFFBF5 | "Go, do this now" — exercises, tasks |
| **Important** | `!` | Warm #E07A5F | #FAF7F2 | Key information, don't miss this |
| **Learn More** | `+` | Experimental #7B68EE | #F8F7FC | Optional deep dives, resources, links |
| **Tip** | `*` | Cool #3D5A6C | #F0F4F8 | Pro tips, shortcuts, best practices |
| **Mindset** | `~` | Warm #E07A5F | #FAF7F2 | Reflection moments, design thinking principles |
| **Warning** | `/` | Gray #6B6B6B | #F5F5F5 | Cautions, common mistakes to avoid |

## Callout Structure

```html
<div class="callout callout-activity">
  <span class="callout-icon">></span>
  <div class="callout-content">
    <span class="callout-type">Activity</span>
    <p class="callout-text">Interview a partner using your question guide.</p>
  </div>
</div>
```

## CSS Implementation

```css
.callout {
  display: flex;
  gap: 0.75rem;
  padding: 1rem;
  border-radius: 8px;
  border-left: 3px solid;
}

.callout-icon {
  font-family: 'JetBrains Mono', monospace;
  font-size: 1rem;
  font-weight: 500;
  width: 24px;
  height: 24px;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
}

.callout-type {
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.65rem;
  font-weight: 500;
  text-transform: uppercase;
  letter-spacing: 0.05em;
  display: block;
  margin-bottom: 0.25rem;
}

.callout-text {
  font-size: 0.875rem;
  color: #4A4A4A;
}

/* Activity */
.callout-activity {
  background: #FFFBF5;
  border-left-color: #E8A838;
}
.callout-activity .callout-icon,
.callout-activity .callout-type { color: #E8A838; }

/* Important */
.callout-important {
  background: #FAF7F2;
  border-left-color: #E07A5F;
}
.callout-important .callout-icon,
.callout-important .callout-type { color: #E07A5F; }

/* Learn More */
.callout-learn-more {
  background: #F8F7FC;
  border-left-color: #7B68EE;
}
.callout-learn-more .callout-icon,
.callout-learn-more .callout-type { color: #7B68EE; }

/* Tip */
.callout-tip {
  background: #F0F4F8;
  border-left-color: #3D5A6C;
}
.callout-tip .callout-icon,
.callout-tip .callout-type { color: #3D5A6C; }

/* Mindset */
.callout-mindset {
  background: #FAF7F2;
  border-left-color: #E07A5F;
}
.callout-mindset .callout-icon,
.callout-mindset .callout-type { color: #E07A5F; }

/* Warning */
.callout-warning {
  background: #F5F5F5;
  border-left-color: #6B6B6B;
}
.callout-warning .callout-icon,
.callout-warning .callout-type { color: #6B6B6B; }
```

## Accessibility Notes
- Always include text label with icon
- Use `aria-hidden="true"` on icon span so screen readers skip it
- Ensure sufficient color contrast (all combinations meet WCAG AA)

---

# 7. Spark Mascot

Spark is the AI companion character, represented as a dot within brackets.

## Spark States

| State | Symbol | Meaning | Usage |
|-------|--------|---------|-------|
| Neutral/Listening | `<•>` | Ready, attentive | Default state |
| Thinking | `<°>` | Processing, considering | Loading, generating |
| Active | `<*>` | Working, creating | Active generation |
| Alert | `<!>` | Important, attention needed | Warnings, key info |
| Curious | `<?>` | Questioning, exploring | Prompts, questions |
| Complete | `<✓>` | Success, done | Task completion |

## Animation
Spark can animate between states to show AI processing or transitions.

---

# 8. ASCII Human Figures

Simple ASCII human figures add warmth and represent the human-centered design focus.

## Figure Library

| Figure | Name | Usage |
|--------|------|-------|
| `o /\|\ / \` | Standing | Default, ready state |
| `o /\|~ / \` | Waving | Welcome, greeting |
| ` o \\|/ / \` | Thinking | Reflection, mindset moments |
| `\o/ \| / \` | Celebrating | Success, milestones |
| ` o/ /\| / \` | Pointing | Direction, tasks |
| `o   o \|\ /\|` | Collaborating | Teamwork |
| ` o /\|\ _\|_` | Seated | Learning, listening |
| `  o /\|--□` | Presenting | Demo, teaching |
| `o? \| /\` | Questioning | Inquiry |
| `o! \| /\` | Insight | Aha moment |

## Usage Contexts
- **Mindset callouts:** Thinking figure + principle quote (warm mood background)
- **Activity blocks:** Pointing figure + task list (energy mood accent)
- **Content cards:** Figures paired with K/S/M objectives
- **Spark + Human combo:** `<•>` + figure = "human-centered AI"

---

# 9. Animation System

## Breathing Animation

### Primary Shape: Organic Blobs
- Soft, living, natural feel
- Shapes morph gently with subtle rotation
- 6-second cycle, staggered layers
- Uses border-radius morphing

### Secondary Shape: Hand-Drawn Rings
- Sketchy, imperfect, human feel
- Wobbles slightly
- Border-only with irregular border-radius
- 5-second cycle

## Background Patterns

### Primary: Off-Center Glow
- **Use for:** Default content pages, learning materials
- Asymmetric placement (70% from left, 60% from top)
- Morphing organic blob
- 6-second cycle
- 8% opacity

### Secondary: Corner Peek
- **Use for:** Lighter presence, secondary content
- Organic blob anchored bottom-right
- 6-second animation
- 12% opacity

### Transitions: Top Gradient Wash
- **Use for:** Section breaks, transitions between content
- Soft glow from top fading down
- Radial gradient overlay
- 8-second float animation
- 10% opacity

## When to Use Breathing Animation
1. Hero/landing sections — Visual anchor
2. Loading states — Calm, purposeful waiting
3. Mindset moments — Encourages pause/contemplation
4. Background texture — Subtle corner presence
5. Session transitions — "Take a breath, prepare for next"
6. Empty states — Fills void warmly

## CSS Implementation
```css
@keyframes blob-morph {
  0%, 100% {
    border-radius: 60% 40% 55% 45% / 55% 60% 40% 45%;
    transform: rotate(0deg) scale(1);
  }
  50% {
    border-radius: 45% 55% 40% 60% / 60% 45% 55% 40%;
    transform: rotate(5deg) scale(1.02);
  }
}

.breathing-blob {
  animation: blob-morph 6s ease-in-out infinite;
  opacity: 0.08;
}
```

---

# 10. Media Treatments

## Screenshot Treatments

### Default Treatment
```css
.media-screenshot {
  border-radius: 8px;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
  overflow: hidden;
}
```
**Use for:** Most screenshots (Claude, Replit, apps)

### Featured Treatment (Warm Tint Frame)
```css
.media-screenshot--featured {
  padding: 12px;
  background: #FAF7F2;
  border-radius: 12px;
}

.media-screenshot--featured img {
  border-radius: 8px;
  box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
}
```
**Use for:** Hero content, key examples, featured screenshots

## Partner Logo Treatments

### Logo Walls/Grids: Grayscale with Hover
```css
.media-logo {
  filter: grayscale(100%);
  opacity: 0.6;
  transition: all 0.25s ease;
}

.media-logo:hover {
  filter: grayscale(0%);
  opacity: 1;
}
```

### Tool Lists: Contained Boxes with Hover Lift
```css
.media-logo-box {
  padding: 16px 24px;
  background: #f5f5f5;
  border-radius: 8px;
  transition: all 0.15s ease;
}

.media-logo-box:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
  background: #ffffff;
}
```

## Photo Treatments

| Type | Treatment |
|------|-----------|
| General photos | `border-radius: 8px; box-shadow: 0 4px 20px rgba(0,0,0,0.08);` |
| Headshots | `border-radius: 50%;` + same shadow |
| Diagrams | Shadow + `border: 1px solid #e5e7eb;` |
| Featured | Warm tint frame wrapper |

---

# 11. Layout & Grid

## Slide Aspect Ratio
**16:9 (Widescreen)** — Modern, works on most displays

## Max Content Width
**1000px** — Balanced readability and content space

## Grid System
**12-Column Grid** — Maximum flexibility

### Standard Layout Patterns

| Layout | Columns | Use Case |
|--------|---------|----------|
| Full width | 12 | Hero sections, full-bleed images |
| Content | 8 (centered) | Reading content, articles |
| Text + Image | 5 + 7 | Standard content with visual |
| Two column | 6 + 6 | Comparisons, dual content |
| Three column | 4 + 4 + 4 | Card grids, tool lists |
| Sidebar | 3 + 9 | Navigation + content |

### Grid CSS
```css
.grid {
  display: grid;
  grid-template-columns: repeat(12, 1fr);
  gap: 24px;
  max-width: 1000px;
  margin: 0 auto;
  padding: 0 24px;
}

.col-span-12 { grid-column: span 12; }
.col-span-8 { grid-column: span 8; }
.col-span-7 { grid-column: span 7; }
.col-span-6 { grid-column: span 6; }
.col-span-5 { grid-column: span 5; }
.col-span-4 { grid-column: span 4; }
.col-span-3 { grid-column: span 3; }
```

---

# 12. Component Library

## Buttons

### Primary Button
```css
.btn-primary {
  background: #1A1A1A;
  color: #FFFFFF;
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.875rem;
  padding: 0.5rem 1rem;
  border: none;
  border-radius: 6px;
  cursor: pointer;
  transition: all 0.15s ease;
}

.btn-primary:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
}
```

### Secondary Button
```css
.btn-secondary {
  background: transparent;
  color: #1A1A1A;
  border: 2px solid #1A1A1A;
  /* ...same padding, font, radius */
}
```

### Button Text: Title Case
Example: "Start Exercise", "Submit Response"

## Cards

### Standard Card
```css
.card {
  background: #FFFFFF;
  border-radius: 8px;
  padding: 1.5rem;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
  border-top: 3px solid #E07A5F;
}
```

## Bullets

### Chevron Style (Default)
```css
.bullet-list {
  list-style: none;
  padding-left: 0;
}

.bullet-list li {
  position: relative;
  padding-left: 1.5rem;
  margin-bottom: 0.5rem;
}

.bullet-list li::before {
  content: '>';
  font-family: 'JetBrains Mono', monospace;
  color: #E07A5F;
  position: absolute;
  left: 0;
}
```

## Progress Indicators

### Numbered Stepper
```css
.progress-stepper {
  display: flex;
  gap: 0.5rem;
  align-items: center;
}

.progress-step {
  width: 28px;
  height: 28px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.75rem;
  font-weight: 500;
}

.progress-step--pending {
  background: #E5E7EB;
  color: #6B6B6B;
}

.progress-step--active {
  background: #E07A5F;
  color: #FFFFFF;
}

.progress-step--complete {
  background: #1A1A1A;
  color: #FFFFFF;
}
```

---

# 13. Content Patterns

## Knowledge / Skill / Mindset Tags

### Color-Coded Pills
```css
.ksm-tag {
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.65rem;
  font-weight: 500;
  padding: 0.25rem 0.5rem;
  border-radius: 100px;
  text-transform: uppercase;
  letter-spacing: 0.05em;
}

.ksm-knowledge {
  background: #DBEAFE;
  color: #1E40AF;
}

.ksm-skill {
  background: #DCFCE7;
  color: #166534;
}

.ksm-mindset {
  background: #FEF3C7;
  color: #92400E;
}
```

## Phase Indicators

### Bold Banner
```css
.phase-banner {
  background: #E07A5F;
  color: #FFFFFF;
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.75rem;
  font-weight: 500;
  padding: 0.5rem 1rem;
  border-radius: 4px;
  text-transform: uppercase;
  letter-spacing: 0.05em;
}
```

Example: `PHASE 3: DEFINE`

## Time Estimates

### Icon + Text
```html
<span class="time-estimate">
  <span class="time-icon">⏱</span>
  <span class="time-text">15 min</span>
</span>
```

```css
.time-estimate {
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.75rem;
  color: #6B6B6B;
  display: inline-flex;
  align-items: center;
  gap: 0.25rem;
}
```

---

# 14. Forms & Inputs

## Input Style: Filled Background

```css
.form-input {
  width: 100%;
  padding: 0.75rem 1rem;
  background: #F5F5F5;
  border: none;
  border-radius: 8px;
  font-family: inherit;
  font-size: 0.875rem;
  transition: all 0.15s ease;
}

.form-input:focus {
  outline: none;
  background: #FFFFFF;
  box-shadow: 0 0 0 2px #E07A5F;
}

.form-input::placeholder {
  color: #9CA3AF;
}
```

## Label Position: Above Input

```css
.form-field {
  display: flex;
  flex-direction: column;
  gap: 0.5rem;
}

.form-label {
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.75rem;
  font-weight: 500;
  color: #1A1A1A;
}
```

## Required Field Indicator

```css
.form-label .required {
  color: #9CA3AF;
  font-weight: 400;
}
```

Usage: `<label class="form-label">Your Name <span class="required">(required)</span></label>`

## Rating Scales: Numbered Boxes

```css
.scale-options {
  display: flex;
  gap: 0.5rem;
}

.scale-option {
  width: 36px;
  height: 36px;
  border: 2px solid #E5E7EB;
  border-radius: 6px;
  display: flex;
  align-items: center;
  justify-content: center;
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.875rem;
  cursor: pointer;
  transition: all 0.15s ease;
}

.scale-option:hover,
.scale-option.selected {
  border-color: #E07A5F;
  background: #FAF7F2;
}
```

---

# 15. Interactive Exercises

## Exercise Container: Energy Mood

```css
.exercise {
  background: #FFFBF5;
  border-left: 4px solid #E8A838;
  border-radius: 8px;
  padding: 1.25rem;
}

.exercise-header {
  display: flex;
  align-items: center;
  gap: 0.75rem;
  margin-bottom: 0.75rem;
}

.exercise-icon {
  font-family: 'JetBrains Mono', monospace;
  font-size: 1rem;
  color: #E8A838;
}

.exercise-title {
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.875rem;
  font-weight: 500;
  color: #1A1A1A;
}

.exercise-time {
  margin-left: auto;
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.7rem;
  color: #6B6B6B;
}
```

## Step-by-Step Instructions: Numbered Circles

```css
.steps {
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

.step {
  display: flex;
  align-items: flex-start;
  gap: 0.75rem;
}

.step-number {
  width: 24px;
  height: 24px;
  background: #1A1A1A;
  color: #FFFFFF;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.7rem;
  font-weight: 500;
  flex-shrink: 0;
}

.step-content {
  font-size: 0.875rem;
  color: #4A4A4A;
}
```

## Workspace Areas: Dashed Border

```css
.workspace {
  min-height: 120px;
  border: 2px dashed #D1D5DB;
  border-radius: 8px;
  padding: 1rem;
  display: flex;
  align-items: center;
  justify-content: center;
}

.workspace-placeholder {
  color: #9CA3AF;
  font-size: 0.875rem;
}

.workspace:focus-within {
  border-color: #E07A5F;
  border-style: solid;
}
```

## Completion: Checkbox + Auto-Save

```css
.completion {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  margin-top: 1rem;
}

.completion-checkbox {
  width: 20px;
  height: 20px;
  border: 2px solid #D1D5DB;
  border-radius: 4px;
  cursor: pointer;
}

.completion-checkbox:checked {
  background: #1A1A1A;
  border-color: #1A1A1A;
}

.completion-label {
  font-size: 0.8rem;
  color: #6B6B6B;
}

/* Auto-save indicator for complex exercises */
.autosave-indicator {
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.65rem;
  color: #9CA3AF;
  margin-left: auto;
}
```

---

# 16. Writing & Voice

## Heading Capitalization
**Title Case** — Capitalize Major Words

Examples:
- "Design Your First Prototype"
- "Conducting User Interviews"
- "How Might We Statements"

## Primary Voice
**First Person Plural ("We")** — Collaborative, inclusive

Examples:
- "We'll build a prototype that tests our key insight."
- "Let's explore what our users really need."
- "Together, we'll iterate based on feedback."

## Tone
**Casual/Energetic** — Startup-like, enthusiastic

Characteristics:
- Contractions encouraged (we'll, you're, let's)
- Exclamation points used sparingly but allowed
- Direct and action-oriented
- Supportive without being patronizing

Examples:
- ✅ "Let's dive in and see what happens!"
- ✅ "Time to put our ideas to the test."
- ❌ "Students shall proceed to the next phase."
- ❌ "It is recommended that participants..."

## Button Text
**Title Case**

Examples: "Start Exercise", "Submit Response", "Continue to Phase 2"

---

# 17. Motion & Interaction

## Transition Speed
**Snappy (150ms)** — Quick, responsive

```css
:root {
  --transition-fast: 150ms ease;
}
```

## Slide Transitions
**Instant (None)** — Like a PDF, no frills

Slides change immediately without animation. Clean, professional, no distraction.

## Hover Effects
**Lift + Shadow**

```css
.interactive:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}
```

---

# 18. Print Specifications

## Paper Size
**US Letter (8.5" × 11")**

## Primary Print Method
**Digital / On-Demand**
- Color mode: RGB (for PDF sharing, desktop printing)
- No bleed required for standard documents

### For Professional Printing (When Needed)
- Color mode: CMYK
- Bleed: 0.125" on all sides
- Plan professional printing for:
  - Large quantity handouts
  - Certificates
  - Marketing materials
  - Conference posters

## Header/Footer
**Full Header + Footer**

### Header Content
- Left: `<mdp>` logo (small)
- Right: Document/section title

### Footer Content
- Left: Day/phase indicator (e.g., "Day 1: Discovery")
- Right: Page number with total (e.g., "3 / 12")

```css
.print-header {
  display: flex;
  justify-content: space-between;
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.65rem;
  color: #9CA3AF;
  padding-bottom: 0.5rem;
  border-bottom: 1px solid #E5E7EB;
}

.print-footer {
  display: flex;
  justify-content: space-between;
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.65rem;
  color: #9CA3AF;
  padding-top: 0.5rem;
  border-top: 1px solid #E5E7EB;
}
```

---

# 19. Large Format

## Default Orientation
**Portrait (Vertical)** — Better for walls, lists

## Supported Size
**24" × 36"** — Standard poster size, conference-ready

## Journey Maps / Workflows
**Tiled / Multi-Page** — Print on regular paper, assemble

- Generates letter-size pages with crop marks
- Includes overlap guides for alignment
- Can be assembled into larger displays

---

# 20. Physical Items

## Stickers

### Shape: Circle
### Size: 2" diameter
### Design:
- Background: Near Black (#1A1A1A)
- Logo: White with Warm brackets (#E07A5F)
- Weight: 400

## T-Shirts

### Placement: Small Chest Logo
- Position: Left chest, 3" from collar
- Size: ~3" wide
- Color: Match shirt contrast (white logo on dark shirts, black on light)

## Name Badges

### Orientation: Vertical (Portrait)
### Dimensions: 3" × 4"
### Layout:
- Top: `<mdp>` logo (dark badge variant)
- Middle: Participant name (large)
- Bottom: Role/affiliation (small)

## Mugs

### Design: Dark Badge Variant
- Full wrap or single-side placement
- Use punchy dark badge treatment
- White interior preferred

---

# 21. File Organization

## Output Format
**Self-Contained HTML** — Opens in any browser, portable

- All CSS inline or in `<style>` tags
- Images embedded as base64 or linked to GitHub Pages
- Single file per slide deck or document
- Works offline

## Folder Structure
**By Day/Session**

```
/course-materials
  /day-01-discovery
    slides.html
    handout.pdf
    exercises/
  /day-02-research
    slides.html
    handout.pdf
    exercises/
  /day-03-define
    ...
  /resources
    (shared materials)
  /templates
    (reusable components)
```

## Naming Convention
**Numbered (01-...)**

Pattern: `[number]-[descriptor]-[type].[ext]`

Examples:
- `01-intro-slides.html`
- `01-welcome-handout.pdf`
- `02-interview-exercise.html`
- `03-journey-map-template.html`

## Image Export
**Both SVG and PNG**

- SVG for vectors (logos, icons, diagrams)
- PNG @2x for rasters (screenshots, photos)
- Keep both formats available

---

# 22. Email Signature

## Layout: Horizontal with Warm Tint Pill

```html
<div style="font-family: system-ui, -apple-system, sans-serif; font-size: 14px; line-height: 1.5;">
  <div style="margin-bottom: 6px;">
    <span style="font-family: 'JetBrains Mono', monospace; font-size: 14px; background: #FDF9F7; padding: 4px 10px; border-radius: 4px;">
      <span style="color: #E07A5F;">&lt;</span>mdp<span style="color: #E07A5F;">&gt;</span>
    </span>
    <span style="color: #6B6B6B; margin-left: 10px;">Medical Design Program</span>
  </div>
  <div style="font-weight: 500;">Matthew Trowbridge, MD, MPH</div>
  <div style="color: #6B6B6B; font-size: 13px;">Director, UVA Medical Design Program</div>
</div>
```

### Specifications
- Logo size: Same as text height (14px)
- Logo background: Warm tint (#FDF9F7)
- Logo padding: 4px vertical, 10px horizontal
- Logo border-radius: 4px
- Program text: Gray-500 (#6B6B6B)
- Name: Medium weight (500)
- Title: Gray-500, slightly smaller

### Fallback
If email client doesn't support background colors, logo displays without tint — still fully legible.

---

# 23. Spacing Scale

Base unit: 4px

| Token | Value | Usage |
|-------|-------|-------|
| space-1 | 4px | Tight spacing, icon gaps |
| space-2 | 8px | Related elements |
| space-3 | 12px | Default padding |
| space-4 | 16px | Standard gaps |
| space-6 | 24px | Section padding, grid gaps |
| space-8 | 32px | Large gaps |
| space-12 | 48px | Section margins |
| space-16 | 64px | Major sections |
| space-24 | 96px | Hero spacing |

---

# 24. Mobile & Responsive Design

## Breakpoints

| Token | Width | Target Devices |
|-------|-------|----------------|
| `--breakpoint-sm` | 640px | Large phones (landscape), small tablets |
| `--breakpoint-md` | 768px | Tablets (portrait) |
| `--breakpoint-lg` | 1024px | Tablets (landscape), small laptops |
| `--breakpoint-xl` | 1280px | Laptops, desktops |
| `--breakpoint-2xl` | 1536px | Large displays |

```css
/* Breakpoint CSS Variables */
:root {
  --breakpoint-sm: 640px;
  --breakpoint-md: 768px;
  --breakpoint-lg: 1024px;
  --breakpoint-xl: 1280px;
  --breakpoint-2xl: 1536px;
}

/* Usage */
@media (max-width: 768px) { /* Tablet and below */ }
@media (max-width: 640px) { /* Phone */ }
```

## Mobile Typography Scale

Headings scale down on smaller screens while body text remains readable.

| Token | Desktop | Tablet (≤768px) | Phone (≤640px) |
|-------|---------|-----------------|----------------|
| Hero | 48px | 40px | 32px |
| Display | 36px | 32px | 28px |
| H1 | 32px | 28px | 24px |
| H2 | 24px | 22px | 20px |
| H3 | 20px | 18px | 18px |
| Body | 16px | 16px | 16px |
| Body Small | 14px | 14px | 14px |
| Caption | 14px | 14px | 13px |
| Micro | 12px | 12px | 12px |

```css
/* Mobile Typography */
@media (max-width: 768px) {
  :root {
    --font-size-hero: 40px;
    --font-size-display: 32px;
    --font-size-h1: 28px;
    --font-size-h2: 22px;
    --font-size-h3: 18px;
  }
}

@media (max-width: 640px) {
  :root {
    --font-size-hero: 32px;
    --font-size-display: 28px;
    --font-size-h1: 24px;
    --font-size-h2: 20px;
    --font-size-h3: 18px;
  }
}
```

## Touch Targets

All interactive elements must meet minimum touch target sizes for accessibility and usability.

| Element | Minimum Size | Recommended |
|---------|--------------|-------------|
| Buttons | 44×44px | 48×48px |
| Links (inline) | 44px height | — |
| Form inputs | 44px height | 48px height |
| Checkboxes/Radio | 44×44px tap area | 24px visible + padding |
| Icon buttons | 44×44px | 48×48px |
| List items (tappable) | 44px height | 56px height |

```css
/* Touch Target Base */
.touch-target {
  min-width: 44px;
  min-height: 44px;
  display: inline-flex;
  align-items: center;
  justify-content: center;
}

/* Button Mobile Override */
@media (max-width: 768px) {
  .btn-primary,
  .btn-secondary {
    min-height: 48px;
    padding: 0.75rem 1.25rem;
  }
}

/* Checkbox/Radio Touch Area */
.form-checkbox,
.form-radio {
  position: relative;
}

.form-checkbox::before,
.form-radio::before {
  content: '';
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 44px;
  height: 44px;
}
```

## Grid Responsive Behavior

The 12-column grid collapses progressively on smaller screens.

| Screen | Behavior | Common Patterns |
|--------|----------|-----------------|
| Desktop (≥1024px) | Full 12-column | All layouts available |
| Tablet (768-1023px) | 12-column, tighter gap | 6+6, 4+4+4 still work |
| Phone (≤767px) | Stack to single column | Most content full-width |

### Column Collapse Rules

| Desktop Layout | Tablet | Phone |
|----------------|--------|-------|
| 12 (full) | 12 | 12 |
| 8 (content) | 12 | 12 |
| 7 + 5 (text + image) | 12 + 12 (stacked) | 12 + 12 |
| 6 + 6 (two column) | 6 + 6 | 12 + 12 |
| 4 + 4 + 4 (three column) | 6 + 6 + 12 | 12 + 12 + 12 |
| 3 + 9 (sidebar) | 12 + 12 (nav moves top) | 12 + 12 |

```css
/* Responsive Grid */
.grid {
  display: grid;
  grid-template-columns: repeat(12, 1fr);
  gap: var(--space-6);
}

@media (max-width: 768px) {
  .grid {
    gap: var(--space-4);
  }
  
  .col-span-7,
  .col-span-5,
  .col-span-8,
  .col-span-9,
  .col-span-3 {
    grid-column: span 12;
  }
}

@media (max-width: 640px) {
  .grid {
    grid-template-columns: 1fr;
    gap: var(--space-4);
  }
  
  [class*="col-span-"] {
    grid-column: span 1;
  }
}
```

## Mobile Spacing Adjustments

Spacing tokens compress slightly on mobile to maximize content area.

| Token | Desktop | Tablet | Phone |
|-------|---------|--------|-------|
| space-6 | 24px | 20px | 16px |
| space-8 | 32px | 28px | 24px |
| space-12 | 48px | 40px | 32px |
| space-16 | 64px | 56px | 48px |
| space-24 | 96px | 80px | 64px |

```css
@media (max-width: 768px) {
  :root {
    --space-6: 20px;
    --space-8: 28px;
    --space-12: 40px;
    --space-16: 56px;
    --space-24: 80px;
  }
}

@media (max-width: 640px) {
  :root {
    --space-6: 16px;
    --space-8: 24px;
    --space-12: 32px;
    --space-16: 48px;
    --space-24: 64px;
  }
}
```

## Component Mobile Adaptations

### Callouts
- Full width on mobile (no side margins)
- Icon and content stack if very narrow
- Padding reduces to 0.75rem

```css
@media (max-width: 640px) {
  .callout {
    padding: 0.75rem;
    margin-left: -1rem;
    margin-right: -1rem;
    border-radius: 0;
    border-left-width: 4px;
  }
}
```

### Cards
- Full width, reduced padding
- Shadow reduces to conserve visual weight

```css
@media (max-width: 640px) {
  .card {
    padding: 1rem;
    border-radius: 0;
    margin-left: -1rem;
    margin-right: -1rem;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
  }
}
```

### Buttons
- Full width option for primary actions
- Increased padding for touch

```css
@media (max-width: 640px) {
  .btn-full-mobile {
    width: 100%;
    justify-content: center;
  }
}
```

### Forms
- Labels always above inputs (already specified)
- Inputs full width
- Increased height for touch

```css
@media (max-width: 640px) {
  .form-input {
    width: 100%;
    min-height: 48px;
    font-size: 16px; /* Prevents iOS zoom */
  }
  
  .form-field {
    margin-bottom: var(--space-4);
  }
}
```

### Navigation
- Hamburger menu for main nav
- Bottom navigation for key actions
- Sticky header (reduced height)

```css
@media (max-width: 768px) {
  .nav-header {
    position: sticky;
    top: 0;
    height: 56px;
    z-index: 100;
  }
  
  .nav-bottom {
    position: fixed;
    bottom: 0;
    left: 0;
    right: 0;
    height: 64px;
    background: var(--color-white);
    border-top: 1px solid var(--color-gray-100);
    display: flex;
    justify-content: space-around;
    align-items: center;
    z-index: 100;
  }
  
  /* Account for bottom nav */
  .main-content {
    padding-bottom: 80px;
  }
}
```

## Slide Content on Mobile

16:9 slides need special handling on portrait phone screens.

### Options

| Approach | Behavior | Best For |
|----------|----------|----------|
| **Fit width** | Slide shrinks, letterboxed top/bottom | Quick reference |
| **Scroll vertical** | Content reflows to single column | Reading, exercises |
| **Card stack** | Each slide section becomes a card | Interactive content |

### Recommended: Hybrid Approach

```css
/* Slide container */
.slide {
  aspect-ratio: 16 / 9;
  max-width: 100%;
}

@media (max-width: 640px) {
  .slide {
    aspect-ratio: auto;
    min-height: auto;
  }
  
  .slide-content {
    display: flex;
    flex-direction: column;
    gap: var(--space-4);
  }
  
  .slide-image {
    order: -1; /* Image first on mobile */
    width: 100%;
    max-height: 200px;
    object-fit: cover;
  }
}
```

## Interactive Elements (Check-ins, Exercises)

Voice agent check-ins and interactive exercises need mobile-first design.

### Voice Agent UI (Vapi Integration)

```css
.voice-agent-container {
  position: fixed;
  bottom: 0;
  left: 0;
  right: 0;
  padding: var(--space-4);
  background: var(--color-white);
  border-top: 1px solid var(--color-gray-100);
  z-index: 200;
}

.voice-agent-button {
  width: 64px;
  height: 64px;
  border-radius: 50%;
  background: var(--color-warm);
  color: white;
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 auto;
  box-shadow: 0 4px 12px rgba(224, 122, 95, 0.3);
}

.voice-agent-status {
  text-align: center;
  font-family: var(--font-mono);
  font-size: var(--font-size-small);
  color: var(--color-gray-500);
  margin-top: var(--space-2);
}
```

### Exercise Containers

```css
@media (max-width: 640px) {
  .exercise {
    margin-left: -1rem;
    margin-right: -1rem;
    border-radius: 0;
    padding: 1rem;
  }
  
  .exercise-header {
    flex-wrap: wrap;
  }
  
  .exercise-time {
    width: 100%;
    margin-top: 0.5rem;
    margin-left: 0;
  }
  
  .workspace {
    min-height: 150px;
  }
  
  .completion {
    flex-direction: column;
    align-items: flex-start;
    gap: 0.5rem;
  }
  
  .autosave-indicator {
    margin-left: 0;
  }
}
```

## Testing Checklist

Before launching any mobile-facing content, verify:

### Touch & Interaction
- [ ] All tap targets ≥44×44px
- [ ] No hover-only interactions
- [ ] Form inputs don't trigger unwanted zoom (font-size ≥16px)
- [ ] Scrolling is smooth, no horizontal overflow

### Typography & Readability
- [ ] Body text readable without zooming
- [ ] Headings don't overflow
- [ ] Line length reasonable (45-75 characters)
- [ ] Sufficient contrast in outdoor/bright conditions

### Layout
- [ ] Content doesn't overflow viewport
- [ ] Images scale appropriately
- [ ] No content hidden by fixed elements
- [ ] Adequate spacing between elements

### Performance
- [ ] Images optimized for mobile
- [ ] Fonts load efficiently
- [ ] Animations don't cause jank
- [ ] Page loads in <3 seconds on 3G

### Accessibility
- [ ] Focus states visible
- [ ] Screen reader compatible
- [ ] Respects reduced-motion preference
- [ ] Sufficient color contrast

---

# 25. CSS Reference

## Complete CSS Variables

```css
/* MDP Design System CSS Variables v2.0 */
:root {
  /* Typography */
  --font-mono: 'JetBrains Mono', 'IBM Plex Mono', monospace;
  --font-system: system-ui, -apple-system, sans-serif;
  
  --font-weight-light: 300;
  --font-weight-regular: 400;
  --font-weight-medium: 500;
  
  --font-size-hero: 48px;
  --font-size-display: 36px;
  --font-size-h1: 32px;
  --font-size-h2: 24px;
  --font-size-h3: 20px;
  --font-size-body: 16px;
  --font-size-small: 14px;
  --font-size-caption: 14px;
  --font-size-micro: 12px;
  
  /* Grayscale */
  --color-near-black: #1A1A1A;
  --color-gray-700: #4A4A4A;
  --color-gray-500: #6B6B6B;
  --color-gray-300: #9CA3AF;
  --color-gray-200: #D1D5DB;
  --color-gray-100: #E5E7EB;
  --color-near-white: #F5F5F5;
  --color-white: #FFFFFF;
  
  /* Accent Colors */
  --color-warm: #E07A5F;
  --color-cool: #3D5A6C;
  --color-energy: #E8A838;
  --color-experimental: #7B68EE;
  
  /* Mood Backgrounds */
  --bg-neutral: #FFFFFF;
  --bg-dark: #1A1A1A;
  --bg-warm: #FAF7F2;
  --bg-warm-light: #FDF9F7;
  --bg-cool: #F0F4F8;
  --bg-energy: #FFFBF5;
  --bg-experimental: #F8F7FC;
  
  /* Spacing */
  --space-1: 4px;
  --space-2: 8px;
  --space-3: 12px;
  --space-4: 16px;
  --space-6: 24px;
  --space-8: 32px;
  --space-12: 48px;
  --space-16: 64px;
  --space-24: 96px;
  
  /* Border Radius */
  --radius-sm: 4px;
  --radius-md: 8px;
  --radius-lg: 12px;
  --radius-xl: 16px;
  --radius-full: 9999px;
  
  /* Shadows */
  --shadow-sm: 0 2px 8px rgba(0, 0, 0, 0.06);
  --shadow-md: 0 4px 20px rgba(0, 0, 0, 0.08);
  --shadow-lg: 0 8px 30px rgba(0, 0, 0, 0.12);
  
  /* Animation */
  --transition-fast: 150ms ease;
  --transition-normal: 250ms ease;
  --transition-slow: 400ms ease;
  --animation-breathing: 6s ease-in-out infinite;
  
  /* Layout */
  --max-width: 1000px;
  --grid-columns: 12;
  --grid-gap: 24px;
}
```

---

# 26. Sub-Branding Framework

## Overview

The MDP sub-branding system uses three tiers to define how related programs, courses, and initiatives connect to the parent brand. The `< >` bracket pattern remains exclusive to the MDP parent brand.

## Tier 1: Endorsed

**"This IS MDP"**

For core MDP offerings where the parent brand should be primary.

### Visual Treatment
- **Primary mark:** `<mdp>` logo (full size)
- **Sub-brand name:** Below logo, 50-60% of logo size
- **Typography:** JetBrains Mono, Medium (500)
- **Case:** Title Case
- **Color:** Gray-700 (#4A4A4A)
- **Spacing:** 8-12px gap between logo and sub-brand name

### Lockup Examples

**Stacked (Title slides, centered layouts):**
```
      <mdp>
Health Design Sprint
```

**Horizontal (Headers, documents):**
```
<mdp>  Health Design Sprint
```

### When to Use
- Core MDP courses (Health Design Sprint, M1 Design Course)
- Internal UVA programs
- Anything that should build MDP brand recognition directly

## Tier 2: Affiliated

**"Part of the MDP family"**

For workshops, events, and programs that have their own identity but belong to MDP.

### Visual Treatment
- **Primary mark:** Gradient pill (no brackets)
- **Pill shape:** Full radius (pill/capsule)
- **Pill typography:** JetBrains Mono, Medium (500), white text
- **Gradient:** 135° angle, mood color → darker shade
- **Attribution:** `<mdp>` + "Medical Design Program" on same line
- **Attribution size:** 0.75rem (12px)
- **Spacing:** 12-16px gap between pill and attribution

### Gradient Color Options

| Gradient | CSS | Use For |
|----------|-----|---------|
| Warm | `linear-gradient(135deg, #E07A5F 0%, #c4614a 100%)` | Empathy, user focus |
| Cool | `linear-gradient(135deg, #3D5A6C 0%, #2d4654 100%)` | Technical, systems |
| Energy | `linear-gradient(135deg, #E8A838 0%, #c88f2f 100%)` | Action, workshops |
| Experimental | `linear-gradient(135deg, #7B68EE 0%, #5f4fd4 100%)` | Innovation, AI |
| Warm → Energy | `linear-gradient(135deg, #E07A5F 0%, #E8A838 100%)` | Intensive programs |
| Solid Black | `#1A1A1A` (no gradient) | Executive, premium |

### Lockup Structure
```html
<div class="tier2-lockup">
  <span class="gradient-pill">Faculty Workshop</span>
  <div class="attribution">
    <span class="mdp-logo"><span class="bracket">&lt;</span>mdp<span class="bracket">&gt;</span></span>
    <span class="text">Medical Design Program</span>
  </div>
</div>
```

### CSS Implementation
```css
.gradient-pill {
  display: inline-block;
  font-family: 'JetBrains Mono', monospace;
  font-weight: 500;
  font-size: 1rem;
  padding: 0.5rem 1.25rem;
  border-radius: 100px;
  background: linear-gradient(135deg, #3D5A6C 0%, #2d4654 100%);
  color: #FFFFFF;
}

.tier2-lockup .attribution {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 0.5rem;
  margin-top: 0.75rem;
  font-family: 'JetBrains Mono', monospace;
  font-size: 0.75rem;
}

.tier2-lockup .attribution .bracket {
  color: #E07A5F;
}

.tier2-lockup .attribution .text {
  color: #6B6B6B;
}
```

### When to Use
- Faculty workshops
- External-facing events
- Programs that need their own recognition
- Light partnerships

## Tier 3: Independent

**"A Medical Design Program Initiative"**

For major initiatives, partnerships, or spin-offs that need their own identity.

### Visual Treatment
- **Identity:** Full creative freedom (may develop own logo, colors)
- **Attribution:** "A Medical Design Program Initiative" (italicized tagline)
- **Placement:** Below name, in footer, or on "about" pages
- **Typography:** Should follow MDP principles

### Lockup Example
```
HealthTech Accelerator
A Medical Design Program Initiative
```

### When to Use
- Major external partnerships
- Spin-off programs
- Initiatives with distinct external audiences
- Programs that could potentially exist independently

## Tier Selection Matrix

| Question | Tier 1 | Tier 2 | Tier 3 |
|----------|--------|--------|--------|
| Is it a core MDP offering? | Yes | Related | Separate |
| Does it build MDP brand recognition? | Primary goal | Secondary | Not a goal |
| Audience knows MDP? | Yes | Maybe | No |
| Needs own recognition? | No | Some | Yes |
| Partnership involved? | No | Light | Major |
| Could exist without MDP? | No | Unlikely | Possibly |

## Current Assignments

| Program | Tier | Rationale |
|---------|------|-----------|
| Health Design Sprint | Tier 1 | Core 4th-year elective, builds MDP recognition |
| M1 Design Course | Tier 1 | Core curriculum offering |
| Faculty Workshop on AI Prototyping | Tier 2 | Own identity, faculty audience |
| Future partnerships | Tier 3 | TBD based on relationship |

---

---

# 27. External Tool Integration

*This section provides style briefs and prompt templates for generating MDP-branded assets using external AI tools.*

## Tool Categories

### Image & Visual Generation
| Tool | Primary Use | MDP Application |
|------|-------------|-----------------|
| Nano Banana Pro | Infographics, diagrams | Team progress summaries, concept visualizations |
| Midjourney | Stylized imagery | Hero images, mood boards, presentation visuals |
| DALL-E | Quick concept art | Rapid ideation, persona illustrations |
| Ideogram | Text-heavy graphics | Posters, social cards with typography |
| Leonardo.ai | Consistent style generation | Asset series, icon sets |

### Presentation & Document
| Tool | Primary Use | MDP Application |
|------|-------------|-----------------|
| Gamma | Slide decks from text | Course materials, student presentations |
| Beautiful.ai | Auto-formatted slides | Quick workshop decks |
| Canva | Templates, social graphics | Marketing, certificates, handouts |
| Tome | Narrative presentations | Storytelling, case studies |

### Prototyping & UI
| Tool | Primary Use | MDP Application |
|------|-------------|-----------------|
| v0 (Vercel) | UI component generation | Student prototype scaffolding |
| Bolt.new | Full app prototypes | Rapid functional prototypes |
| Replit | Code + deploy | Student project hosting |
| Figma AI | Design generation | UI mockups, design system assets |

### Video & Animation
| Tool | Primary Use | MDP Application |
|------|-------------|-----------------|
| Runway | Video generation/editing | Demo videos, concept animations |
| Pika | Short animated clips | Social content, micro-explanations |
| HeyGen | AI avatars/presenters | Async instruction, accessibility |
| Loom | Screen recording + AI | Student demos, feedback |

### Audio & Voice
| Tool | Primary Use | MDP Application |
|------|-------------|-----------------|
| Vapi | Voice agents | Daily check-ins, interactive exercises |
| ElevenLabs | Voice synthesis | Audio versions of content |
| NotebookLM | Audio summaries | Podcast-style course recaps |
| Descript | Audio/video editing | Polishing recordings |

### Data & Diagrams
| Tool | Primary Use | MDP Application |
|------|-------------|-----------------|
| Mermaid | Flowcharts, diagrams | Process documentation |
| Whimsical AI | Mind maps, flows | Journey maps, system diagrams |
| Excalidraw | Hand-drawn diagrams | Whiteboard-style visuals |
| Napkin.ai | Concept visualization | Turning notes into diagrams |

## Universal Style Brief

Use this brief as a foundation for any visual AI tool:

```
STYLE BRIEF: Medical Design Program (MDP)

VISUAL IDENTITY
- Aesthetic: Clean, modern, professional with warmth
- Feel: Healthcare meets startup, approachable expertise
- Inspiration: Scandinavian design, medical clarity, tech simplicity

COLORS (use these exact values)
- Primary accent: Terracotta #E07A5F (warm, human)
- Secondary accent: Teal #3D5A6C (cool, technical)
- Energy accent: Amber #E8A838 (action, workshops)
- Innovation accent: Purple #7B68EE (AI, experimental)
- Dark: Near-black #1A1A1A
- Light: Off-white #F5F5F5
- Background options: White #FFFFFF, Warm cream #FAF7F2

TYPOGRAPHY FEEL
- Monospace for headers/labels (like code)
- Clean sans-serif for body text
- Generous letter-spacing on small text

VISUAL ELEMENTS
- Chevrons (< >) as design motifs
- Rounded corners (8px radius)
- Generous whitespace
- Subtle shadows (not harsh drop shadows)
- Organic blob shapes for backgrounds (optional)

DO
- Use asymmetric layouts
- Include breathing room/whitespace
- Keep text minimal and scannable
- Use the warm accent color for emphasis
- Include subtle geometric patterns

DON'T
- Use busy gradients or 3D effects
- Add decorative flourishes or ornaments
- Use stock photo clichés (handshakes, lightbulbs)
- Overcrowd with text
- Use pure black (#000000) - use near-black instead
```

## Prompt Templates by Use Case

### Infographic: Team Progress Summary

**For: Nano Banana Pro, Midjourney, DALL-E**

```
Create a minimalist infographic showing team progress for a healthcare design sprint.

CONTENT:
- Team name: [TEAM NAME]
- Sprint day: Day [X] of 10
- Current phase: [PHASE NAME]
- Key accomplishments: [LIST 2-3 ITEMS]
- Next milestone: [MILESTONE]

STYLE:
- Clean, professional healthcare aesthetic
- Color palette: Primary terracotta (#E07A5F), dark text (#1A1A1A), 
  light cream background (#FAF7F2)
- Typography: Modern monospace for headers, clean sans-serif for body
- Include subtle chevron (>) motifs as progress indicators
- Rounded corners (8px), generous whitespace
- No 3D effects, no busy patterns
- Minimal, Scandinavian-inspired design

LAYOUT:
- Vertical/portrait orientation
- Team name prominent at top
- Visual progress indicator (timeline or percentage)
- Accomplishments as simple icon + text pairs
- Small "<mdp>" watermark in bottom corner

OUTPUT: Single infographic, clean edges, ready for digital sharing
```

### Hero Image: Course/Workshop

**For: Midjourney, DALL-E**

```
Create a hero image for a healthcare design workshop.

CONCEPT: [DESCRIBE THE WORKSHOP THEME]

STYLE:
- Abstract, modern, professional
- Warm and approachable, not cold/clinical
- Colors: Terracotta (#E07A5F), teal (#3D5A6C), cream (#FAF7F2)
- Subtle geometric shapes, organic flowing forms
- No literal medical imagery (no stethoscopes, pills, etc.)
- No people's faces (use abstract figures if needed)
- Evokes innovation, collaboration, healthcare improvement

COMPOSITION:
- 16:9 aspect ratio
- Leave space on [left/right] for text overlay
- Balanced but not perfectly symmetrical
- Depth through layered shapes, not 3D effects

MOOD: Optimistic, professional, human-centered, innovative
```

### Diagram: Process Flow

**For: Whimsical, Napkin.ai, Mermaid**

```
Create a process diagram for: [PROCESS NAME]

STEPS:
1. [STEP 1]
2. [STEP 2]
3. [STEP 3]
...

STYLE:
- Clean flowchart, left-to-right or top-to-bottom
- Rounded rectangle nodes (8px corners)
- Terracotta (#E07A5F) for key decision points
- Teal (#3D5A6C) for process steps
- Light gray (#F5F5F5) backgrounds on nodes
- Thin connecting lines with subtle arrows
- Monospace font for node labels
- Generous spacing between elements
- No decorative elements, pure function

OUTPUT: Vector-style diagram, clean edges
```

### Social Card: Event Announcement

**For: Canva, Ideogram, Midjourney**

```
Create a social media card announcing: [EVENT NAME]

DETAILS:
- Event: [NAME]
- Date: [DATE]
- Time: [TIME]
- Location: [LOCATION/VIRTUAL]
- Tagline: [SHORT TAGLINE]

STYLE:
- Square format (1:1) for Instagram/LinkedIn
- Dark background (#1A1A1A) with warm accents
- Event name large and prominent
- "<mdp>" logo in top corner (terracotta brackets, white text)
- Terracotta (#E07A5F) accent color for emphasis
- Clean monospace typography
- Minimal text, maximum impact
- No photos, abstract geometric elements only

BRAND: Medical Design Program at UVA
```

### Presentation Slide: Title

**For: Gamma, Beautiful.ai**

```
Create a title slide for: [PRESENTATION TITLE]

CONTENT:
- Title: [TITLE]
- Subtitle: [SUBTITLE]
- Presenter: [NAME, CREDENTIALS]
- Date: [DATE]
- Branding: <mdp> Medical Design Program

STYLE:
- 16:9 aspect ratio
- Dark background (#1A1A1A) OR warm cream (#FAF7F2)
- Title in clean monospace font, large
- Subtitle smaller, secondary color
- <mdp> logo positioned [top-left / bottom-left]
- Subtle geometric accent (chevron pattern or organic shape)
- No photos, no busy elements
- Professional, modern, healthcare innovation feel

OUTPUT: Single slide, presentation-ready
```

## Voice Agent Scripts (Vapi)

### Daily Check-in Template

```
VOICE AGENT: Daily Sprint Check-in
PERSONALITY: Warm, encouraging, efficient
VOICE: [Configure in Vapi - recommend natural, not robotic]

OPENING:
"Hi [NAME]! This is your Day [X] check-in for the Health Design Sprint. 
I have a few quick questions about your progress. Ready?"

QUESTIONS:
1. "What did you accomplish today?"
   [Wait for response, acknowledge]
   
2. "On a scale of 1 to 5, how confident are you feeling about 
   your team's direction?"
   [Capture number]
   
3. "What's the biggest challenge you're facing right now?"
   [Wait for response]
   
4. "Is there anything you need help with before tomorrow?"
   [Wait for response]

CLOSING:
"Great, thanks for checking in! Your responses have been recorded. 
Keep up the good work, and I'll talk to you tomorrow. Bye!"

FALLBACKS:
- If no response: "I didn't catch that. Could you repeat?"
- If unclear: "Just to make sure I understood, you said [SUMMARY]. Is that right?"
- If user asks question: "That's a great question. I'd suggest asking 
  your instructor or posting in the team chat. For now, let's continue 
  with the check-in."
```

## Quality Checklist for AI-Generated Assets

Before using any AI-generated asset, verify:

### Brand Alignment
- [ ] Uses correct MDP colors (not approximations)
- [ ] Typography feels monospace/clean (not decorative)
- [ ] Appropriate whitespace and breathing room
- [ ] No conflicting visual styles

### Technical Quality
- [ ] Resolution sufficient for intended use
- [ ] No artifacts, distortions, or AI "tells"
- [ ] Text is legible and correctly spelled
- [ ] Aspect ratio correct for platform

### Content Accuracy
- [ ] All text/numbers are correct
- [ ] No hallucinated information
- [ ] Appropriate for audience
- [ ] Accessible (contrast, readability)

### Legal/Ethical
- [ ] No copyrighted material inappropriately used
- [ ] No recognizable faces without consent
- [ ] Appropriate for healthcare context
- [ ] No misleading representations

---

# 28. Decision Log

## All Confirmed Decisions

| Date | Category | Decision | Choice |
|------|----------|----------|--------|
| Jan 2026 | Logo | Default weight | Light (300) for digital |
| Jan 2026 | Logo | Case | Always lowercase `<mdp>` |
| Jan 2026 | Logo | Favicon icon | `<>` brackets only |
| Jan 2026 | Logo | Spark icon | `<•>` for AI contexts |
| Jan 2026 | Logo | Dark badge variant | Added for punchy print (posters, mugs, exercise sheets) |
| Jan 2026 | Animation | Primary breathing shape | Organic Blobs |
| Jan 2026 | Animation | Secondary breathing shape | Hand-Drawn Rings |
| Jan 2026 | Animation | Primary background | Off-Center Glow |
| Jan 2026 | Media | Screenshot default | Subtle shadow |
| Jan 2026 | Media | Screenshot featured | Warm tint frame |
| Jan 2026 | Media | Logo walls | Grayscale, color on hover |
| Jan 2026 | Media | Tool lists | Contained boxes with hover lift |
| Jan 2026 | Callouts | Icon approach | Brand Symbol Vocabulary |
| Jan 2026 | Callouts | Icon set | `> ! + * ~ /` |
| Jan 2026 | Layout | Slide aspect ratio | 16:9 |
| Jan 2026 | Layout | Max content width | 1000px |
| Jan 2026 | Layout | Grid system | 12-column |
| Jan 2026 | Slides | Activity treatment | Energy mood (amber) |
| Jan 2026 | Slides | Text + image | Text left, image right |
| Jan 2026 | Slides | Slide numbers | Yes, with total, bottom right |
| Jan 2026 | Components | Callout style | Full background tint |
| Jan 2026 | Components | Bullets | Chevron (`>`) |
| Jan 2026 | Components | Progress | Numbered stepper |
| Jan 2026 | Components | Primary button | Solid black |
| Jan 2026 | Components | Cards | Shadow + accent top |
| Jan 2026 | Content | K/S/M tags | Color-coded pills |
| Jan 2026 | Content | Phase indicator | Bold banner |
| Jan 2026 | Content | Time estimates | Icon + text |
| Jan 2026 | Forms | Input style | Filled background |
| Jan 2026 | Forms | Label position | Above input |
| Jan 2026 | Forms | Rating scales | Numbered boxes |
| Jan 2026 | Forms | Required indicator | Text "(required)" |
| Jan 2026 | Exercises | Container | Energy mood (amber) |
| Jan 2026 | Exercises | Steps | Numbered circles |
| Jan 2026 | Exercises | Workspace | Dashed border |
| Jan 2026 | Exercises | Completion | Checkbox + auto-save |
| Jan 2026 | Writing | Heading case | Title Case |
| Jan 2026 | Writing | Voice | First person plural ("We") |
| Jan 2026 | Writing | Tone | Casual/Energetic |
| Jan 2026 | Writing | Button text | Title Case |
| Jan 2026 | Motion | Transition speed | Snappy (150ms) |
| Jan 2026 | Motion | Slide transitions | Instant (none) |
| Jan 2026 | Motion | Hover effect | Lift + shadow |
| Jan 2026 | Print | Paper size | US Letter |
| Jan 2026 | Print | Method | Digital, with offset planned |
| Jan 2026 | Print | Header/footer | Full |
| Jan 2026 | Large format | Orientation | Portrait |
| Jan 2026 | Large format | Size | 24" × 36" |
| Jan 2026 | Large format | Workflow prints | Tiled / multi-page |
| Jan 2026 | Physical | Sticker shape | Circle |
| Jan 2026 | Physical | Sticker size | 2" |
| Jan 2026 | Physical | T-shirt | Small chest logo |
| Jan 2026 | Physical | Badge | Vertical (portrait) |
| Jan 2026 | Files | Output format | Self-contained HTML |
| Jan 2026 | Files | Folder structure | By day/session |
| Jan 2026 | Files | Naming | Numbered (01-...) |
| Jan 2026 | Files | Image export | Both SVG and PNG |
| Jan 2026 | Email | Logo size | Matches text height |
| Jan 2026 | Email | Logo background | Warm tint pill |
| Jan 2026 | Sub-brand | Tier 1 treatment | `<mdp>` primary, sub-name 50-60% size, Title Case |
| Jan 2026 | Sub-brand | Tier 2 treatment | Gradient pill (no brackets) + `<mdp>` attribution |
| Jan 2026 | Sub-brand | Tier 3 tagline | "A Medical Design Program Initiative" |
| Jan 2026 | Sub-brand | Health Design Sprint | Tier 1 (Endorsed) |
| Jan 2026 | Mobile | Breakpoints | sm:640, md:768, lg:1024, xl:1280, 2xl:1536 |
| Jan 2026 | Mobile | Touch targets | Minimum 44×44px |
| Jan 2026 | Mobile | Typography scaling | Headings reduce, body stays 16px |
| Jan 2026 | External | Tool categories | 7 categories defined (Image, Presentation, Prototype, Video, Audio, Diagram, Writing) |

---

# Document Information

- **Version:** 2.0
- **Last Updated:** January 2026
- **Author:** Matt Trowbridge / Claude
- **Project:** Health Design Sprint Course, UVA Medical Design Program

---

*This document serves as the authoritative reference for the MDP design system. All generated materials should conform to these specifications.*
