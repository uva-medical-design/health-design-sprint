# MCP Demystified: How Tools Talk to Each Other

*Optional reading for curious students*

---

## The Big Picture

Modern AI workflows involve multiple tools working together:
- Claude analyzes your research
- GitHub stores your files
- Zoom records your meetings
- Notion holds your notes

**The question:** How do you get them to talk to each other?

**The answer:** Connectors, APIs, and protocols—which are all just different words for "ways tools communicate."

---

## Mental Model: The Restaurant Analogy

Imagine a restaurant:

- **You** (the customer) = You, the user
- **Waiter** = The interface (Claude Chat, a website, an app)
- **Kitchen** = The service doing the actual work (Claude's AI, GitHub's storage)
- **Order pad** = The API (a standardized way to make requests)

When you order food:
1. You tell the waiter what you want (natural language)
2. Waiter writes it in a format the kitchen understands (API call)
3. Kitchen makes the food (processing)
4. Waiter brings it back (response)

**APIs are just standardized order pads.**

Every tool has its own "menu" of what it can do and how to ask for it.

---

## What is MCP?

**MCP = Model Context Protocol**

It's a standard way for AI models (like Claude) to connect with external tools and data sources. Think of it as a universal adapter.

Without MCP: Each tool needs custom integration code.
With MCP: Tools speak a common language.

### MCP Servers
An "MCP server" is a small program that:
1. Connects to some service (GitHub, a database, your file system)
2. Exposes that service's capabilities in a standard format
3. Lets Claude (or other AI) use those capabilities

**Example:** A GitHub MCP server lets Claude:
- Read files from your repos
- Create commits
- Open pull requests
- All through natural conversation

---

## Common Connector Types

### APIs (Application Programming Interfaces)
- The most common type
- One tool requests something, another responds
- Example: "Get me the weather in Charlottesville" → Weather API returns data

### Webhooks
- Automatic notifications when something happens
- "Hey, someone just pushed to the repo!"
- Used for triggers and automations

### MCP Servers
- Specifically for AI tool connections
- Wrap APIs in a format AI models understand
- Growing ecosystem of ready-made servers

### Zapier/Make/n8n
- Visual tools for connecting services
- "When X happens in Tool A, do Y in Tool B"
- No coding required

---

## Why This Matters for Design Sprints

You'll encounter integration questions like:

- "Can Claude read my Miro board?"
- "How do I get Zoom transcripts into my project?"
- "Can I automate the voice agent check-ins?"

The answer is almost always: **Yes, with the right connector.**

Your job isn't to build these connectors from scratch. It's to:
1. Know they exist
2. Find the right one (or close enough)
3. Get it working (with patience and iteration)

---

## The Debugging Mindset

When connections don't work (and they often don't at first):

### 1. Screenshots Are Your Friend
Take screenshots of:
- Error messages
- Settings screens
- What you're trying to do

Then show Claude: "Here's what I'm seeing. What's wrong?"

### 2. Check the Obvious First
- Is the service actually running?
- Are you logged in?
- Did you grant the right permissions?
- Is the API key correct?

### 3. Isolate the Problem
- Does the first tool work on its own?
- Does the second tool work on its own?
- Is it the connection between them?

### 4. Patience + Iteration
Integration problems are frustrating but solvable. The solution is usually:
- A setting you missed
- A permission you didn't grant
- A format that needs adjusting

---

## Practical Examples

### Example 1: Zoom → Claude Analysis
**Goal:** Analyze a meeting transcript with Claude

**Old way:**
1. Download transcript from Zoom
2. Copy-paste into Claude Chat
3. Ask questions

**Better way:**
1. Zoom auto-saves transcripts to a folder
2. Claude Code reads directly from that folder
3. Analysis happens in context of your project

### Example 2: GitHub + Claude Code
**Goal:** Claude helps you write code and commits it

**How it works:**
1. Claude Code has built-in Git integration
2. You say "commit these changes with message X"
3. Claude runs the Git commands
4. Changes appear in GitHub

No special setup—just works.

### Example 3: Voice Agent → Dashboard
**Goal:** See themes from all student check-ins

**How it works:**
1. Vapi records conversations
2. Transcripts stored in structured format
3. Claude analyzes transcripts, extracts themes
4. Summary displayed for instructor

This is what Matt built for the course.

---

## What You Don't Need to Know

For this course, you don't need to:
- Write API code from scratch
- Understand HTTP protocols
- Set up servers
- Debug authentication flows

You just need to:
- Know that connections are possible
- Ask Claude for help setting them up
- Be patient when things don't work immediately

---

## Going Deeper (Optional)

If you want to explore:

**MCP Documentation**
- [Official MCP docs](https://modelcontextprotocol.io)
- Growing list of available servers

**Claude Code Integrations**
- GitHub, file system, and web access built-in
- Ask Claude: "What integrations do you have access to?"

**No-Code Automation**
- Zapier, Make, n8n for visual workflows
- Great for "when X happens, do Y" automations

---

*The goal isn't to become an integration expert. It's to lose the fear that these things are impossibly complex. They're not—they're just new.*
