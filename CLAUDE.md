# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

**Course:** Health Design Sprint: Rapid Prototyping with AI
**Duration:** 2 weeks (February 16-27, 2026)
**Students:** 7 fourth-year medical students (UVA Charlottesville + INOVA)
**Instructor:** Matthew Trowbridge, MD, MPH

This repository contains course infrastructure, curriculum materials, and resources for teaching medical students to combine design thinking with AI-assisted prototyping.

## Core Philosophy

**Six-Month Window Thesis:** Current AI capabilities democratize technology rather than replace expertise. Domain expertise and design thinking are MORE valuable in the AI era.

**Process Over Polish:** Success = validated insights and testable concepts, not market-ready solutions. Document failures and pivots as much as working prototypes.

**No Apps Default:** Don't automatically suggest mobile apps. Must justify that mobile is the right delivery vehicle.

## Repository Architecture

### Source of Truth
- `SOURCE/schedule.yaml` - Master schedule defining all course content, daily structure, tools, and evaluation. Claude Code reads this to generate materials.

### Content Generation Pipeline
```
SOURCE/schedule.yaml → Claude Code → GENERATED/
                                   → sessions/
                                   → curriculum/
```

### Key Directories
| Directory | Purpose |
|-----------|---------|
| `SOURCE/` | Master YAML files (schedule, config) |
| `GENERATED/` | AI-generated student/instructor materials |
| `sessions/` | HTML slide decks (reveal.js format) |
| `curriculum/` | Session plans, templates, daily schedule |
| `resources/liedtka/` | Design thinking framework (15 steps, 17 tools) |
| `brand/` | Design system: tokens, studio assets, logos |
| `voice-agent/` | Vapi daily check-in system specs |
| `docs/` | Infrastructure, research, design system docs |
| `templates/` | CLAUDE.md template, project structure |

### GitHub Organizations
| Organization | Purpose |
|--------------|---------|
| `uva-medical-design` | Master templates, resources (this repo) |
| `hds-2026s-digital-01` | February 2026 cohort student repos |

## Development Environment

### Codespaces
The `.devcontainer/devcontainer.json` provides a ready-to-use environment:
- Python 3.11 with pandas, matplotlib, seaborn, jupyter
- Node LTS with live-server
- GitHub CLI
- VS Code extensions for Python, Markdown, Prettier, Copilot

### Local Preview
```bash
# Preview slides (reveal.js HTML files)
npx live-server sessions/

# Python development
python3 -m venv .venv && source .venv/bin/activate
pip install pandas matplotlib seaborn requests jupyter
```

### Ports
- 5500: Live Server (slides)
- 8000: Python Server
- 3000: Node Server

## Generating Course Materials

When updating or generating course content:
1. Edit `SOURCE/schedule.yaml` as the source of truth
2. Reference the schedule structure when generating slides, guides, or session plans
3. Output to appropriate directories (`GENERATED/`, `sessions/`, etc.)

### Slide Generation
Slides use reveal.js HTML format. See existing examples in `sessions/day-01/` and `sessions/day-02/`.

## Design System

**Brand:** UVA Medical Design Program (MDP)
**Logo system:** `<mdp>` with chevron vocabulary
**Chevrons represent:** Diverge/converge design thinking rhythms
**Typography:** JetBrains Mono primary (font at `brand/fonts/JetBrainsMono-Bold.ttf`)
**Colors:** Monochrome palette in `brand/tokens/design-tokens.json`
**Avoid:** UVA navy (#232D4B), UVA orange (#E57200), pure red

### Studio Assets (`brand/studio/`)
- `lower-thirds/` - OBS overlays for presenter identification
- `holding-slides/` - Starting soon, break, outro screens
- `overlays/` - Logo bugs for corner placement
- `stream-deck-icons/` - Scene switching buttons

### Asset Generation
**For overlays requiring transparency:** Use Python/Pillow, not AI image generators. AI models (Gemini, DALL-E) cannot produce true alpha channels. See `docs/infrastructure/ai-model-decision-matrix.md`.

## Naming Conventions

**Cohort organizations:** `hds-[TERM][YEAR]-[FOCUS]-[SECTION]`
- Term: `s` (spring), `f` (fall), `u` (summer)
- Example: `hds-2026s-digital-01`

**Files:** kebab-case with `.md` extension for documentation

**Commits:** `type: description` (docs:, feat:, fix:, chore:)

## Team

**Instructor:** Matthew Trowbridge (mtrowbridge@virginia.edu)
**TAs:**
- Farah Turkistani (FT8XX@uvahealth.org)
- Jonathan Swap (JS7JX@uvahealth.org)

**Support:**
- Penny Carlisle - Rotation Coordinator
- Sarah Derr, Kyle Williams - Technical support
- Pamela Crawford - INOVA logistics

## Research Knowledge Base

Reference documents in `docs/research/`:
- `github-classroom-guide.md` - GitHub Classroom infrastructure
- `repository-structure.md` - Folder organization standards
- `tool-comparison.md` - Lovable vs Replit vs Claude Code analysis

Infrastructure docs in `docs/infrastructure/`:
- `zoom-studio-setup.md` - Complete OBS/Zoom teaching studio guide
- `ai-model-decision-matrix.md` - When to use which AI model for assets
- `studio-setup-complete.md` - Current setup status and quick start

Decision logs in `docs/decisions/`:
- `2026-01-26-precall-decisions.md` - Pre-course student call outcomes

## Current Sprint Focus

As of January 2026, active development on:
1. Pre-course student onboarding materials
2. Day 1-2 session slides and exercises
3. Voice agent (Vapi) daily check-in system
4. GitHub Classroom infrastructure
5. Miro board structure and Zoom integration

## Publishing Plans

Course experience targeted for:
- Academic Medicine / Medical Education journal
- GitHub Education blog case study
- AMEE or AAMC conference presentation
- MedEdPortal open educational resource

Collect during course: pre/post surveys, reflection journals, commit history, consent for quotes.

---

*Last updated: January 26, 2026*
