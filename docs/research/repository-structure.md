# Repository Structure: health-design-sprint

This document defines the canonical folder structure for the Health Design Sprint course repository. Follow this structure to ensure consistency and enable Claude Code to reference materials efficiently.

---

## Master Organization: `mdp-health-design-sprint`

### Repository: `sprint-template` (Student Portfolio)

```
sprint-template/
├── README.md                       # Course overview, timeline, key links
├── CLAUDE.md                       # Context for Claude Code sessions
│
├── .devcontainer/
│   └── devcontainer.json           # Codespaces configuration
│
├── docs/
│   ├── schedule/
│   │   ├── day-01.md               # Daily guides with detailed timing
│   │   ├── day-02.md
│   │   └── ...
│   ├── tools/
│   │   ├── lovable-guide.md        # Tool-specific quick references
│   │   ├── replit-guide.md
│   │   ├── claude-code-guide.md
│   │   └── github-basics.md
│   └── resources/
│       ├── bio-template.md         # Prompt engineering teaching moment
│       └── design-thinking-overview.md
│
├── research/                       # STUDENT WORK: Discovery phase
│   ├── .gitkeep
│   ├── interviews/                 # Interview notes, transcripts
│   ├── synthesis/                  # Journey maps, personas, insights
│   └── problem-statement.md        # Final problem framing
│
├── prototypes/                     # STUDENT WORK: Build phase
│   ├── .gitkeep
│   ├── v1/                         # First prototype iteration
│   ├── v2/                         # Refined based on feedback
│   └── final/                      # Presentation-ready prototype
│
├── portfolio/                      # GitHub Pages site
│   ├── index.html                  # Landing page
│   ├── about.html                  # Student bio (from profile.md)
│   ├── project.html                # Project showcase
│   ├── reflections.html            # Learning journey
│   └── assets/
│       ├── css/
│       ├── images/
│       └── js/
│
└── reflections/                    # STUDENT WORK: Daily journals
    ├── daily-template.md           # Template for daily entries
    ├── day-01.md
    ├── day-02.md
    └── ...
```

### Repository: `resources` (Shared Course Materials)

```
resources/
├── README.md
├── readings/
│   ├── week-1/
│   └── week-2/
├── slides/
│   ├── day-01-welcome.pdf
│   └── ...
├── templates/
│   ├── interview-guide.md
│   ├── journey-map-template.md
│   └── presentation-outline.md
└── examples/
    ├── past-projects/
    └── sample-portfolios/
```

### Repository: `admin` (Private - Instructor Only)

```
admin/
├── README.md
├── rubrics/
│   ├── design-brief-rubric.md
│   ├── prototype-rubric.md
│   └── presentation-rubric.md
├── solutions/
│   └── example-approaches/
├── facilitator-guides/
│   ├── day-01-guide.md
│   └── ...
└── planning/
    ├── budget.md
    ├── accounts.md
    └── lessons-learned/
```

---

## Cohort Organization: `hds-2026s-digital-01`

Created automatically by GitHub Classroom:

```
hds-2026s-digital-01/
├── sprint-portfolio-[student1-username]/    # Auto-created per student
├── sprint-portfolio-[student2-username]/
├── sprint-portfolio-[student3-username]/
└── ...
```

Each student repo is a fork of `sprint-template` from the master org.

---

## Research Knowledge Base: `docs/research/`

Add this folder to the master template for capturing Claude research outputs:

```
docs/research/
├── README.md                       # Index of research documents
├── github-classroom-guide.md       # GitHub Classroom deep dive
├── miro-integration-guide.md       # Miro + Zoom research
├── tool-comparison.md              # Lovable vs Replit vs Claude Code
└── publishing-plan.md              # Academic publication strategy
```

### Workflow for Adding Research

1. **During Claude chat sessions:** Request markdown output for key findings
2. **Save to local:** Copy content to `docs/research/[topic].md`
3. **Commit to repo:** `git add docs/research/[topic].md && git commit -m "Add [topic] research"`
4. **Update CLAUDE.md:** Reference new document in project context

### CLAUDE.md Integration

Add to CLAUDE.md for automatic context:

```markdown
## Research Knowledge Base

Key reference documents in `docs/research/`:
- `github-classroom-guide.md` - Comprehensive GitHub Classroom setup
- `tool-comparison.md` - Lovable, Replit, Claude Code analysis
- [Add new documents as created]

When working on course infrastructure, consult these documents first.
```

---

## Naming Conventions

### Files
- Use kebab-case: `design-brief-rubric.md` not `DesignBriefRubric.md`
- Include date prefix for versioned files: `2026-02-16-day-01-notes.md`
- Use descriptive names: `interview-synthesis.md` not `notes.md`

### Folders
- Use lowercase with hyphens: `facilitator-guides/` not `FacilitatorGuides/`
- Organize by function, not date (except within `reflections/`)

### Git Commits
- Use conventional format: `type: description`
- Types: `docs:`, `feat:`, `fix:`, `refactor:`, `chore:`
- Examples:
  - `docs: Add day 1 facilitator guide`
  - `feat: Create Codespaces configuration`
  - `fix: Correct typo in profile template`

### Branches (if used)
- `main` - Production-ready content
- `dev` - Work in progress
- `feature/[name]` - Specific additions

---

## Migration Checklist

When setting up a new cohort:

- [ ] Clone sprint-template from master org
- [ ] Update dates in README.md and schedule files
- [ ] Verify Codespaces configuration works
- [ ] Update any cohort-specific content (project focus, guest speakers)
- [ ] Create GitHub Classroom assignment linked to template
- [ ] Test full student workflow (accept → edit → commit → PR)
