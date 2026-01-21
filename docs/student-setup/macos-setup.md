# macOS Setup Guide
## Health Design Sprint: Pre-Course Installation

**Time required:** 20-30 minutes

---

## Prerequisites

- macOS 10.15 (Catalina) or later
- Admin access to install software
- Your @virginia.edu email address
- Claude Team invitation (check your email)

---

## Step 1: Install Claude Desktop

Claude Desktop provides the conversational AI interface you'll use throughout the course.

### Instructions

1. Open Safari or Chrome
2. Go to: https://claude.ai/download
3. Click **Download for macOS**
4. Open the downloaded `.dmg` file
5. Drag Claude to your Applications folder
6. Open Claude from Applications
7. Sign in with your **@virginia.edu email**
   - Important: Use the email that received the Team invitation

### Verify Installation

- Claude Desktop opens without errors
- You see the chat interface
- Your account shows "Team" plan (not "Free")

<!-- Screenshot placeholder: Claude Desktop main interface -->

---

## Step 2: Install Node.js

Node.js is required to install Claude Code. Don't worry—you won't need to write JavaScript!

### Instructions

1. Go to: https://nodejs.org/
2. Download the **LTS** version (left button, labeled "Recommended for most users")
3. Open the downloaded `.pkg` file
4. Follow the installer prompts (accept defaults)

### Verify Installation

Open **Terminal** (search for "Terminal" in Spotlight, or find it in Applications → Utilities)

Type this command and press Enter:
```bash
node --version
```

**Expected output:** Something like `v20.x.x` or `v22.x.x`

If you see "command not found," close Terminal and reopen it, then try again.

---

## Step 3: Install Claude Code

Claude Code is the terminal-based AI coding assistant that makes "vibe coding" possible.

### Instructions

In Terminal, type this command and press Enter:
```bash
npm install -g @anthropic-ai/claude-code
```

Wait for the installation to complete (may take 1-2 minutes).

### Verify Installation

```bash
claude --version
```

**Expected output:** Version number like `1.x.x`

---

## Step 4: Authenticate Claude Code

Connect Claude Code to your Team account.

### Instructions

In Terminal, type:
```bash
claude
```

This will:
1. Open a browser window for authentication
2. Ask you to sign in with your @virginia.edu email
3. Grant permissions to Claude Code

After authentication, you'll return to Terminal with Claude Code ready.

### Verify Authentication

Type a simple prompt to test:
```
hello, confirm you can see my Team account
```

Claude should respond and confirm Team access.

Type `/exit` to close Claude Code for now.

---

## Step 5: Install GitHub CLI

GitHub CLI lets you interact with repositories from the command line.

### Instructions

**Option A: Using Homebrew (if you have it)**
```bash
brew install gh
```

**Option B: Direct download (if you don't have Homebrew)**
1. Go to: https://cli.github.com/
2. Click **Download for macOS**
3. Open the downloaded `.pkg` file
4. Follow installer prompts

### Verify Installation

```bash
gh --version
```

**Expected output:** Version number like `gh version 2.x.x`

---

## Step 6: Create GitHub Account and Authenticate

### Create Account (if you don't have one)

1. Go to: https://github.com/
2. Click **Sign up**
3. Use your @virginia.edu email
4. Choose a professional username

### Authenticate GitHub CLI

In Terminal:
```bash
gh auth login
```

When prompted:
1. Select: **GitHub.com**
2. Select: **HTTPS**
3. Select: **Login with a web browser**
4. Press Enter, then copy the code shown
5. Complete authentication in browser

### Verify Authentication

```bash
gh auth status
```

**Expected output:** Shows you're logged in to github.com

---

## Step 7: Run Verification Checklist

Complete the [Verification Checklist](verify-setup.md) to confirm everything is working.

---

## Troubleshooting

### "Permission denied" during npm install

Try running with sudo:
```bash
sudo npm install -g @anthropic-ai/claude-code
```
Enter your Mac password when prompted.

### Claude Code authentication fails

1. Make sure you accepted the Team invitation email
2. Sign out of claude.ai in browser, then sign back in with @virginia.edu
3. Try `claude` command again

### "command not found" after installation

Close Terminal completely and reopen it. This refreshes your PATH.

### Node.js version too old

If `node --version` shows a version below 18:
1. Uninstall current Node.js
2. Download fresh LTS from nodejs.org
3. Reinstall

---

## Need Help?

If you're stuck after trying the troubleshooting steps:
1. Note the exact error message
2. Note which step you're on
3. Email the course team with this information

We'll respond before Day 1 or help you during the setup session.
