# Health Design Sprint: Integration Update
**Date:** January 21, 2025  
**Purpose:** Consolidate decisions and materials from recent Claude chats for GitHub integration

---

## Roster Update

**Final enrollment: 7 students**

| # | Name | Email | Computing ID | Campus | OS |
|---|------|-------|--------------|--------|-----|
| 1 | Christopher Baiocco | cmb9bs@virginia.edu | cmb9bs | TBD | TBD |
| 2 | Danielle Jones | ddj5jb@virginia.edu | ddj5jb | TBD | TBD |
| 3 | Farah Kabir | fsk5hn@virginia.edu | fsk5hn | TBD | TBD |
| 4 | Magdalene Kwarteng | mk9sp@virginia.edu | mk9sp | TBD | TBD |
| 5 | Matthew Nguyen | mnn7bx@virginia.edu | mnn7bx | TBD | Windows |
| 6 | Kevin Shannon | sbp8pn@virginia.edu | sbp8pn | TBD | TBD |
| 7 | Joselyne Tessa Tonleu | tfw9hn@virginia.edu | tfw9hn | TBD | TBD |

**Dropped:** Jayasuriya Senthilvelan (hnp6eq)

**Team structure options (7 students):**
- 2 teams: 4 + 3
- Campus-based teams if split is 4-3 between UVA Cville and INOVA

---

## Infrastructure Decisions

### Claude Team Standard Account
**Decision:** Purchase Team Standard plan (8 seats @ $30/mo = $240/mo)  
**Status:** ✅ Documented in `docs/infrastructure/claude-team-decision.md`

**Rationale:**
- Centralized billing and seat management
- No individual student payment friction
- Shared Project with custom instructions
- Higher rate limits than Pro during intensive sessions
- 8 seats = 7 students + 1 instructor

### GitHub Classroom
**Decision:** Deferred to future cohort  
**Rationale:** Setup overhead vs. 4 weeks to launch; will evaluate for Fall 2026

### Development Environment
**Decision:** Cross-platform support required (Mac + Windows confirmed)
- Mac setup: Claude Desktop + Claude Code in Terminal
- Windows setup: Claude Desktop + Claude Code in PowerShell/Windows Terminal
- Both: GitHub CLI for version control

---

## Course Philosophy: Key Framing Points

### "The Six-Month Window" Thesis
Core arguments for kickoff lecture:

1. **Inflection point measured in weeks, not years.** Claude Opus 4.5 and similar represent qualitative shift. Most significant moment since original ChatGPT—possibly more.

2. **The revolution is democratization, not technology.** Breakthrough isn't that AI got smarter. Technical capability now accessible to anyone with domain expertise and discipline to articulate problems clearly.

3. **Three competencies for successful professionals:**
   - Domain expertise (understanding healthcare pain points)
   - Design thinking (methods for understanding users, mapping workflows)
   - AI fluency (not coding—knowing how to articulate needs for increasingly autonomous systems)

4. **Tools will seem quaint in six months.** The process and workflow persist; specific platforms are transient.

5. **Textbooks are now podcasts, YouTube, Twitter.** Peer-reviewed literature lags months/years behind practice. Learning to navigate this ecosystem is itself a professional skill.

6. **Agentic AI requires system design.** Shift from "chat" to "agent" means: measurable success criteria, data access, feedback loops, failure modes, appropriate human oversight.

---

## Brand System: `<mdp>` Mark

### Core Concept
Chevron brackets `< >` encode **diverge/converge**—fundamental rhythm of design thinking.

| Symbol | Meaning |
|--------|---------|
| `<` | Diverge: explore, open up |
| `>` | Converge: synthesize, focus |
| `<>` | Full cycle: complete iteration |
| `<<>>` | Rapid iteration: sprint mode |

### Typography
- **Primary font:** JetBrains Mono
- **Mark:** `<mdp>` (lowercase)
- **Accessibility:** 4.5:1 minimum contrast

### Color Strategy
- **v1:** Monochrome (sufficient for launch)
- **Avoid:** UVA Navy (#232D4B), UVA Orange (#E57200), pure red, standard corporate blue

### Dynamic Brand Framework (Sacred/Free Model)
**Sacred (constants):** Logo form, symbol meanings, typography, animation structure  
**Free (variables):** Color moods, illustration styles, density, energy level

**Six moods:** Neutral, Dark, Warm, Cool, Energy, Experimental

### Character System
| Character | Voice | Frequency | Use Case |
|-----------|-------|-----------|----------|
| `<•>` Spark | Instructor | Moderate (2-3/deck) | Transitions, explainers, terminal output |
| Kaomoji set | Peer | Rare (2-3 total/course) | Empathy moments only |

**Approved Kaomoji:**
- `¯\_(ツ)_/¯` — "It happens"
- `(╯°□°)╯︵ ┻━┻` → `┬─┬ノ( º _ ºノ)` — Frustration → Recovery pair
- `ʕ•ᴥ•ʔ` — Friendly curiosity
- `(☞ﾟヮﾟ)☞` — Encouragement

### Domain Portfolio (Owned)
- medicaldesignprogram.org
- medicalai.design
- designing.health
- UVA-specific variants

---

## Voice Agent Check-in System

### Platform Decision
**Vapi** — Native Claude integration, Flow Studio for conversation design, webhook support

### System Design Summary

**Purpose:** Daily check-ins to collect progress, document learning, surface blockers

**Two flows:**
1. **Individual check-in** (3-5 min)
2. **Team check-in** (5-8 min)

### Individual Check-in Flow

**Context-Aware Opening:**
> "Hey [name], it's Day [X] of the sprint—we're in the [phase name] part of the workflow. Based on yesterday, it sounds like you were [brief summary].
> 
> Today people are typically working on [expected activities]. Common challenges include [1-2 typical struggles].
> 
> Before we get into what you actually did—what was your strategy going into today? How did you decide to break apart what you were tackling?"

**Core Questions:**
1. Strategy decomposition (how they broke apart the work)
2. What got done / what's working
3. What's not working (celebrate failed experiments)
4. AI tool usage (which tools, what for, what worked/didn't)
5. Blockers and needs

**Periodic Additions:**
- Days 2, 5, 8, 10: Skills reflection
- Days 5, 10: Career transfer insights

### Team Check-in Flow

**Core Questions:**
1. Team progress summary
2. Decisions made (and alternatives considered)
3. Division of labor
4. Coordination pain/friction
5. Tomorrow's plan (who owns what)
6. Team blockers

### Agent Personality Notes
- **Tone:** Collegial, efficient, curious but not interrogating
- **Pacing:** Brisk but allows real answers
- **Language:** Casual ("got it," "makes sense," "cool")
- **Philosophy:** Treats "things that didn't work" as expected and valuable

### Open Architecture Questions (Need decisions)
- [ ] Where do transcripts/summaries live? (Google Drive? Notion? GitHub?)
- [ ] Can teams see each other's reports?
- [ ] Instructor interface for aggregated view?
- [ ] Feedback loop for incorporating your responses?

---

## Student Onboarding Suite

### Required Pre-Course Setup
1. Claude Pro/Team account access
2. Claude Desktop installed
3. Claude Code installed (via npm)
4. GitHub account created
5. GitHub CLI authenticated
6. Verify all components working

### Platform-Specific Guides Needed
- `macos-setup.md` — Terminal-based workflow
- `windows-setup.md` — PowerShell/Windows Terminal workflow
- `verify-setup.md` — Checklist to confirm everything works

### Standard Configuration
Students receive identical:
- `settings.json` for Claude Code
- Course skill file (`health-design-sprint/SKILL.md`)
- MCP server configurations (if applicable)

---

## Session Plans

### Day 1: Kickoff Lecture "The Six-Month Window"
- 9:30-10:30am (integrated into schedule)
- Content: Course philosophy points above
- Goal: Set expectations, frame the moment, establish mindset

### Day 4: "From Chat to Autonomy" Workshop
- 10:45am-12:00pm
- Content: Chat → Agent paradigm shift
- Includes: Ralph pattern introduction, PRD-as-agent-spec concept
- Hands-on: Convert a chat-based workflow to agent-ready specification

---

## Pre-Course Communication (To-Do)

### Email to Students
- [ ] Update meeting time options (original dates likely passed)
- [ ] Confirm campus (UVA Cville vs INOVA)
- [ ] Collect OS preference
- [ ] Verify Claude account access
- [ ] Collect GitHub username

### INOVA Campus Context
- 72 UVA med students (M3/M4) at INOVA campus
- ~150 residents across 6 programs (FM, IM, Surgery, Peds, OB-GYN, Podiatry)
- Opportunity: Medical education projects with peer users

---

## Files to Create/Update in Repo

### New Files Needed
```
docs/
├── course-philosophy.md
├── infrastructure/
│   └── github-classroom-decision.md  (deferred note)
├── student-setup/
│   ├── README.md
│   ├── macos-setup.md
│   ├── windows-setup.md
│   └── verify-setup.md

curriculum/
├── sessions/
│   ├── day1-kickoff-lecture.md
│   └── day4-chat-to-autonomy.md
├── templates/
│   └── design-brief-prd-template.md

voice-agent/
├── system-prompt-v1.md
├── individual-checkin-flow.md
└── team-checkin-flow.md

brand/
├── BRIEF.md
├── README.md
├── assets/
│   ├── logo-primary-dark.svg
│   ├── logo-primary-light.svg
│   └── logo-styled-brackets.svg
└── specs/
    ├── typography.md
    ├── color.md
    ├── animation.md
    └── dynamic-brand.md

students/
└── roster.csv  (or secure alternative)
```

### Existing Files to Update
- `README.md` — Add references to new docs
- `DAILY_SCHEDULE.md` — Verify sessions integrated
- Add cross-platform notes where relevant

---

## Integration Checklist

- [ ] Copy this document to repo root as reference
- [ ] Create folder structure
- [ ] Generate individual files from this content
- [ ] Update roster with campus/OS as data comes in
- [ ] Send pre-course email to students
- [ ] Set up Claude Team account and invite students
- [ ] Build voice agent MVP in Vapi
- [ ] Test cross-platform student setup (Mac + Windows)
