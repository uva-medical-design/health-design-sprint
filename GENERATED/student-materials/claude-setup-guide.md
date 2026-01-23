# Claude Pro Setup Guide

## Overview

You already have Claude Pro access through UVA. This guide covers:
1. Accessing Claude Chat (web interface)
2. Setting up Claude Code (terminal tool)
3. When to use which

---

## 1. Claude Chat (Web Interface)

### Access
Go to [claude.ai](https://claude.ai) and sign in with your UVA credentials.

### Key Features

**Projects** - Organize conversations by topic
- Create a project for each major task (e.g., "Design Brief Research")
- Add files to project knowledge for persistent context
- All conversations in a project share that knowledge

**Artifacts** - Interactive outputs
- Code, documents, diagrams that appear in a side panel
- Can be edited, copied, or downloaded
- Great for iterating on a single document

**File Upload** - Add context directly
- Drag PDFs, images, code files into the chat
- Claude can analyze and reference them
- Useful for: research papers, screenshots, interview transcripts

### When to Use Claude Chat
- **Thinking through problems** - brainstorming, exploring ideas
- **Research synthesis** - analyzing documents, finding patterns
- **Writing drafts** - documents, emails, presentations
- **Quick questions** - explanations, definitions, comparisons
- **Visual outputs** - when you want to see/edit artifacts

---

## 2. Claude Code (Terminal)

### What Is It?
Claude Code is a command-line tool that lets Claude read, write, and edit files directly on your computer. It's like having a coding partner who can actually touch your files.

### Installation

**Mac (Terminal):**
```bash
npm install -g @anthropic-ai/claude-code
```

**First Run:**
```bash
claude
```
You'll be prompted to authenticate with your Anthropic account.

### Key Concepts

**CLAUDE.md** - Project instructions
- Create a file called `CLAUDE.md` in your project root
- Contains context Claude should know about your project
- Claude reads this automatically when you start a session
- Example: project goals, file structure, coding conventions

**Working Directory**
- Always start Claude Code from your project folder
- `cd ~/Projects/my-project && claude`
- Claude can see and modify files in this directory

### Basic Commands
Once Claude Code is running:
- Just type what you want to do in plain English
- "Create a new file called notes.md with today's meeting notes"
- "Read the schedule.yaml and summarize the Day 3 activities"
- "Fix the typo in README.md"

### When to Use Claude Code
- **Building things** - code, scripts, structured files
- **File operations** - creating, editing, organizing files
- **Project work** - when you need persistent file changes
- **GitHub workflows** - commits, branches, pushing changes
- **Multi-file tasks** - coordinated changes across files

---

## 3. Chat vs Code: Quick Reference

| Task | Use Chat | Use Code |
|------|----------|----------|
| Brainstorm project ideas | ✓ | |
| Write a design brief draft | ✓ | |
| Create the actual design brief file | | ✓ |
| Research a topic | ✓ | |
| Build a prototype | | ✓ |
| Get feedback on writing | ✓ | |
| Commit changes to GitHub | | ✓ |
| Analyze interview transcripts | ✓ | |
| Generate multiple related files | | ✓ |

### Mental Model
- **Chat** = thinking partner (conversation, exploration)
- **Code** = building partner (files, projects, execution)

Many workflows use both:
1. Chat to think through the approach
2. Code to build the thing
3. Chat to review and iterate

---

## 4. Tips for Effective Use

### Be Specific
Instead of: "Help me with my project"
Try: "I'm designing a tool for medical students to track their procedures. What questions should I ask in user interviews?"

### Provide Context
- Share relevant files or paste key information
- Explain what you've already tried
- State your constraints (time, scope, technical limits)

### Iterate
- First responses are starting points, not final answers
- Say "make it shorter" or "focus more on X"
- Ask "what am I missing?" or "what could go wrong?"

### Use Projects (Chat)
- Keep related conversations together
- Upload key documents to project knowledge
- Reduces repetition across sessions

### Use CLAUDE.md (Code)
- Write clear project context
- Update as your project evolves
- Include file structure and naming conventions

---

## 5. Privacy & Data

- Conversations may be used to improve Claude (you can opt out in settings)
- Don't share patient data, even de-identified
- Don't share credentials or API keys
- Interview transcripts: get consent, consider anonymizing

---

## Need Help?

- Claude itself is great at explaining its own features
- Ask: "How do I use projects effectively?" or "What can artifacts do?"
- Course Slack/Discord for peer support
- Matt for technical blockers

---

*Welcome to the course! Claude is a tool—the thinking is still yours.*
