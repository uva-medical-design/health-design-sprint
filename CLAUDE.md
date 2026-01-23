# CLAUDE.md - Health Design Sprint Project Context

> This file provides context for Claude Code sessions working on the Health Design Sprint course infrastructure.

## Project Overview

**Course:** Health Design Sprint: Rapid Prototyping with AI  
**Duration:** 2 weeks (February 16-27, 2026)  
**Students:** 8 fourth-year medical students (UVA Charlottesville + INOVA)  
**Instructor:** Matthew Trowbridge, MD, MPH  

## Core Philosophy

### The "Six-Month Window" Thesis
Current AI capabilities represent a democratization of technology rather than a technological revolution. Domain expertise and design thinking are becoming MORE valuable, not less. We're teaching students to leverage AI as collaborators, not replacements.

### Chat-to-Agent Paradigm Shift
The valuable skill in the AI era is strategic problem decomposition and user understanding, not polished technical outputs. Students learn to move beyond prompt-based apps to reliable, handoff-ready systems.

### Process Over Polish
Success means generating validated insights and testable concepts, not "market-ready" solutions. We reward documentation of failed approaches and pivots as much as working prototypes.

## Architecture

### GitHub Organizations

| Organization | Purpose |
|--------------|---------|
| `mdp-health-design-sprint` | Master templates, resources, admin (permanent) |
| `hds-2026s-digital-01` | February 2026 cohort student repos |

### Naming Conventions

**Cohort organizations:** `hds-[TERM][YEAR]-[FOCUS]-[SECTION]`
- Term: `s` (spring), `f` (fall), `u` (summer)
- Year: 4 digits
- Focus: `digital`, `clinical`, `tox`, etc.
- Section: `01`, `02`, etc.

**Repositories:** kebab-case, descriptive names
**Files:** kebab-case with `.md` extension for documentation
**Commits:** `type: description` (docs:, feat:, fix:, chore:)

## Key Tools

| Tool | Purpose | Account Type |
|------|---------|--------------|
| GitHub Classroom | Assignment distribution, feedback | Education benefit |
| Codespaces | Browser-based development | Education benefit |
| Lovable | Web app prototyping (Sprint A) | Starter accounts |
| Replit | Mobile app prototyping (Sprint B) | Core accounts |
| Claude Code | Data analysis (Sprint C) | Team subscription |
| Miro | Course artifact, collaboration | UVA license |
| Vapi | Voice agent check-ins | API access |

## Team

**Instructor:** Matthew Trowbridge (mtrowbridge@virginia.edu)  
**TAs:** 
- Farah Turkistani (FT8XX@uvahealth.org)
- Jonathan Swap (JS7JX@uvahealth.org)

**Support:**
- Penny Carlisle - Rotation Coordinator
- Sarah Derr, Kyle Williams - Technical support

## Research Knowledge Base

Reference documents in `docs/research/`:
- `github-classroom-guide.md` - GitHub Classroom infrastructure
- `repository-structure.md` - Folder organization standards
- `tool-comparison.md` - Lovable vs Replit vs Claude Code analysis

## Current Sprint Focus

As of January 2026, active development on:
1. Pre-course student onboarding assignment
2. Day 1 micro-sprint materials (Lovable, Replit, Claude Code)
3. Miro board structure and Zoom integration
4. Gallery capture and feedback mechanisms
5. Teacher HDS journal app

## Common Tasks

### Creating New Daily Guide
```bash
# Template for day guides
cp docs/schedule/day-template.md docs/schedule/day-[N].md
# Edit with day-specific content
```

### Adding Research Documents
```bash
# Save Claude chat research outputs to:
docs/research/[topic-name].md
# Update this CLAUDE.md to reference new document
```

### Testing Codespaces Configuration
```bash
# In the .devcontainer/ folder, devcontainer.json defines:
# - Base image
# - Pre-installed extensions
# - Post-create commands
# Test by creating a Codespace from the repository
```

## Design System

**Brand:** UVA Medical Design Program (MDP)
**Logo system:** `<mdp>` with chevron vocabulary
**Chevrons represent:** Diverge/converge design thinking rhythms
**Colors:** [Reference design system documentation]

## Publishing Plans

Course experience targeted for:
- Academic Medicine / Medical Education journal
- GitHub Education blog case study
- AMEE or AAMC conference presentation
- MedEdPortal open educational resource

Collect during course: pre/post surveys, reflection journals, commit history, consent for quotes.

---

*Last updated: January 2026*
