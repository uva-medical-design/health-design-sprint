# Prompt Template: Session Slides

> Use this template when creating HTML slide decks for Health Design Sprint sessions.

---

## Structure Requirements

### File Format
- Self-contained HTML (all CSS inline)
- JetBrains Mono from Google Fonts
- Keyboard navigation (arrow keys, space, page up/down)
- 16:9 aspect ratio slides
- No external dependencies except font

### Slide Count
- Target: 8-12 slides per session
- Title slide + content + closing

### Required Elements
1. **Title slide** with hero image background
2. **Learning objectives** slide (Knowledge / Skills / Mindset)
3. **Content slides** (3-8)
4. **Discussion prompt** slides (1-2)
5. **Deliverables/closing** slide

---

## Slide Types & Templates

### 1. Title Slide
```html
<div class="slide slide--title">
  <div class="content">
    <div class="brand-lockup">
      <div class="brand-logo"><span class="bracket">&lt;</span>mdp<span class="bracket">&gt;</span></div>
      <div class="brand-name">Health Design Sprint</div>
    </div>
    <h1>[SESSION TITLE]</h1>
    <p class="subtitle">[SUBTITLE/TAGLINE]</p>
    <p class="meta">Day [N] [Morning/Afternoon] | [DATE]</p>
  </div>
</div>
```

**Styling:**
- Dark background (#1A1A1A)
- Hero image with 40% opacity overlay
- Centered content
- Tier 1 branding lockup

### 2. Quote/Theme Slide
```html
<div class="slide slide--content">
  <h2><span class="bracket">&lt;</span> Today's Theme <span class="bracket">&gt;</span></h2>
  <div class="big-quote">
    <blockquote>"[INSPIRING QUOTE OR THEME STATEMENT]"</blockquote>
    <cite>[ATTRIBUTION OR SUBTEXT]</cite>
  </div>
</div>
```

### 3. Bullet List Slide
```html
<div class="slide slide--content">
  <h2><span class="bracket">&lt;</span> [HEADING] <span class="bracket">&gt;</span></h2>
  <ul class="bullet-list">
    <li><strong>[KEY POINT]</strong> — [EXPLANATION]</li>
    <li><strong>[KEY POINT]</strong> — [EXPLANATION]</li>
    <li><strong>[KEY POINT]</strong> — [EXPLANATION]</li>
  </ul>
</div>
```

**Styling:**
- Chevron (>) bullets in terracotta
- Bold key terms
- Max 4-5 bullets per slide

### 4. Two-Column Slide
```html
<div class="slide slide--cool">
  <h2><span class="bracket">&lt;</span> [HEADING] <span class="bracket">&gt;</span></h2>
  <div class="two-col">
    <div class="col">
      <h3>[LEFT COLUMN TITLE]</h3>
      <ul>
        <li>[ITEM]</li>
        <li>[ITEM]</li>
      </ul>
    </div>
    <div class="col">
      <h3>[RIGHT COLUMN TITLE]</h3>
      <ul>
        <li>[ITEM]</li>
        <li>[ITEM]</li>
      </ul>
    </div>
  </div>
</div>
```

**Use for:** Comparisons, before/after, options

### 5. Activity/Discussion Slide
```html
<div class="slide slide--energy">
  <h2><span class="bracket">&lt;</span> [HEADING] <span class="bracket">&gt;</span></h2>
  <div class="activity-callout">
    <div class="label">> Activity</div>
    <h3>[ACTIVITY NAME]</h3>
    <p>[BRIEF DESCRIPTION]</p>
  </div>
  <ul class="bullet-list">
    <li>[INSTRUCTION 1]</li>
    <li>[INSTRUCTION 2]</li>
  </ul>
</div>
```

**Styling:**
- Energy background (#FFFBF5)
- Amber accent (#E8A838)
- Clear action orientation

### 6. Claude Prompt Slide
```html
<div class="slide slide--content">
  <h2><span class="bracket">&lt;</span> [HEADING] <span class="bracket">&gt;</span></h2>
  <ul class="bullet-list">
    <li>[CONTEXT OR INSTRUCTION]</li>
  </ul>
  <div class="claude-prompt">
    <div class="label"><•> Claude Prompt</div>
    <code>"[EXAMPLE PROMPT TEXT]"</code>
  </div>
</div>
```

**Styling:**
- Dark box (#1A1A1A) for prompt
- Purple accent (#7B68EE) for Spark icon
- Monospace code display

---

## Background Moods

| Class | Background | Use For |
|-------|------------|---------|
| `slide--content` | Warm #FAF7F2 | Default content |
| `slide--cool` | Cool #F0F4F8 | Technical, systems |
| `slide--energy` | Energy #FFFBF5 | Activities, discussions |
| `slide--dark` | Dark #1A1A1A | Emphasis, closing |

---

## Speaker Notes

Add HTML comments before each slide:
```html
<!-- SPEAKER NOTES: Key talking points for this slide. What to emphasize, timing notes, transition cues. -->
<div class="slide ...">
```

---

## CSS Essentials

```css
:root {
  --font-mono: 'JetBrains Mono', monospace;
  --color-warm: #E07A5F;
  --color-cool: #3D5A6C;
  --color-energy: #E8A838;
  --color-experimental: #7B68EE;
  --color-near-black: #1A1A1A;
  --color-gray-700: #4A4A4A;
  --color-gray-500: #6B6B6B;
  --color-gray-300: #9CA3AF;
  --bg-warm: #FAF7F2;
  --bg-cool: #F0F4F8;
  --bg-energy: #FFFBF5;
}

/* Slide container */
.slide {
  position: absolute;
  width: 100%; height: 100%;
  padding: 64px;
  display: none;
}
.slide.active { display: flex; flex-direction: column; }

/* Brackets in headings */
.bracket { color: var(--color-warm); }

/* Footer */
.slide-footer {
  display: flex;
  justify-content: space-between;
  padding-top: 24px;
  border-top: 1px solid #D1D5DB;
  margin-top: auto;
}
```

---

## JavaScript Navigation

```javascript
const slides = document.querySelectorAll('.slide');
let currentSlide = 0;

function showSlide(index) {
  slides.forEach((slide, i) => slide.classList.toggle('active', i === index));
  currentSlide = index;
}

document.addEventListener('keydown', (e) => {
  switch(e.key) {
    case 'ArrowRight': case 'ArrowDown': case ' ': case 'PageDown':
      e.preventDefault();
      if (currentSlide < slides.length - 1) showSlide(currentSlide + 1);
      break;
    case 'ArrowLeft': case 'ArrowUp': case 'PageUp':
      e.preventDefault();
      if (currentSlide > 0) showSlide(currentSlide - 1);
      break;
    case 'Home': e.preventDefault(); showSlide(0); break;
    case 'End': e.preventDefault(); showSlide(slides.length - 1); break;
  }
});
```

---

## Checklist Before Delivery

- [ ] Title slide has hero image and Tier 1 branding
- [ ] All headings use `<span class="bracket">` for chevrons
- [ ] Speaker notes added as HTML comments
- [ ] Slide footer on all content slides (logo + page number)
- [ ] Keyboard navigation works
- [ ] Consistent mood backgrounds based on content type
- [ ] Maximum 4-5 bullets per slide
- [ ] Discussion prompts use energy mood
- [ ] Claude prompts use experimental styling

---

*Template version: 1.0 | January 2026*
