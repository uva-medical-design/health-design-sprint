# Day 1 Exercise: Your First Design Sprint Commit
*Health Design Sprint | Hands-On GitHub Practice*

**Time:** 30-40 minutes  
**Format:** Individual, then share with partner  
**You'll need:** GitHub Desktop installed, course repo cloned

---

## Context: Why We're Doing This

In the next two weeks, you'll go through the design process multiple times. Each iteration generates artifacts: interview notes, problem statements, sketches, prototype versions. 

Git isn't just for code—it's for **tracking your thinking**. Your commits become a log of design decisions. When you present your final prototype, you'll be able to show the journey, including the pivots and dead ends.

Today's exercise: Set up your personal workspace and make your first real commit.

---

## Part 1: Verify Your Setup (5 min)

Open GitHub Desktop. You should see the `health-design-sprint` repository.

**Quick checks:**

1. **Repository appears in left sidebar?** ✓
2. **Current branch says `main`?** ✓
3. **"Fetch origin" doesn't show errors?** ✓

If anything's off, raise your hand—we'll troubleshoot together.

---

## Part 2: Explore the Repository (5 min)

Click **"Show in Finder"** (Mac) or **"Show in Explorer"** (Windows) to open the repository folder.

Take 3 minutes to browse. Notice:

- **`curriculum/`** — Course materials, readings, schedules
- **`templates/`** — Documents you'll fill in during the sprint
- **`examples/`** — Sample artifacts from previous sprints
- **`CLAUDE.md`** — Context file for AI-assisted development

**Reflection question:** What surprised you about how the course materials are organized?

---

## Part 3: Create Your Reflection Journal (10 min)

You'll keep a personal reflection journal throughout the sprint. Let's create it now.

### Step 1: Create your file

1. Inside the repository folder, find (or create) a folder called `journals/`
2. Create a new text file named `reflection-[yourname].md`  
   (Example: `reflection-nguyen.md`)

### Step 2: Add initial content

Open the file in any text editor (TextEdit, Notepad, VS Code—whatever you have). Paste this template:

```markdown
# Health Design Sprint Reflection Journal
**Student:** [Your Name]  
**Campus:** [UVA Charlottesville / INOVA]  
**Date Started:** [Today's Date]

---

## Pre-Sprint Reflections

### What drew me to this elective?
[Write 2-3 sentences]

### What I already know about AI in healthcare:
[Write 2-3 sentences—or "not much yet" is fine!]

### What I hope to learn:
[Write 2-3 sentences]

### One thing that makes me nervous about this sprint:
[Be honest—uncertainty is part of the process]

---

## Day 1 Entries
*[You'll add to this throughout the day]*
```

### Step 3: Fill it in

Take 5 minutes to actually answer the questions. This isn't busywork—these reflections will be valuable when you write your final presentation.

---

## Part 4: Make Your First Commit (10 min)

Now let's use Git to save your work and share it with the team.

### Step 1: See your changes

Open GitHub Desktop. You should see your new file listed under **"Changes"** on the left.

The file will have a **green plus (+)** indicating it's new.

### Step 2: Stage your file

Check the box next to your reflection file. This moves it to the **staging area**—you're saying "I want to include this in my next commit."

### Step 3: Write a commit message

In the **"Summary"** field at the bottom, write:

```
Add reflection journal for [Your Name]
```

In the optional **"Description"** field, you could add:

```
Initial journal setup with pre-sprint reflections
```

### Step 4: Commit

Click the **"Commit to main"** button.

🎉 You just created a snapshot! Your changes are now saved in your **local repository**.

### Step 5: Push to GitHub

Click **"Push origin"** at the top.

This uploads your commit to GitHub so the whole team can see it.

---

## Part 5: See Your Contribution (5 min)

1. Go to [github.com/uva-medical-design/health-design-sprint](https://github.com/uva-medical-design/health-design-sprint)
2. Click **"commits"** (or the clock icon showing commit count)
3. Find your commit in the list

You're now part of the project's permanent history.

**Bonus:** Click on a teammate's commit to see what they wrote.

---

## Part 6: Partner Share (5 min)

Pair up with someone (preferably from your campus). Share:

1. What you wrote for "one thing that makes me nervous"
2. What you noticed browsing the repository structure
3. Any questions or confusion about the Git workflow

---

## Checkpoint: The Mental Model in Action

Let's revisit the 4-zone model. You just moved through all of them:

```
[Your Files]  →  [Staging Area]  →  [Repository]  →  [GitHub]
   (local)        (git add)        (git commit)     (git push)
```

| Action | Zone Transition |
|--------|-----------------|
| Created `reflection-yourname.md` | Now in Working Directory |
| Checked the box in GitHub Desktop | Moved to Staging Area |
| Clicked "Commit to main" | Saved to Local Repository |
| Clicked "Push origin" | Shared to Remote (GitHub) |

**Key insight:** You controlled each transition. Nothing was shared until you explicitly pushed.

---

## Common Questions

**"What if I want to change my reflection later?"**  
Just edit the file, stage, commit with a message like "Update Day 1 reflections", and push.

**"What if I forgot to write a good commit message?"**  
For now, that's fine. Going forward, practice writing messages that explain *why* you made changes, not just *what* you changed.

**"This seems like a lot of steps for saving a file."**  
It does—for a solo file. The power shows up when you're tracking dozens of files across a team over two weeks. Every decision is documented.

---

## Knowledge, Skills, and Mindset Developed

| Dimension | What You Practiced |
|-----------|-------------------|
| **Knowledge** | The 4-zone model; how commits create a traceable history |
| **Skills** | Creating files, staging, committing, pushing, viewing history |
| **Mindset** | Seeing version control as documentation of design thinking, not overhead |

---

## Before You Close GitHub Desktop

Pull any new changes:

1. Click **"Fetch origin"**
2. If it says "Pull," click it

This ensures you have everyone's latest work. Get in the habit of doing this at the start and end of each session.

---

*Next up: We'll do the Day 1 Speedrun—completing all 14 phases of the design workflow in 90 minutes. Your journal is where you'll capture what that felt like.*
