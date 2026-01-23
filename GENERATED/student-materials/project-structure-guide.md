# Project Folder Structure Guide

## Why Structure Matters

AI tools like Claude are powerful collaborators, but they have a quirk: **they'll happily follow you down rabbit holes and can't find the way back.**

Good folder structure is your map. It helps you:
- Know where you are in the process
- Find what you need quickly
- Return to a known state when things get messy
- Hand off work to teammates (or future you)

This connects to a core workflow principle: **Plan → Execute → Review**

Your folder structure is the "Plan" made visible.

---

## Recommended Structure for Design Sprint Projects

```
my-project/
├── CLAUDE.md              # Project context for AI tools
├── README.md              # Project overview for humans
│
├── research/              # Phase 1-3: Discovery
│   ├── interviews/        # Raw transcripts, notes
│   ├── synthesis/         # Patterns, insights, journey maps
│   └── sources/           # Articles, papers, references
│
├── design/                # Phase 4-7: Define & Ideate
│   ├── problem-statements/
│   ├── hmw-statements/    # "How Might We" explorations
│   ├── concepts/          # Early ideas, sketches
│   └── design-brief.md    # The chosen direction
│
├── prototype/             # Phase 8-11: Build
│   ├── v1/                # First attempt
│   ├── v2/                # After feedback
│   └── assets/            # Images, icons, etc.
│
├── testing/               # Phase 12-13: Test & Learn
│   ├── protocols/         # Test scripts
│   ├── feedback/          # User feedback logs
│   └── iterations/        # Changes based on feedback
│
├── presentation/          # Phase 14: Share
│   ├── slides/
│   ├── demo-script.md
│   └── final-reflection.md
│
└── journal/               # Daily reflections
    ├── day-01.md
    ├── day-02.md
    └── ...
```

---

## Key Principles

### 1. One Folder Per Phase
Each major phase of work gets its own home. When you're in "research mode," you work in `/research`. When you shift to building, you move to `/prototype`.

This prevents the chaos of having everything in one folder.

### 2. Version Your Iterations
Don't overwrite—create new versions:
- `prototype/v1/` → first attempt
- `prototype/v2/` → after user feedback
- `prototype/v3/` → final polish

Git handles fine-grained versioning, but major iterations deserve their own folders.

### 3. Separate Raw from Processed
- `research/interviews/` = raw transcripts
- `research/synthesis/` = your analysis of those transcripts

Raw materials are precious. Keep them separate from your interpretations.

### 4. CLAUDE.md at the Root
This file tells Claude Code about your project. Keep it updated as your project evolves. (See the CLAUDE.md template for what to include.)

### 5. Journal Daily
The `/journal` folder holds your daily reflections. One file per day, named consistently (`day-01.md`, `day-02.md`).

These become invaluable for:
- Your final presentation (showing the journey)
- Future you (remembering what you learned)
- Course reflection (processing the experience)

---

## Setting Up Your Project

### Step 1: Create the Structure
You can create this manually, or use the template in `templates/project-structure/`.

**Quick setup with terminal:**
```bash
mkdir -p my-project/{research/{interviews,synthesis,sources},design/{problem-statements,hmw-statements,concepts},prototype/{v1,v2,assets},testing/{protocols,feedback,iterations},presentation/slides,journal}
touch my-project/{CLAUDE.md,README.md,design/design-brief.md}
```

### Step 2: Initialize Git
```bash
cd my-project
git init
git add .
git commit -m "Initial project structure"
```

### Step 3: Customize CLAUDE.md
Copy from the template and fill in your project specifics.

### Step 4: Start Your Journal
Create `journal/day-01.md` with your hopes, fears, and initial thoughts.

---

## Working With the Structure

### Finding Your Way
Lost? Run `ls` or use your file browser. The folder names tell you what goes where.

### Moving Between Phases
You don't have to finish one phase completely before starting another. It's okay to:
- Go back to `/research` when you learn something new
- Have an idea and jot it in `/design/concepts` even during research

The structure is a guide, not a prison.

### Cleaning Up
At the end of each day:
1. Make sure files are in the right folders
2. Commit your changes to Git
3. Update CLAUDE.md if the project evolved

---

## Common Mistakes to Avoid

**Everything in one folder**
- Creates chaos, hard to find things
- AI tools get confused about context

**No versioning**
- Overwriting means you can't go back
- "final_v2_FINAL_revised.md" is not a versioning system

**Forgetting CLAUDE.md**
- Every AI session starts cold without it
- You waste time re-explaining context

**Skipping the journal**
- End of course: "What did I learn?" "Uh..."
- The journal is your memory

---

## Template Files

Check `templates/project-structure/` for:
- Empty folder structure to copy
- Sample CLAUDE.md
- Journal entry template

---

*Good structure is invisible when it's working. You'll only notice it when it's missing.*
