# Color Specifications
## Medical Design Program Brand

---

## Current Status: Monochrome v1

For the February 2026 launch, the brand operates in **monochrome only**. This is intentional:
- Simplifies production across contexts
- Ensures accessibility
- Works in any environment
- Allows focus on typography and structure
- Future color additions will be deliberate

---

## Primary Palette

### Monochrome Scale

| Name | Hex | RGB | Use |
|------|-----|-----|-----|
| Black | `#000000` | 0, 0, 0 | Maximum contrast (rare) |
| Near-Black | `#1a1a1a` | 26, 26, 26 | Primary text, dark backgrounds |
| Dark Gray | `#333333` | 51, 51, 51 | Secondary text |
| Mid Gray | `#666666` | 102, 102, 102 | Tertiary text, borders |
| Light Gray | `#999999` | 153, 153, 153 | Disabled states |
| Pale Gray | `#e0e0e0` | 224, 224, 224 | Borders, dividers |
| Off-White | `#f5f5f5` | 245, 245, 245 | Subtle backgrounds |
| White | `#ffffff` | 255, 255, 255 | Primary backgrounds |

### Recommended Combinations

| Foreground | Background | Contrast Ratio | Use |
|------------|------------|----------------|-----|
| Near-Black | White | 16.1:1 | Body text |
| Near-Black | Off-White | 14.5:1 | Body text on tinted bg |
| Dark Gray | White | 12.6:1 | Secondary text |
| White | Near-Black | 16.1:1 | Dark mode text |
| Mid Gray | White | 5.7:1 | Captions (large text only) |

---

## Colors to Avoid

| Color | Hex | Reason |
|-------|-----|--------|
| UVA Navy | `#232D4B` | Institutional confusion |
| UVA Orange | `#E57200` | Institutional confusion |
| Pure Red | `#FF0000` | Medical/alarm associations |
| Standard Blue | `#0066CC` | Generic, undifferentiated |
| Bright Green | `#00FF00` | Terminal/matrix associations |

### Why Avoid UVA Colors
The Medical Design Program is affiliated with UVA but should have distinct visual identity. Using UVA's official colors would:
1. Create confusion about institutional vs. program materials
2. Require compliance with UVA brand guidelines
3. Limit creative flexibility

---

## Dark Mode

When dark backgrounds are used:

| Element | Light Mode | Dark Mode |
|---------|------------|-----------|
| Background | White `#ffffff` | Near-Black `#1a1a1a` |
| Primary text | Near-Black `#1a1a1a` | Off-White `#f5f5f5` |
| Secondary text | Dark Gray `#333333` | Light Gray `#999999` |
| Borders | Pale Gray `#e0e0e0` | Dark Gray `#333333` |
| Code blocks | Off-White bg | Near-Black bg |

---

## Code Block Colors

### Light Context (documents, light slides)
```
Background: #f5f5f5
Text: #1a1a1a
Comments: #666666
Border: #e0e0e0
```

### Dark Context (presentations, terminals)
```
Background: #1a1a1a
Text: #f0f0f0
Comments: #888888
Border: none or #333333
```

---

## Accessibility Requirements

### WCAG 2.1 AA Compliance

| Text Size | Minimum Contrast |
|-----------|------------------|
| Normal text (<18pt) | 4.5:1 |
| Large text (≥18pt or 14pt bold) | 3:1 |
| UI components | 3:1 |

### Testing Tools
- [WebAIM Contrast Checker](https://webaim.org/resources/contrastchecker/)
- [Colour Contrast Analyser](https://www.tpgi.com/color-contrast-checker/)
- Browser DevTools accessibility audit

### Color Blindness Considerations
Monochrome palette is inherently colorblind-safe. If accent colors are added in future:
- Never rely on color alone to convey information
- Use patterns, labels, or icons as secondary indicators
- Test with colorblindness simulators

---

## Future Color Expansion

When/if color is introduced:

### Principles
1. **One accent color first** — Don't add a full palette at once
2. **Functional use** — Color for interactive elements, not decoration
3. **Maintain monochrome base** — Color should enhance, not replace
4. **Test thoroughly** — Accessibility across all contexts

### Potential Accent Colors (Not Yet Approved)

| Option | Hex | Notes |
|--------|-----|-------|
| Teal | `#00897B` | Medical/clinical association, calm |
| Indigo | `#3F51B5` | Technical, professional |
| Coral | `#FF7043` | Warm, approachable |

These are suggestions for future consideration, not current brand colors.

---

## Application Examples

### Presentation Slides

**Light slide:**
```
Background: #ffffff
Title: #1a1a1a
Body: #333333
Accent line: #666666
```

**Dark slide:**
```
Background: #1a1a1a
Title: #ffffff
Body: #e0e0e0
Accent line: #666666
```

### Documents

```
Background: #ffffff
Headings: #1a1a1a
Body: #333333
Captions: #666666
Borders: #e0e0e0
Code background: #f5f5f5
```

### Digital (Web)

```css
:root {
  --color-bg: #ffffff;
  --color-bg-subtle: #f5f5f5;
  --color-text-primary: #1a1a1a;
  --color-text-secondary: #333333;
  --color-text-tertiary: #666666;
  --color-border: #e0e0e0;
}

/* Dark mode */
@media (prefers-color-scheme: dark) {
  :root {
    --color-bg: #1a1a1a;
    --color-bg-subtle: #2a2a2a;
    --color-text-primary: #f5f5f5;
    --color-text-secondary: #cccccc;
    --color-text-tertiary: #999999;
    --color-border: #333333;
  }
}
```

---

## Quick Reference

```
Primary Text:     #1a1a1a (light bg) or #f5f5f5 (dark bg)
Secondary Text:   #333333 (light bg) or #cccccc (dark bg)
Backgrounds:      #ffffff (light) or #1a1a1a (dark)
Subtle bg:        #f5f5f5 (light) or #2a2a2a (dark)
Borders:          #e0e0e0 (light) or #333333 (dark)
Minimum contrast: 4.5:1 for normal text
```

---

## Related Documents

- [Brand Brief](../BRIEF.md)
- [Typography Specifications](typography.md)
- [Dynamic Brand System](dynamic-brand.md)
