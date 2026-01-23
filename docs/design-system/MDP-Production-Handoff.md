# MDP Design System: Production Handoff

**Date:** January 23, 2026  
**Status:** Ready for Claude Code Integration  
**Version:** 2.0

---

## Summary of This Session

We finalized the MDP Design System with:
- ✅ Callout icon system (`> ! + * ~ /`)
- ✅ Email signature (warm tint pill)
- ✅ Dark badge logo variant
- ✅ Sub-branding framework (3 tiers)
- ✅ Mobile responsiveness specs
- ✅ External tool integration section
- ✅ Nano Banana research and architecture

---

## Files to Commit to GitHub

| File | Purpose | Action |
|------|---------|--------|
| `MDP-Design-System-Specification-v2.md` | Authoritative design system (28 sections) | Commit to repo |
| `mdp-subbrand-framework-final.html` | Visual reference for sub-branding | Commit as reference |

---

## Immediate Next Steps (Priority Order)

### 1. Commit Design System to GitHub Repo

```bash
# In health-design-sprint repo
mkdir -p docs/design-system
cp MDP-Design-System-Specification-v2.md docs/design-system/
git add docs/design-system/
git commit -m "Add MDP Design System v2.0 - complete specification"
git push
```

### 2. Set Up Gemini API for Nano Banana

**Step A: Get API Key (if not done)**
1. Go to https://aistudio.google.com/
2. Click "Get API Key" → "Create API Key"
3. Copy the key (starts with `AIza...`)

**Step B: Store API Key**
Add to your environment (choose one method):

```bash
# Option 1: Export in shell profile (~/.zshrc or ~/.bashrc)
export GEMINI_API_KEY="AIza_YOUR_KEY_HERE"

# Option 2: Add to Claude Code settings directly (see below)
```

**Step C: Install Python SDK**
```bash
pip install google-genai
```

### 3. Configure Claude Code MCP

Add Gemini image generation to Claude Code:

```bash
# Add via CLI (recommended approach)
claude mcp add mcp-image \
  --env GEMINI_API_KEY=$GEMINI_API_KEY \
  --env IMAGE_OUTPUT_DIR=~/Projects/health-design-sprint/assets/generated \
  -- npx -y mcp-image
```

Or edit `~/.claude.json` manually:

```json
{
  "mcpServers": {
    "mcp-image": {
      "command": "npx",
      "args": ["-y", "mcp-image"],
      "env": {
        "GEMINI_API_KEY": "YOUR_KEY_HERE",
        "IMAGE_OUTPUT_DIR": "/Users/matt/Projects/health-design-sprint/assets/generated"
      }
    }
  }
}
```

### 4. Configure Claude Desktop MCP (Same Server)

Edit `~/Library/Application Support/Claude/claude_desktop_config.json`:

```json
{
  "mcpServers": {
    "mcp-image": {
      "command": "npx",
      "args": ["-y", "mcp-image"],
      "env": {
        "GEMINI_API_KEY": "YOUR_KEY_HERE",
        "IMAGE_OUTPUT_DIR": "/Users/matt/Projects/health-design-sprint/assets/generated"
      }
    }
  }
}
```

**Note:** Restart Claude Desktop after editing.

### 5. Test Image Generation

After setup, test in Claude Desktop or Code:

```
Generate a test infographic using the mcp-image tool.
Create a simple diagram showing "3 phases of design thinking" 
with terracotta (#E07A5F) accents on a cream (#FAF7F2) background.
Output as 16:9 aspect ratio.
```

---

## Recommended Architecture

Based on research, here's the simplest path forward:

| Environment | Method | Why |
|-------------|--------|-----|
| Claude Desktop | **mcp-image MCP** | Interactive use, quick generation |
| Claude Code | **mcp-image MCP** | Consistency across environments |
| Automated scripts | **Direct Python API** | More control for batch workflows |

**Start with MCP for both**, then add direct Python scripts as needed for complex automation.

---

## Project File Structure (Proposed)

```
health-design-sprint/
├── docs/
│   └── design-system/
│       ├── MDP-Design-System-Specification-v2.md  # Full spec
│       ├── quick-reference.md                      # 1-page summary
│       └── prompt-templates/                       # For external tools
│           ├── infographic.md
│           ├── hero-image.md
│           └── slide-deck.md
├── assets/
│   ├── generated/                                  # Nano Banana outputs
│   ├── logos/                                      # MDP logo variants
│   └── templates/                                  # Slide/document templates
├── scripts/
│   └── gemini_image.py                            # Direct API script (optional)
└── sessions/
    ├── day-01/
    ├── day-02/
    └── ...
```

---

## Design System Integration Points

### For Claude Code Workflows

When generating course content, Claude should:

1. **Reference the design system** at `docs/design-system/MDP-Design-System-Specification-v2.md`
2. **Use prompt templates** from Section 27 for external tool calls
3. **Save generated assets** to `assets/generated/` with naming convention: `{day}-{session}-{description}.png`
4. **Log assets** to course log (TBD format)

### For Nano Banana Prompts

Always include in image prompts:
- Color palette: `#E07A5F` (warm), `#3D5A6C` (cool), `#1A1A1A` (dark), `#FAF7F2` (light)
- Typography feel: "Clean monospace for headers, sans-serif for body"
- Style: "Minimalist, professional, healthcare/design aesthetic"
- Avoid: "3D effects, busy gradients, stock photo clichés"

---

## Session Run Sheet (Template for Manual Triggers)

For each session checkpoint, run:

```bash
# Morning session end (example)
claude "
Using the MDP design system at docs/design-system/:
1. Review today's session notes in sessions/day-XX/
2. Generate summary infographic for afternoon preview
3. Update any slides that need content refresh
4. Log generated assets to course log
"
```

---

## Outstanding Items for Future Sessions

| Item | Priority | Notes |
|------|----------|-------|
| Create quick-reference 1-pager | High | Condensed design system for fast reference |
| Build prompt template library | High | Pre-written prompts for common outputs |
| Student presentation Gamma template | Medium | Auto-generation from deliverables |
| Voice agent check-in scripts | Medium | Vapi integration for daily check-ins |
| Automated batch script | Low | Scheduled content generation |

---

## Verification Checklist

Before considering production-ready:

- [ ] Design system committed to GitHub
- [ ] Gemini API key obtained and stored
- [ ] mcp-image configured in Claude Code
- [ ] mcp-image configured in Claude Desktop
- [ ] Test image generated successfully
- [ ] Output directory created and writable
- [ ] Quick reference card created (next session)

---

## Contact Points

- **Design System Questions:** Reference `MDP-Design-System-Specification-v2.md`
- **Nano Banana Issues:** Check API key, rate limits, `v1beta` endpoint
- **MCP Issues:** Restart Claude after config changes, check `npx` availability

---

*Ready for production. Next session: Test integration end-to-end and create quick reference card.*
