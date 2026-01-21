# Setup Verification Checklist
## Confirm Your Environment is Ready

Run through this checklist after completing the setup guide for your operating system.

---

## Quick Verification Commands

Open your terminal (Terminal on Mac, Windows Terminal or PowerShell on Windows) and run each command. Check off each item that shows the expected output.

### 1. Node.js
```bash
node --version
```
- [ ] Shows version 18.x.x or higher

### 2. npm (comes with Node.js)
```bash
npm --version
```
- [ ] Shows version 9.x.x or higher

### 3. Claude Code
```bash
claude --version
```
- [ ] Shows version number (any version)

### 4. GitHub CLI
```bash
gh --version
```
- [ ] Shows version 2.x.x or higher

### 5. GitHub Authentication
```bash
gh auth status
```
- [ ] Shows "Logged in to github.com"

---

## Claude Code Authentication Test

This is the most important verification—confirming your Team account access.

### Steps

1. In your terminal, start Claude Code:
   ```bash
   claude
   ```

2. If prompted to authenticate, complete the browser sign-in with your @virginia.edu email

3. Once Claude Code is running, type this prompt:
   ```
   What account am I using? Am I on a Team plan?
   ```

4. Verify the response confirms:
   - [ ] You're signed in with your @virginia.edu email
   - [ ] You have Team plan access

5. Exit Claude Code:
   ```
   /exit
   ```

---

## Claude Desktop Verification

1. Open Claude Desktop from your Applications (Mac) or Start menu (Windows)

2. Verify you can:
   - [ ] See the chat interface
   - [ ] Start a new conversation
   - [ ] See "Team" indicated in your account (not "Free")

3. Optional: Start a test conversation to confirm it's working

---

## All Systems Go Checklist

**Complete this summary before Day 1:**

| Component | Status |
|-----------|--------|
| Node.js installed | [ ] Yes |
| Claude Code installed | [ ] Yes |
| Claude Code authenticated with Team account | [ ] Yes |
| GitHub CLI installed | [ ] Yes |
| GitHub CLI authenticated | [ ] Yes |
| Claude Desktop installed | [ ] Yes |
| Claude Desktop signed in to Team account | [ ] Yes |

---

## Reporting Your Status

### If Everything Works

Reply to the pre-course email with:
> "Setup complete. All verification checks passed."

### If Something Doesn't Work

Reply to the pre-course email with:
1. Which check(s) failed
2. The exact error message you see
3. What troubleshooting you tried

We'll help resolve any issues before Day 1.

---

## What's Next?

Once your setup is verified:

1. **Explore Claude Desktop** - Try having a conversation about a topic you're curious about
2. **Skim the course materials** - Review the [Course Workflow](../../curriculum/COURSE_WORKFLOW.md) to see what's ahead
3. **Get excited** - You're about to learn how to build things you couldn't build before!

See you on Day 1!

---

## Quick Reference: Key Commands

| Task | Command |
|------|---------|
| Start Claude Code | `claude` |
| Exit Claude Code | `/exit` |
| Check Claude Code version | `claude --version` |
| Check GitHub login status | `gh auth status` |
| Login to GitHub | `gh auth login` |
