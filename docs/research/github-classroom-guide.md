# GitHub Classroom: Complete Guide for Health Design Sprint

> **Source:** Research conducted January 2026 for UVA Medical Design Program  
> **Purpose:** Reference guide for course infrastructure and future iterations

## Overview

GitHub Classroom provides a robust foundation for the 2-week Health Design Sprint, offering **free GitHub Team features, Copilot Pro access, and Codespaces** for verified educators. The platform excels at automating repository creation, enabling code feedback workflows, and scaling across multiple cohorts.

**Key Benefits for HDS:**
- Pre-configured browser-based development environments (Codespaces)
- Automatic repository creation for each student
- Fork-based workflow enables pushing updates to all students mid-course
- Feedback pull requests create natural instructor-student dialogue
- Free for verified educators

---

## Architecture: Two-Organization Structure

The pattern refined by educators at UBC, Johns Hopkins, and Harvard uses a **two-organization structure** that separates permanent course materials from cohort-specific student work.

### Organization 1: Master (Permanent)

**Name:** `mdp-health-design-sprint`

| Repository | Purpose | Access |
|------------|---------|--------|
| `sprint-template` | Clonable student portfolio template | TAs + Instructor |
| `resources` | Shared readings, tool guides | Public or restricted |
| `admin` | Rubrics, solutions, instructor guides | Private - Instructor only |

### Organization 2: Cohort-Specific (Per Iteration)

**Naming Pattern:** `hds-[TERM][YEAR]-[FOCUS]-[SECTION]`

Examples:
- `hds-2026s-digital-01` — February 2026 digital health cohort
- `hds-2026f-clinical-01` — Fall 2026 clinical focus
- `hds-2026f-tox-01` — Toxicology focus (potential Holstege collaboration)

**Contents:**
- GitHub Classroom linked to this organization
- All student assignment repositories
- Students have NO access to master organization

### Why This Structure?

| Need | Solution |
|------|----------|
| Clone for future iterations | Create new cohort org, link to same master templates |
| Different project focuses | Create variant templates in master org |
| Simultaneous cohorts | Separate cohort organizations with independent classrooms |
| Archive past work | Keep cohort orgs (read-only) for alumni reference |

---

## How GitHub Classroom Works

### Assignment Creation

When you create an assignment:
1. You share an invitation link
2. Students click the link and receive their own repository copy
3. Repositories are created with proper permissions automatically

**Two modes:**
- **Individual assignments:** One repository per student
- **Group assignments:** One shared repository per team

### The Fork Model (New as of 2024)

Student repositories now use **forks** instead of template copies. This enables:

> **Powerful Feature:** If you discover a bug in your assignment instructions after students have started, you can push an update that creates a pull request in every student's repository.

This is perfect for iterative course development — you can refine materials mid-sprint.

### Autograding

Runs on GitHub Actions, executing tests automatically on every student push:
- Input/output tests (comparing program output)
- Python pytest tests (proportional points)
- Custom shell commands

**Limitation:** Free organizations receive 2,000 GitHub Actions minutes per month.

### Feedback Pull Requests

GitHub Classroom automatically creates a "Feedback" pull request in each student repository:
- Click Files Changed tab to see student work
- Add inline comments on specific lines
- Students can respond, creating a conversation thread
- Use Issues for broader feedback

---

## GitHub Education Benefits (Free for Verified Faculty)

### GitHub Team Features
- Unlimited private repositories
- Advanced collaboration tools
- 3,000 GitHub Actions minutes/month for private repos
- Required reviewers and protected branches

### GitHub Copilot Pro
- Full AI coding assistant subscription
- Free for verified educators AND students (separate applications)
- Valuable for AI prototyping course

### GitHub Codespaces
- Browser-based development environments
- Students click a button → fully configured VS Code in 60 seconds
- ~50 students working on 5 assignments/month using 2-core machines
- Eliminates "works on my machine" problems entirely

### Verification Process
1. Apply at education.github.com with school email
2. Submit documentation (faculty ID or employment letter)
3. Approval typically takes ~12 days
4. Benefits activate within 72 hours of approval

---

## Codespaces: Transformative for Non-Technical Students

### What It Eliminates

| Without Codespaces | With Codespaces |
|-------------------|-----------------|
| Day 1: 60-90 min troubleshooting local installs | Day 1: Click button, working environment in 30 seconds |
| "It works on my machine" problems | Identical environment for everyone |
| Students need to install VS Code, Git, Python, Node... | All pre-installed and configured |
| TAs spend time on setup issues | TAs focus on content |
| Different instructions for Mac/Windows/Linux | One instruction set |

### Configuration File

Create `.devcontainer/devcontainer.json` in your template:

```json
{
  "name": "Health Design Sprint",
  "image": "mcr.microsoft.com/devcontainers/python:3.11",
  "features": {
    "ghcr.io/devcontainers/features/node:1": {},
    "ghcr.io/devcontainers/features/github-cli:1": {}
  },
  "customizations": {
    "vscode": {
      "extensions": [
        "ms-python.python",
        "esbenp.prettier-vscode",
        "github.copilot"
      ]
    }
  },
  "postCreateCommand": "pip install pandas matplotlib seaborn requests"
}
```

Students never touch configuration — they just code.

---

## Teaching Version Control to Medical Students

### Mental Model

Frame Git through familiar concepts:
- **Research reproducibility:** Auditable record of how a project evolved
- **"Protect yourself from yourself":** Checkpoints you can return to when things break
- **"Save points for your work":** Video game checkpoint metaphor

### Progressive Skill Building

| Sprint Days | Skills | Commands |
|-------------|--------|----------|
| Days 1-2 | Basic workflow | `status`, `add`, `commit -m`, `log` |
| Days 3-5 | Remote sync | `push`, `pull`, `clone` |
| Days 6-14 | Light collaboration | Pull requests for feedback |

**Skip for 2-week sprint:** Branching, merge conflicts, advanced workflows

### Common Student Mistakes

| Mistake | Prevention |
|---------|------------|
| Confusing commit with push | Teach local commits extensively before introducing push |
| "Monster commits" with unrelated changes | Teach atomic commits (one logical change per commit) |
| Panic at merge conflicts | Explain Git is "asking for human help," not broken |

### Key Teaching Habit

Teach `git status` as the "what's happening" command. Students should run status before every other command.

---

## Roster Management

### Import Methods
- **CSV upload:** Single column with student identifiers (recommended for small cohorts)
- **LMS sync:** Canvas, Moodle, Blackboard, Brightspace, Sakai via LTI 1.3
- **Manual entry:** For very small groups

### Privacy Options
For healthcare education, use anonymous identifiers (`student_01`, `student_02`) and maintain a separate mapping document.

### Limitation
Roster sync is the only LMS integration — grades do NOT automatically sync back. Export grades as CSV and import manually.

---

## TA Access and Workflow

### Setup
1. Add TAs as owners of cohort organization (not just classroom)
2. Share classroom URL with TAs
3. TAs gain full access to view assignments, enter student repos, leave feedback

### Grading Workflow
- **GitHub Classroom Assistant:** Desktop tool that downloads all student repositories at once
- **Feedback pull requests:** Primary channel for inline code review
- **Issues:** For broader feedback or conversations
- **Saved replies:** Create templates for common feedback

---

## GitHub Pages for Student Portfolios

### Setup
1. Include `/portfolio` folder in template with basic HTML/Markdown
2. Enable GitHub Pages in repository settings
3. Students receive live URL: `https://[username].github.io/[repo-name]/`

### Privacy Considerations
- Run **private** repositories during the course
- After course ends, help students convert to **public** for professional portfolio
- Note: No bulk "make public" feature — must be done per-repository

### Gallery Creation
- Maintain simple index page with links to all student project URLs
- Use organization profile page to pin exemplary projects
- Commit history provides natural documentation of learning progression

---

## Known Limitations

| Limitation | Workaround |
|------------|------------|
| No grade passback to LMS | Manual CSV export/import |
| No plagiarism detection | Use external tools if needed |
| No rubric system beyond autograding | Document rubrics separately |
| No automatic late penalties | Track manually |
| Anyone with link can accept assignment | Share links carefully |
| Students can close Feedback PR accidentally | Educate students, can reopen |

---

## Integration Capabilities

### Native Integrations
- **GitHub Codespaces:** Primary IDE integration
- **VS Code:** Standard Git clone workflows locally
- **GitHub CLI (`gh-classroom`):** Bulk operations from command line

### No Native Integration (Requires Workarounds)
- Slack (use webhooks)
- Miro (manual linking)
- LMS grade sync (CSV export/import)

---

## Quick Setup Checklist

### Before Course
- [ ] Verify GitHub Education benefits active
- [ ] Create master organization with templates
- [ ] Create cohort organization
- [ ] Link GitHub Classroom to cohort org
- [ ] Create assignment with Codespaces enabled
- [ ] Add TAs to cohort org
- [ ] Generate and test assignment invitation link
- [ ] Prepare pre-course onboarding assignment

### During Course
- [ ] Monitor assignment acceptance
- [ ] Provide feedback via pull requests
- [ ] Push template updates if needed (creates PRs in all student repos)
- [ ] Track commit activity for engagement

### After Course
- [ ] Export grades
- [ ] Archive cohort organization
- [ ] Document lessons learned
- [ ] Update master templates based on feedback

---

## References

- [GitHub Classroom Documentation](https://docs.github.com/en/education/manage-coursework-with-github-classroom)
- [GitHub Education Benefits](https://education.github.com/teachers)
- [Codespaces with Classroom](https://docs.github.com/en/education/manage-coursework-with-github-classroom/integrate-github-classroom-with-an-ide/using-github-codespaces-with-github-classroom)
- [Using GitHub Classroom to Teach Statistics (Journal of Statistics Education)](https://www.tandfonline.com/doi/full/10.1080/10691898.2019.1617089)
