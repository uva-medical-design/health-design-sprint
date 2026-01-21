# Claude Code Integration Prompts
**Purpose:** Copy/paste these prompts into Claude Code terminal to integrate chat decisions into the health-design-sprint repo

---

## Step 0: Sync and Prepare

```
git pull
```

Then verify you're in the right directory:
```
pwd
```
Should show: `~/Projects/health-design-sprint` (or your local path)

---

## Step 1: Create Folder Structure

**Prompt to paste into Claude Code:**

```
Create the following folder structure in this repo if it doesn't exist:
- docs/student-setup/
- docs/infrastructure/
- curriculum/sessions/
- curriculum/templates/
- voice-agent/
- brand/assets/
- brand/specs/
- students/

Use mkdir -p for each. Don't create any files yet, just the folders.
```

---

## Step 2: Course Philosophy Document

**Prompt:**

```
Create docs/course-philosophy.md with content about the "six-month window" thesis for the Health Design Sprint course. Include these key points:

1. Inflection point measured in weeks, not years - Claude Opus 4.5 represents qualitative shift
2. The revolution is democratization, not technology - technical capability now accessible to domain experts
3. Three competencies: domain expertise + design thinking + AI fluency
4. Tools will seem quaint in six months - process persists, platforms are transient
5. Textbooks are now podcasts, YouTube, Twitter - peer-reviewed literature lags practice
6. Agentic AI requires system design - measurable criteria, data access, feedback loops, failure modes

Frame this as course instructor notes for the Day 1 kickoff lecture "The Six-Month Window". Include talking points and discussion questions.
```

---

## Step 3: Student Setup Guides

**Prompt:**

```
Create the student onboarding documentation in docs/student-setup/:

1. README.md - Overview of what students need to set up before Day 1
2. macos-setup.md - Step-by-step for Mac users: Claude Desktop, Claude Code via npm, GitHub CLI, verification
3. windows-setup.md - Step-by-step for Windows users: same tools but Windows-specific commands (PowerShell)
4. verify-setup.md - Checklist students run to confirm everything works

Include screenshots placeholders, expected output examples, and troubleshooting tips. Assume students are comfortable with prompting but have no coding experience.
```

---

## Step 4: Voice Agent System Prompt

**Prompt:**

```
Create voice-agent/system-prompt-v1.md with a complete Vapi system prompt for a daily student check-in agent.

The agent should:
- Know the 14-phase course workflow and current day/phase
- Open with context-aware greeting referencing previous check-in
- Ask about strategy decomposition first (how student broke apart work)
- Cover: what got done, what's not working (celebrate failures), AI tool usage, blockers
- Use collegial tone ("got it," "makes sense," "cool")
- Treat failed experiments as expected and valuable
- Include periodic questions: skills reflection (days 2,5,8,10), career transfer (days 5,10)

Include placeholder for {{STUDENT_NAME}}, {{CURRENT_DAY}}, {{CURRENT_PHASE}}, {{PREVIOUS_SUMMARY}}.
```

---

## Step 5: Check-in Flow Documents

**Prompt:**

```
Create two conversation flow documents in voice-agent/:

1. individual-checkin-flow.md - Full script for individual student check-ins (3-5 min)
2. team-checkin-flow.md - Full script for team check-ins (5-8 min)

For team flow, include questions about:
- Team progress and decisions made
- Division of labor
- Coordination friction
- Tomorrow's plan and ownership

Map questions to evaluation rubric criteria where relevant.
```

---

## Step 6: Brand System

**Prompt:**

```
Create the brand system documentation:

1. brand/README.md - Quick start guide for the <mdp> mark system
2. brand/BRIEF.md - Complete design rationale: chevron concept (< diverge, > converge), JetBrains Mono typography, monochrome v1, sacred/free framework
3. brand/specs/typography.md - Font specs, sizes, spacing
4. brand/specs/color.md - Monochrome palette, colors to avoid (UVA Navy, Orange)
5. brand/specs/dynamic-brand.md - Six moods (Neutral, Dark, Warm, Cool, Energy, Experimental), when to use each

Core concept: chevron brackets encode diverge/converge design thinking rhythm.
```

---

## Step 7: Session Plans

**Prompt:**

```
Create curriculum/sessions/ with:

1. day1-kickoff-lecture.md - "The Six-Month Window" lecture plan
   - Learning objectives
   - Talking points (reference course-philosophy.md)
   - Discussion questions
   - 60-minute timing breakdown

2. day4-chat-to-autonomy.md - Workshop on shifting from chat to agent mindset
   - Learning objectives (knowledge/skills/mindset)
   - Ralph pattern introduction
   - PRD-as-agent-spec concept
   - Hands-on exercise: convert chat workflow to agent specification
   - 75-minute timing breakdown
```

---

## Step 8: Design Brief Template

**Prompt:**

```
Create curriculum/templates/design-brief-prd-template.md

This should serve dual purpose:
1. Human communication document (what the team is building, for whom, why)
2. Agent-ready PRD (acceptance criteria, measurable success metrics, data requirements)

Include sections for:
- Problem statement and user insights
- Hypothesis being tested
- Success criteria (binary pass/fail where possible)
- Data/API requirements
- Scope boundaries (what's explicitly out of scope)
- "Agent-ready check" prompts throughout

Reference the evaluation rubric's emphasis on prototypes as experiments, not solutions.
```

---

## Step 9: Update Roster

**Prompt:**

```
Create students/roster.csv with these 7 enrolled students:

name,email,computing_id,campus,os,team,github_username
Christopher Baiocco,cmb9bs@virginia.edu,cmb9bs,,,, 
Danielle Jones,ddj5jb@virginia.edu,ddj5jb,,,,
Farah Kabir,fsk5hn@virginia.edu,fsk5hn,,,,
Magdalene Kwarteng,mk9sp@virginia.edu,mk9sp,,,,
Matthew Nguyen,mnn7bx@virginia.edu,mnn7bx,,Windows,,
Kevin Shannon,sbp8pn@virginia.edu,sbp8pn,,,,
Joselyne Tessa Tonleu,tfw9hn@virginia.edu,tfw9hn,,,,

Note: Campus and team fields to be filled after pre-course survey.
```

---

## Step 10: GitHub Classroom Decision Note

**Prompt:**

```
Create docs/infrastructure/github-classroom-decision.md documenting that GitHub Classroom was evaluated but deferred to a future cohort.

Include:
- Summary of features evaluated (Codespaces, autograding, progress tracking)
- Rationale for deferral (setup overhead vs 4 weeks to launch)
- Recommendation to evaluate for Fall 2026 cohort
- Link to the detailed analysis (reference chat conversation)
```

---

## Step 11: Update README

**Prompt:**

```
Update the main README.md to add a documentation index pointing to:
- docs/course-philosophy.md
- docs/student-setup/
- docs/infrastructure/
- curriculum/sessions/
- voice-agent/
- brand/

Keep the existing content, just add a "Documentation" section near the top.
```

---

## Step 12: Commit and Push

After Claude Code creates all files:

```
git add .
git status
```

Review what's staged, then:

```
git commit -m "Integrate chat decisions: philosophy, brand, voice agent, student setup

- Add course philosophy doc (six-month window thesis)
- Add student setup guides (Mac + Windows)
- Add voice agent system prompt and check-in flows
- Add brand system documentation
- Add session plans (Day 1 kickoff, Day 4 chat-to-autonomy)
- Add design brief PRD template
- Create student roster
- Document GitHub Classroom deferral"

git push
```

---

## Quick Reference: Single Master Prompt

If you prefer one comprehensive prompt instead of steps:

```
I have a comprehensive integration document with decisions from recent planning sessions. Please help me create all the following in this repo:

1. Folder structure: docs/student-setup/, docs/infrastructure/, curriculum/sessions/, curriculum/templates/, voice-agent/, brand/assets/, brand/specs/, students/

2. Course philosophy document about "six-month window" thesis

3. Student setup guides for Mac and Windows (Claude Desktop, Claude Code, GitHub CLI)

4. Voice agent system prompt for Vapi daily check-ins with context-aware opening

5. Individual and team check-in conversation flows

6. Brand system docs for <mdp> mark (chevron diverge/converge concept, JetBrains Mono, monochrome)

7. Session plans for Day 1 kickoff lecture and Day 4 chat-to-autonomy workshop

8. Design brief template that's both human-readable and agent-ready PRD

9. Student roster CSV (7 students, one confirmed Windows user)

10. GitHub Classroom decision note (evaluated, deferred to future cohort)

After creating these, update README.md with documentation index, then help me commit and push.

The core philosophy: in the AI era, domain expertise + design thinking + AI fluency matter more than coding. Tools change in months; process persists.
```

---

## Verification After Integration

```
tree -L 2
```

Should show new structure. Then:

```
git log --oneline -5
```

To verify commit history.
