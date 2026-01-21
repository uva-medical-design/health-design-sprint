# Typography Specifications
## Medical Design Program Brand

---

## Primary Typeface: JetBrains Mono

### Why JetBrains Mono
- **Free and open source** — No licensing costs
- **Designed for developers** — Signals technical context
- **Highly legible** — Distinguished characters (l/1/I, 0/O)
- **Ligature support** — `<>`, `->`, `=>` render beautifully
- **Multiple weights** — Thin to ExtraBold available

### Download
- [JetBrains Mono Website](https://www.jetbrains.com/lp/mono/)
- [Google Fonts](https://fonts.google.com/specimen/JetBrains+Mono)

---

## Type Scale

### Presentations (16:9 slides)

| Element | Size | Weight | Use |
|---------|------|--------|-----|
| Hero title | 72-96px | Bold | Title slides only |
| Section title | 48-60px | Bold | Section dividers |
| Slide title | 36-44px | SemiBold | Individual slides |
| Body text | 24-28px | Regular | Main content |
| Caption | 18-20px | Regular | Supporting text |
| Code/technical | 20-24px | Regular | Code snippets |

### Documents (Letter/A4)

| Element | Size | Weight | Use |
|---------|------|--------|-----|
| Document title | 24-32pt | Bold | Cover page |
| H1 | 18-24pt | Bold | Major sections |
| H2 | 14-18pt | SemiBold | Subsections |
| H3 | 12-14pt | SemiBold | Minor headings |
| Body | 11-12pt | Regular | Main content |
| Caption | 9-10pt | Regular | Footnotes, captions |
| Code | 10-11pt | Regular | Inline code |

### Digital (Web/App)

| Element | Size | Weight | Use |
|---------|------|--------|-----|
| H1 | 2.5-3rem | Bold | Page titles |
| H2 | 1.75-2rem | SemiBold | Sections |
| H3 | 1.25-1.5rem | SemiBold | Subsections |
| Body | 1rem (16px) | Regular | Paragraphs |
| Small | 0.875rem | Regular | Captions |
| Code | 0.9rem | Regular | Inline/block code |

---

## Weights

| Weight | CSS Value | Use |
|--------|-----------|-----|
| Thin | 100 | Decorative only |
| ExtraLight | 200 | Large display text |
| Light | 300 | Subheadings |
| Regular | 400 | Body text, default |
| Medium | 500 | Emphasis |
| SemiBold | 600 | Headings |
| Bold | 700 | Titles, strong emphasis |
| ExtraBold | 800 | Hero text only |

**Most common:** Regular (400), SemiBold (600), Bold (700)

---

## Line Height

| Context | Line Height |
|---------|-------------|
| Headings | 1.1-1.2 |
| Body text | 1.5-1.6 |
| Code blocks | 1.4-1.5 |
| UI elements | 1.2-1.3 |

---

## Letter Spacing (Tracking)

| Context | Tracking |
|---------|----------|
| Body text | 0 (default) |
| All caps (rare) | +0.05em |
| Large headings | -0.01em to -0.02em |

**Note:** JetBrains Mono is designed with good default spacing. Avoid heavy adjustments.

---

## The `<mdp>` Mark

### Standard Treatment
```
<mdp>
```
- Font: JetBrains Mono
- Weight: Regular (400) or Bold (700)
- Case: Always lowercase
- No additional styling

### Size Guidelines
| Context | Size |
|---------|------|
| Favicon | 16x16, 32x32 px |
| Social avatar | 400x400 px minimum |
| Presentation footer | 14-18px |
| Document header | 12-14pt |
| Hero/title | 48-96px |

### Clear Space
Minimum clear space around the mark equals the height of the letter `m` on all sides.

```
    ┌─────────────────┐
    │                 │
    │    <mdp>        │  ← height of 'm' on all sides
    │                 │
    └─────────────────┘
```

---

## Fallback Fonts

When JetBrains Mono is unavailable:

### CSS Stack
```css
font-family: 'JetBrains Mono', 'Fira Code', 'Source Code Pro',
             'Consolas', 'Monaco', monospace;
```

### Priority
1. JetBrains Mono (preferred)
2. Fira Code (similar ligature support)
3. Source Code Pro (Adobe, widely available)
4. Consolas (Windows default mono)
5. Monaco (macOS default mono)
6. Generic monospace

---

## Ligatures

JetBrains Mono supports programming ligatures. Enable them for:
- `<>` — Chevron combination
- `->` and `=>` — Arrows
- `!=` and `==` — Comparisons
- `<=` and `>=` — Inequalities

### CSS to Enable
```css
font-feature-settings: "liga" 1, "calt" 1;
```

### When to Disable
- When exact character representation matters
- In contexts where ligatures might confuse readers

---

## Code Block Styling

### Presentation Slides
```
Background: #1a1a1a (near-black)
Text: #f0f0f0 (near-white)
Font: JetBrains Mono Regular
Size: 20-24px
Padding: 24-32px
Border-radius: 8px
```

### Documents
```
Background: #f5f5f5 (light gray)
Text: #1a1a1a (near-black)
Font: JetBrains Mono Regular
Size: 10-11pt
Padding: 12pt
Border: 1px solid #e0e0e0
```

---

## Accessibility

### Minimum Contrast
- Normal text: 4.5:1 ratio (WCAG AA)
- Large text (18pt+): 3:1 ratio
- UI components: 3:1 ratio

### Font Size Minimums
- Body text: Never below 16px (web) or 11pt (print)
- Captions: Never below 14px (web) or 9pt (print)

### Testing
Use [WebAIM Contrast Checker](https://webaim.org/resources/contrastchecker/) to verify.

---

## Quick Reference

```
Primary Font:     JetBrains Mono
Logo Treatment:   <mdp> lowercase, Regular or Bold
Body Weight:      Regular (400)
Heading Weight:   SemiBold (600) or Bold (700)
Line Height:      1.5-1.6 for body
Contrast:         4.5:1 minimum
```

---

## Related Documents

- [Brand Brief](../BRIEF.md)
- [Color Specifications](color.md)
- [Dynamic Brand System](dynamic-brand.md)
