# GitHub Materials: Instructor Guide
*Health Design Sprint | Course Integration*

---

## Overview

These materials teach Git/GitHub to medical students with little or no prior experience, framed as a **design documentation tool** rather than a technical requirement.

**Core insight:** Version control maps directly to design thinking's emphasis on iteration. Commits become a journal of design decisions.

---

## Materials Package

| Document | Purpose | Timing |
|----------|---------|--------|
| `prework-github-basics.md` | Pre-elective setup and mental model | Send ~1 week before Day 1 |
| `video-script-github-basics.md` | Script for 10-minute walkthrough video | Record before course |
| `day1-github-exercise.md` | Hands-on practice with real course materials | Day 1, ~30-40 min |

---

## Integration into Course Schedule

### Pre-Work (1 week before)

**Send to students:**
- Pre-work guide (markdown or PDF conversion)
- Video link (once recorded)
- Organization invite to `uva-medical-design`

**Estimated student time:** 20-30 minutes

**What they should complete:**
- GitHub account with UVA email
- Accept org invite
- Install GitHub Desktop  
- Clone course repository

### Day 1 Morning

**Suggested placement:** After welcome/framing, before the Speedrun

**Time needed:** 35-45 minutes total
- 5 min: Verify setup, troubleshoot stragglers
- 10 min: Explore repository structure
- 15 min: Create reflection journal + first commit
- 10 min: Partner share + debrief

**Why this timing works:**
- Sets up the infrastructure students need for the sprint
- Creates reflection journals they'll use throughout
- Builds confidence before the Speedrun introduces more complexity
- Partner share creates early team bonding

---

## Knowledge-Skills-Mindset Alignment

These materials explicitly develop:

| Dimension | Pre-Work | Day 1 Exercise |
|-----------|----------|----------------|
| **Knowledge** | 4-zone mental model; Git vocabulary | How commits create traceable history |
| **Skills** | Account setup; GitHub Desktop basics | Stage, commit, push; view history |
| **Mindset** | Version control as design documentation | Seeing Git as iteration tracking |

---

## Common Student Questions (Anticipated)

**"Why can't we just use Google Drive / Dropbox?"**
> Those are great for file storage, but they don't track *why* you changed something. Git's commit messages create a narrative of your design thinking.

**"Will we need to use the command line?"**
> Not required. GitHub Desktop handles everything visually. But knowing the underlying commands helps when troubleshooting.

**"What if I break something?"**
> Git is designed to help you recover. We can always revert to a previous commit. Mistakes are part of learning.

**"This seems like overkill for a 2-week project."**
> Fair question! But you'll generate 50+ files over two weeks. Git helps you find that one interview note from Day 2 when you're presenting on Day 10.

---

## Instructor Prep Checklist

**Before sending pre-work:**
- [ ] Create/verify `uva-medical-design` organization exists
- [ ] Create `health-design-sprint` repository with course materials
- [ ] Prepare student roster for org invites
- [ ] Record video (or use script for live walkthrough)
- [ ] Convert markdown to PDF if needed

**Day 1 preparation:**
- [ ] Create `journals/` folder in repo (if not already)
- [ ] Prepare troubleshooting notes for common issues:
  - "Can't find organization invite" → Check spam; resend
  - "Repository not showing" → May need to quit/reopen Desktop
  - "Push failed" → Often permissions; verify org membership
- [ ] Have a backup plan if WiFi is slow (local demo)

---

## Scaffolding Throughout the Sprint

After Day 1, reinforce Git habits:

**Days 2-5 (Week 1):**
- Remind students to commit interview notes, journey maps, problem statements
- Model good commit messages: "Add interview notes - Dr. Chen on workflow pain points"

**Days 6-10 (Week 2):**
- Show how to use history to trace decisions
- Demonstrate reverting a file if a prototype change doesn't work
- Reference commit history in final presentations

**End of course:**
- Students can link to their commit history as portfolio evidence
- Reflection journals become exportable artifacts

---

## Technical Notes

**Recommended repository structure:**
```
health-design-sprint/
├── CLAUDE.md                 # AI context file
├── curriculum/               # Course materials (read-only for students)
├── templates/                # Blank templates for activities
├── examples/                 # Sample artifacts
├── journals/                 # Student reflection files (each student commits here)
└── projects/
    ├── cville-team/          # Charlottesville team workspace
    └── inova-team/           # INOVA team workspace
```

**Branch strategy for this course:**
Keep it simple—everyone works on `main`. Branching adds cognitive load that's unnecessary for a 2-week intensive with this audience.

**If you want to go further:**
The `day1-github-exercise.md` could be followed later (Day 3?) by a "collaboration exercise" where partners make conflicting edits and learn to resolve merge conflicts. But this is optional and only if time/interest allows.

---

## Connection to Course Philosophy

These materials embody the course's core principles:

- **Process over polish:** Commit messages document decisions, not just final outputs
- **Learn by doing:** Setup comes before explanation; students commit before they "fully understand"
- **Documentation as practice:** Git history becomes a reflection artifact automatically

The goal isn't Git mastery—it's comfort with incremental saving and iteration tracking as a professional habit.
