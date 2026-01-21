# Windows Setup Guide
## Health Design Sprint: Pre-Course Installation

**Time required:** 25-35 minutes

---

## Prerequisites

- Windows 10 (version 1903 or later) or Windows 11
- Admin access to install software
- Your @virginia.edu email address
- Claude Team invitation (check your email)

---

## Step 1: Install Windows Terminal (Recommended)

Windows Terminal provides a better experience than the default Command Prompt.

### Instructions

1. Open **Microsoft Store** (search for it in Start menu)
2. Search for "Windows Terminal"
3. Click **Get** or **Install**
4. Once installed, pin it to your taskbar for easy access

### Alternative

If you prefer, you can use **PowerShell** directly (pre-installed on Windows 10/11). Search for "PowerShell" in the Start menu.

---

## Step 2: Install Claude Desktop

Claude Desktop provides the conversational AI interface you'll use throughout the course.

### Instructions

1. Open your web browser
2. Go to: https://claude.ai/download
3. Click **Download for Windows**
4. Run the downloaded `.exe` installer
5. Follow the installation prompts
6. Open Claude from the Start menu
7. Sign in with your **@virginia.edu email**
   - Important: Use the email that received the Team invitation

### Verify Installation

- Claude Desktop opens without errors
- You see the chat interface
- Your account shows "Team" plan (not "Free")

<!-- Screenshot placeholder: Claude Desktop main interface on Windows -->

---

## Step 3: Install Node.js

Node.js is required to install Claude Code. Don't worry—you won't need to write JavaScript!

### Instructions

1. Go to: https://nodejs.org/
2. Download the **LTS** version (left button, labeled "Recommended for most users")
3. Run the downloaded `.msi` installer
4. Follow the installer prompts:
   - Accept the license agreement
   - Use default installation location
   - **Important:** Check the box for "Automatically install necessary tools" if prompted
5. Complete the installation

### Verify Installation

Open **Windows Terminal** or **PowerShell**

Type this command and press Enter:
```powershell
node --version
```

**Expected output:** Something like `v20.x.x` or `v22.x.x`

If you see an error, close and reopen your terminal, then try again.

---

## Step 4: Install Claude Code

Claude Code is the terminal-based AI coding assistant that makes "vibe coding" possible.

### Instructions

In Windows Terminal or PowerShell, type this command and press Enter:
```powershell
npm install -g @anthropic-ai/claude-code
```

Wait for the installation to complete (may take 1-2 minutes).

### Verify Installation

```powershell
claude --version
```

**Expected output:** Version number like `1.x.x`

---

## Step 5: Authenticate Claude Code

Connect Claude Code to your Team account.

### Instructions

In your terminal, type:
```powershell
claude
```

This will:
1. Open a browser window for authentication
2. Ask you to sign in with your @virginia.edu email
3. Grant permissions to Claude Code

After authentication, you'll return to your terminal with Claude Code ready.

### Verify Authentication

Type a simple prompt to test:
```
hello, confirm you can see my Team account
```

Claude should respond and confirm Team access.

Type `/exit` to close Claude Code for now.

---

## Step 6: Install GitHub CLI

GitHub CLI lets you interact with repositories from the command line.

### Instructions

1. Go to: https://cli.github.com/
2. Click **Download for Windows**
3. Run the downloaded `.msi` installer
4. Follow the installation prompts (accept defaults)

### Verify Installation

Close and reopen your terminal, then:
```powershell
gh --version
```

**Expected output:** Version number like `gh version 2.x.x`

---

## Step 7: Create GitHub Account and Authenticate

### Create Account (if you don't have one)

1. Go to: https://github.com/
2. Click **Sign up**
3. Use your @virginia.edu email
4. Choose a professional username

### Authenticate GitHub CLI

In your terminal:
```powershell
gh auth login
```

When prompted:
1. Select: **GitHub.com**
2. Select: **HTTPS**
3. Select: **Login with a web browser**
4. Press Enter, then copy the code shown
5. Complete authentication in browser

### Verify Authentication

```powershell
gh auth status
```

**Expected output:** Shows you're logged in to github.com

---

## Step 8: Run Verification Checklist

Complete the [Verification Checklist](verify-setup.md) to confirm everything is working.

---

## Troubleshooting

### "npm is not recognized" error

1. Close your terminal completely
2. Open a **new** terminal window
3. Try the npm command again

If still not working:
1. Open Start menu, search for "Environment Variables"
2. Click "Edit the system environment variables"
3. Click "Environment Variables" button
4. Under "System variables," find "Path"
5. Verify it includes: `C:\Program Files\nodejs\`

### PowerShell execution policy error

If you see "running scripts is disabled on this system":
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```
Type `Y` to confirm, then try again.

### Claude Code authentication fails

1. Make sure you accepted the Team invitation email
2. Sign out of claude.ai in browser, then sign back in with @virginia.edu
3. Try `claude` command again

### Permission errors during npm install

Try running PowerShell as Administrator:
1. Search for "PowerShell" in Start menu
2. Right-click and select "Run as administrator"
3. Try the npm install command again

---

## Need Help?

If you're stuck after trying the troubleshooting steps:
1. Note the exact error message
2. Take a screenshot if possible
3. Note which step you're on
4. Email the course team with this information

We'll respond before Day 1 or help you during the setup session.
