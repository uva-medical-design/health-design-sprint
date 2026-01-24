# Extraction Spec: Liedtka "Designing for Growth Field Book"

## Source
- **File:** `Designing_for_Growth_Field_Book__PDF_.pdf` (in Downloads folder)
- **Citation:** Liedtka, J., Ogilvie, T., & Brozenske, R. (2014). *The Designing for Growth Field Book: A Step-by-Step Project Guide*. Columbia University Press.
- **Pages:** 144
- **License:** Educational use with attribution (copyrighted material — extract concepts, not verbatim text)

## Purpose
Create a semantically-rich, searchable resource from this design thinking textbook for:
1. AI agents helping students scope and refine challenges
2. Contextual retrieval during the Health Design Sprint
3. Future MDP courses and projects

## Key Principle: Semantic Tagging for Retrieval

Each chunk should be tagged NOT just with keywords but with **situations, problems, and natural language queries** that would lead someone to this content.

### Example of GOOD semantic tagging:
```yaml
retrieval_triggers:
  - "my project idea is too broad"
  - "how do I narrow down my challenge"
  - "I don't know where to start"
  - "everything feels connected and overwhelming"
  - "scoping a design project"
  - "is this the right problem to solve"
situations:
  - Student has a passion area but no specific problem
  - Team can't agree on what to build
  - Challenge statement is a solution in disguise
  - Project scope keeps expanding
```

### Example of INSUFFICIENT tagging:
```yaml
tags: [scoping, project, design-brief]  # Too generic, won't match natural queries
```

## Extraction Structure

### Folder Location
Decide based on existing repo structure. Likely candidates:
- `/resources/liedtka/` (new, dedicated)
- `/docs/references/liedtka/` (if docs holds reference materials)

### File Structure
```
liedtka/
├── README.md                    # Overview, attribution, usage guide
├── MANIFEST.md                  # Master index with all chunks, tags, cross-references
├── framework/
│   ├── four-questions.md        # What is / What if / What wows / What works
│   └── design-thinking-fit.md   # When to use design thinking vs. linear methods
├── steps/
│   ├── 01-identify-opportunity.md
│   ├── 02-scope-project.md
│   ├── 03-design-brief.md
│   ├── 04-make-plans.md
│   ├── 05-do-research.md
│   ├── 06-identify-insights.md
│   ├── 07-design-criteria.md
│   ├── 08-brainstorm-ideas.md
│   ├── 09-develop-concepts.md
│   ├── 10-napkin-pitches.md
│   ├── 11-surface-assumptions.md
│   ├── 12-make-prototypes.md
│   ├── 13-stakeholder-feedback.md
│   ├── 14-learning-launches.md
│   └── 15-design-onramp.md
├── tools/
│   ├── secondary-research.md
│   ├── direct-observation.md
│   ├── ethnographic-interviews.md
│   ├── job-to-be-done.md
│   ├── value-chain-analysis.md
│   ├── journey-mapping.md
│   ├── personas.md
│   ├── 360-empathy.md
│   ├── creating-posters.md
│   ├── brainstorming.md
│   ├── anchors.md
│   ├── bring-build-buy-map.md
│   ├── forced-connections.md
│   ├── combinatorial-play.md
│   ├── visualization-basics.md
│   ├── storytelling.md
│   ├── storyboarding.md
│   └── co-creation-tools.md
├── templates/
│   └── [visual template descriptions with page references]
└── examples/
    └── worked-example.md        # The example project from pp. 107-132
```

## Chunk Format

Each markdown file should follow this structure:

```markdown
---
# METADATA (YAML frontmatter)
title: "Step 2: Scope Your Project"
source_pages: [8-9]
phase: "What Is"
type: step  # step | tool | framework | template | example

# SEMANTIC RETRIEVAL TAGS
retrieval_triggers:
  - "my idea is too vague"
  - "how to narrow my focus"
  - "project feels too big"
  - "where do I even start"
  - "everything seems important"
  - "can't define the problem"
  - "scope creep"
  - "team has different visions"
  
situations:
  - Student excited about topic but can't articulate specific problem
  - Challenge statement is actually a solution
  - Multiple stakeholders with different needs
  - Unclear who the "user" really is
  
outputs:
  - Scoped project statement starting with action verb
  - Broader and narrower framings explored
  - Clear rationale for chosen scope level

# CROSS-REFERENCES
related_steps: [1, 3]
related_tools: [design-brief, journey-mapping]
prerequisite_for: [3]
hds_workflow_phases: [2, 3]  # Maps to Health Design Sprint 14-phase workflow
---

# Step 2: Scope Your Project

## Core Concept
[Synthesized explanation — NOT verbatim copying]

## The Framework
[Describe the broader/narrower scoping framework]

### Key Questions to Ask
1. What's one reason this matters? (goes broader)
2. What's another reason this matters? (goes broader)
3. What's one barrier that gets in the way? (goes narrower)
4. What's another barrier that gets in the way? (goes narrower)

## How to Use This
[Practical guidance for students]

## Template Reference
**Page:** 9
**Description:** Visual framework showing center box (current opportunity) with arrows to broader opportunities (up) and narrower opportunities (down), driven by "reasons it matters" and "barriers" questions.

## Signs You Need This
- Your challenge statement is longer than two sentences
- You're describing a solution, not a problem
- Team members have different interpretations of the project
- You can't identify a specific user or stakeholder

## Common Mistakes
- Staying too broad ("improve healthcare")
- Going too narrow too fast (missing bigger opportunities)
- Skipping the "reasons" exploration

---
*Source: Liedtka et al. (2014), The Designing for Growth Field Book, pp. 8-9*
```

## MANIFEST.md Structure

Create a master index that enables:
1. Browse by phase (What Is → What If → What Wows → What Works)
2. Browse by type (steps, tools, templates)
3. Search by situation/problem
4. Cross-reference to HDS workflow

```markdown
# Liedtka Design for Growth — Resource Manifest

## Quick Reference by Phase

### What Is (Exploration)
| Resource | Type | When to Use |
|----------|------|-------------|
| [Step 1: Identify Opportunity](steps/01-identify-opportunity.md) | Step | Starting a new project, validating fit for design thinking |
| [Step 2: Scope Project](steps/02-scope-project.md) | Step | Idea too broad or too narrow |
| ... | | |

### What If (Ideation)
...

## Situation Index

| "I'm struggling with..." | Try This |
|--------------------------|----------|
| My idea is too vague | [Scope Your Project](steps/02-scope-project.md) |
| I don't know who to interview | [Personas](tools/personas.md), [Ethnographic Interviews](tools/ethnographic-interviews.md) |
| Brainstorming feels forced | [Forced Connections](tools/forced-connections.md), [Anchors](tools/anchors.md) |
| Can't choose between concepts | [Napkin Pitches](steps/10-napkin-pitches.md) |
| Prototype isn't working | [Stakeholder Feedback](steps/13-stakeholder-feedback.md) |
| ... | |

## HDS Workflow Mapping

| HDS Phase | Liedtka Steps | Key Tools |
|-----------|---------------|-----------|
| 1. Challenge Framing | 1, 2 | — |
| 2. Design Brief | 3 | Design Brief Template |
| 3. User Research | 5 | Ethnographic Interviews, Direct Observation |
| ... | | |
```

## Visual Templates & Diagrams

Visual content is critical for design thinking — many concepts only make sense with the diagram. We need to capture visuals for semantic search AND prioritize which to recreate.

### For EVERY visual element:

1. **Catalog it** in the markdown file with rich description
2. **Tag it semantically** — visuals get their own retrieval triggers
3. **Score for recreation priority**

### Visual Description Format

Include this block for each visual in the relevant markdown file:

```markdown
## Visual: [Descriptive Name]

**Page:** 9
**Type:** framework | template | worksheet | diagram | matrix | flowchart
**Recreation Priority:** HIGH | MEDIUM | LOW

### Visual Description
[Detailed text description of what the visual shows — enough that someone could understand the concept without seeing it, AND enough that an AI could recreate it]

### Key Elements
- [List the components, boxes, arrows, labels]
- [Note relationships between elements]
- [Capture any text/labels in the visual]

### Semantic Tags for This Visual
retrieval_triggers:
  - "I need a template for X"
  - "how do I visualize Y"
  - "show me the framework for Z"
  
situations:
  - [When would a student need to SEE this visual?]

### Recreation Notes
[Any notes on how to recreate: colors, layout, brand alignment opportunities]
```

### Visual Catalog (create as separate file)

Create `/resources/liedtka/VISUAL-CATALOG.md` with:

```markdown
# Liedtka Visual Catalog

## Recreation Priority: HIGH
These visuals are essential for the sprint and should be recreated as branded SVG/HTML.

| Visual | Page | Type | Why High Priority |
|--------|------|------|-------------------|
| Scoping Framework | 9 | Framework | Used Day 1-2, core to challenge framing |
| Four Questions Diamond | 2 | Diagram | Foundational mental model |
| ... | | | |

## Recreation Priority: MEDIUM
Useful but students can reference PDF.

| Visual | Page | Type | Notes |
|--------|------|------|-------|
| ... | | | |

## Recreation Priority: LOW
Nice to have, text description sufficient.

| Visual | Page | Type | Notes |
|--------|------|------|-------|
| ... | | | |

## All Visuals by Chapter

### Framework Section (pp. 1-4)
- [ ] Four Questions Diamond (p. 2) — HIGH
- [ ] What Is / What If / What Wows / What Works cycle (p. 3)

### Steps Section (pp. 5-40)
- [ ] Step 1: Design Thinking Fit Table (p. 7) — MEDIUM
- [ ] Step 2: Scoping Framework (p. 9) — HIGH
- [ ] Step 3: Design Brief Template (p. 11) — HIGH
- [ ] ...

### Tools Section (pp. 41-85)
- [ ] Journey Map Template (p. 54) — HIGH
- [ ] Persona Template (p. 56) — HIGH
- [ ] Brainstorming Rules Poster (p. 62) — MEDIUM
- [ ] ...
```

### Priority Scoring Criteria

**HIGH Priority (recreate as branded SVG/HTML):**
- Used in first 3 days of sprint
- Students will fill in / interact with
- Core mental model that gets referenced repeatedly
- Would benefit from MDP branding (chevrons, colors)

**MEDIUM Priority (screenshot from PDF):**
- Referenced but not filled in
- Supporting concept, not core
- One-time use

**LOW Priority (text description only):**
- Example/illustration only
- Context-specific to book's examples
- Decorative

### Semantic Search for Visuals

Visuals should be findable by natural queries like:
- "I need a template to map the user journey"
- "how do I write a design brief"
- "show me how to scope my project"
- "what's the framework for narrowing my idea"

Include visual-specific retrieval triggers in the parent markdown file so the visual surfaces when relevant.

## Processing Instructions for Claude Code

1. **Read the PDF text** (use pre-extracted `liedtka-full-text.txt`)
2. **Extract by section** — the book has clear step/tool boundaries
3. **Synthesize, don't copy** — paraphrase concepts to respect copyright while preserving meaning
4. **Tag richly** — spend time on retrieval_triggers and situations; these are the key to semantic search
5. **Cross-reference** — link related steps and tools
6. **Map to HDS** — connect each chunk to relevant Health Design Sprint phases
7. **Catalog ALL visuals** — create detailed descriptions of every diagram, template, framework, and worksheet with semantic tags
8. **Score visual priority** — mark each visual as HIGH/MEDIUM/LOW for recreation
9. **Create VISUAL-CATALOG.md** — master list of all visuals with priority scores
10. **Create MANIFEST.md last** — after all chunks are created, build the master index

## Quality Checklist

For each chunk, verify:
- [ ] Frontmatter complete with all fields
- [ ] At least 5 retrieval_triggers (natural language queries)
- [ ] At least 3 situations (when this content helps)
- [ ] Cross-references to related content
- [ ] HDS phase mapping included
- [ ] Source pages cited
- [ ] No verbatim copying of more than a few words
- [ ] Actionable guidance for students
- [ ] All visuals on relevant pages cataloged with descriptions
- [ ] Visual retrieval_triggers included (for diagram/template queries)
- [ ] Visual recreation priority scored (HIGH/MEDIUM/LOW)

For VISUAL-CATALOG.md, verify:
- [ ] All visuals from the book are listed
- [ ] Each has page number, type, and priority score
- [ ] HIGH priority visuals have clear rationale
- [ ] Visuals are organized by section AND by priority

## Attribution Block (use in README and each file)

```
This resource is derived from:
Liedtka, J., Ogilvie, T., & Brozenske, R. (2014). The Designing for Growth Field Book: A Step-by-Step Project Guide. Columbia University Press.

Used for educational purposes within the UVA Medical Design Program. 
For the complete frameworks, templates, and exercises, please obtain the original book.
```
