# GitHub Basics: Pre-Work Guide
*Health Design Sprint | UVA Medical Design Program*

---

## Why Version Control Matters for Designers

You already version your files. Every time you've saved `FinalDraft_v2_FINAL_actuallyFinal.docx`, you were doing version control—badly.

**Git** is a system that does this properly. **GitHub** is where teams store and share Git projects.

Here's why this matters for the Health Design Sprint:

- **Iteration is the point.** Design thinking is about testing, learning, and improving. Git tracks every version so you can see your evolution—and go back if needed.
- **Documentation happens automatically.** Your commit messages become a journal of decisions.
- **Teams stay synchronized.** No more "who has the latest version?" chaos.
- **It's industry standard.** Every tech team, startup, and health AI company uses Git. This is a career skill.

---

## The Mental Model (⚡ Key Concept)

Think of Git as having **4 zones**. Your work flows through them left to right:

```
[Your Files]  →  [Staging Area]  →  [Repository]  →  [GitHub]
   (local)        (git add)        (git commit)     (git push)
```

| Zone | What It Is | Analogy |
|------|------------|---------|
| **Working Directory** | Your actual files on disk | Your desk with papers scattered |
| **Staging Area** | Files marked "ready to save" | Papers you've stacked to file |
| **Local Repository** | Saved snapshots (commits) on your machine | Your filing cabinet |
| **Remote (GitHub)** | The cloud copy everyone can access | Shared drive / team archive |

**The key insight:** You don't save directly to the team. You:
1. Work on files locally
2. Stage what you want to save (`git add`)
3. Commit with a message (`git commit`)
4. Push to share (`git push`)

This separation is intentional. It lets you work freely, then deliberately choose what to share.

---

## Setup Steps (Do These Before Day 1)

### Step 1: Create Your GitHub Account

1. Go to [github.com](https://github.com)
2. Click **Sign Up**
3. Use your **UVA email** (this unlocks education benefits)
4. Choose a professional username (you'll use this for years—keep it simple)

**Time: 5 minutes**

### Step 2: Accept the Course Organization Invite

After you register for the course, you'll receive an email inviting you to the `uva-medical-design` organization.

1. Check your email for the invite
2. Click the link to accept
3. If you don't see it, check spam—or contact the course team

**Time: 2 minutes**

### Step 3: Install GitHub Desktop

GitHub Desktop is a visual interface that makes Git approachable. We'll start here before touching the command line.

1. Download from [desktop.github.com](https://desktop.github.com)
2. Install and open
3. Sign in with your GitHub account
4. When asked about configuring Git, use your name and UVA email

**Time: 5-10 minutes**

### Step 4: Clone the Course Repository

"Cloning" downloads a copy of the shared repository to your computer.

1. In GitHub Desktop, click **File → Clone Repository**
2. Select the **GitHub.com** tab
3. Find `uva-medical-design/health-design-sprint`
4. Choose where to save it (e.g., `Documents/HDS-Course`)
5. Click **Clone**

You now have all course materials on your machine!

**Time: 3 minutes**

---

## Essential Commands (Reference)

You don't need to memorize these. GitHub Desktop does most of this with clicks. But understanding the underlying commands helps when things go wrong.

| What You Want to Do | Command | GitHub Desktop |
|---------------------|---------|----------------|
| Get latest changes from team | `git pull` | Click "Fetch origin" then "Pull" |
| See what you've changed | `git status` | Left panel shows changed files |
| Stage files for commit | `git add filename` | Check the box next to file |
| Save a snapshot with a message | `git commit -m "message"` | Enter summary, click "Commit" |
| Share your commits with team | `git push` | Click "Push origin" |

---

## The Commit Message Discipline

Commit messages are mini design decisions. They document *why* you made changes.

**Good commit messages:**
- `Add interview notes from Dr. Chen`
- `Revise problem statement based on user feedback`
- `Fix prototype login flow - users confused by button`

**Bad commit messages:**
- `stuff`
- `updates`
- `asdfasdf`

Think of commits as journal entries for your design process. Your future self (and teammates) will thank you.

---

## Common Scenarios

### "I changed files but I'm not ready to share them"
That's fine! Your working directory is private. Don't stage, commit, or push until you're ready.

### "I want to see what my teammate changed"
1. Click **Fetch origin** in GitHub Desktop
2. Click **Pull** to download their changes

### "I made a mess and want to start over"
Don't panic. Git makes this recoverable:
1. **To undo uncommitted changes:** Right-click the file → "Discard changes"
2. **To undo a commit:** History → Right-click commit → "Revert"

### "I got a merge conflict"
This happens when you and a teammate edited the same file. Don't worry—we'll handle this together on Day 1.

---

## Pre-Work Checklist

- [ ] GitHub account created (with UVA email)
- [ ] Organization invite accepted (`uva-medical-design`)
- [ ] GitHub Desktop installed
- [ ] Course repository cloned to your computer
- [ ] Opened the repository and looked at the files

**Total time: 20-30 minutes**

---

## Video Walkthrough

*[Link to 10-minute video will be added here]*

The video covers:
1. Why Git matters for healthcare innovators (2 min)
2. The 4-zone mental model (2 min)
3. Live setup walkthrough (5 min)
4. Your first commit (1 min)

---

## Resources for Going Deeper

These are optional—skim if curious, but the pre-work above is sufficient.

### Beginner-Friendly Tutorials
- **[GitHub Skills](https://skills.github.com/)** — GitHub's official interactive tutorials
- **[Learn Git Branching](https://learngitbranching.js.org/)** — Visual game for learning (can skip until later)

### Video Explanations
- **[Git Explained in 100 Seconds](https://www.youtube.com/watch?v=hwP7WQkmECE)** (Fireship, 2 min) — Fast overview
- **[Git and GitHub for Beginners](https://www.youtube.com/watch?v=RGOj5yH7evk)** (freeCodeCamp, 1 hr) — Comprehensive if you want depth

### Reference
- **[GitHub Docs: Hello World](https://docs.github.com/en/get-started/quickstart/hello-world)** — Official getting started guide
- **[Git Cheat Sheet](https://education.github.com/git-cheat-sheet-education.pdf)** — PDF reference

---

## Knowledge, Skills, and Mindset

By completing this pre-work, you're developing:

| Dimension | What You're Building |
|-----------|---------------------|
| **Knowledge** | Understanding Git's 4-zone model; knowing that GitHub is the standard collaboration platform |
| **Skills** | Setting up accounts, cloning repos, recognizing the basic workflow |
| **Mindset** | Comfort with incremental saving; seeing version control as documentation, not bureaucracy |

---

*Questions? Post in the course Slack channel or email the course team.*
