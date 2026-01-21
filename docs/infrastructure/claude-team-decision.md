# Claude Team Infrastructure Decision
## Health Design Sprint: February 2026 Cohort

**Decision Date:** January 21, 2025
**Decision Owner:** Matt Trowbridge
**Status:** Approved - Ready for Implementation

---

## Executive Summary

After researching deployment options for Claude Code in small educational settings, we've decided to provision a **Claude Team Standard plan** for the February 2026 Health Design Sprint cohort. This decision was driven by the critical finding that UVA Education accounts do NOT include Claude Code access, making Team plan the only viable path for giving students terminal-based agentic coding capabilities.

---

## Key Research Findings

### 1. January 2026 Pricing Change (Critical)

As of January 15, 2026, Anthropic includes Claude Code with **all** Team plan seats—not just Premium seats. This represents an 80-83% cost reduction compared to previous Premium seat requirements ($25-30/seat vs. $150/seat).

**Source:** Anthropic announcement, confirmed via LinkedIn and Reddit discussions.

### 2. UVA Student Access Gap

- UVA students can obtain Claude Education accounts
- Education accounts do **NOT** include Claude Code
- Team plan is therefore **necessary**, not optional, for course objectives

### 3. Team Standard Features Relevant to Course

| Feature | Benefit for HDS |
|---------|-----------------|
| Claude Code access | Students can do terminal-based "vibe coding" |
| 2-4x Pro usage limits | Handles intensive Sprint Day sessions |
| Shared Projects | Cohort-wide knowledge base and collaboration |
| Project Instructions | Course-specific prompting guidelines |
| Domain capture | Easy onboarding with @virginia.edu |
| Admin controls | Usage monitoring for assessment |
| Extra usage option | API-rate backstop if limits hit |

### 4. What Team Plan Does NOT Include

| Need | Solution |
|------|----------|
| Gamma API | Use existing Gamma Pro subscription (Trowbridge) |
| Vapi voice agents | Provision Anthropic Console API credits separately |
| Custom API integrations | Console API credits as needed |

### 5. Usage Limit Considerations

- Team Standard: ~2-4x Pro limits per user
- Limits are per-seat (not pooled across team)
- 5-hour session resets + weekly caps
- "Extra usage" available at API rates if needed
- Recommendation: Enable extra usage with per-user spend caps ($10-20)

---

## Final Configuration

| Parameter | Value |
|-----------|-------|
| **Plan Type** | Claude Team Standard |
| **Billing** | Monthly ($30/seat) |
| **Total Seats** | 8 |
| **Allocation** | 7 students + 1 instructor |
| **Monthly Cost** | $240 |
| **Course Duration** | 2 weeks (Feb 16-27, 2026) |
| **Total Budget** | ~$240-480 (1-2 months) |
| **Owner Email** | mtrowbridge@virginia.edu |
| **Domain Capture** | virginia.edu |

---

## Implementation Steps

See [Facilitator Setup Checklist](../../resources/facilitator-setup-checklist.md) for actionable pre-course tasks.

### Pre-Course Setup Summary

1. Create Claude Team account at claude.ai/team
2. Enable domain capture for virginia.edu
3. Create Anthropic Console account (API backup)
4. Configure Team structure and shared projects
5. Test Claude Code authentication

### Student Onboarding (Day 1)

1. Send Team invitation to enrolled students
2. Provide Claude Code installation instructions
3. Verify each student can authenticate with Team account
4. Walk through shared project structure

---

## API Supplement Strategy

### Gamma Integration
- **Access:** Trowbridge's existing Gamma Pro subscription
- **Method:** Provide API token for course experimentation
- **Use cases:** Automated slide generation from design briefs

### Vapi Voice Agents
- **Access:** Anthropic Console API credits
- **Budget:** $50-100 allocated
- **Use cases:** Daily check-in voice agent prototype

### Student Experimentation
- **Access:** Shared API key with monitoring
- **Budget:** $50-100 allocated
- **Caps:** $10-20 per student to prevent runaway costs
- **Philosophy:** "Would be awesome if students actually stress the account"

---

## Open Items / Dependencies

### Deferred to Course Plan Finalization

1. **Custom Project Instructions for Claude Team**
   - Write team-level and project-level instructions
   - Integrate design thinking methodology
   - Reference Knowledge-Skills-Mindset framework
   - Include evaluation rubric alignment
   - *Timing:* After workflow phases finalized

2. **Project Knowledge Base Content**
   - Upload course materials
   - Add design frameworks (IDEO, Stanford d.school)
   - Include rubrics and evaluation criteria
   - *Timing:* After course content finalized

3. **CLAUDE.md Integration**
   - Determine if/how Team project instructions relate to repo CLAUDE.md
   - Consider whether students work in shared repo or individual forks
   - *Timing:* During infrastructure planning phase

---

## Cost-Benefit Summary

### Investment
- Team Plan: $240/month x 1-2 months = $240-480
- API Credits: $100-200 (likely won't use all)
- **Total: ~$340-680**

### Returns
- Enables core course objective (Claude Code for all students)
- Admin visibility for assessment
- Shared knowledge compounds across cohort
- Reusable infrastructure for future cohorts
- Publishable case study on AI in medical education

### Alternative Considered: Individual Pro Accounts
- Would cost $160/month (8 x $20)
- But students can't get Pro—only Education accounts
- And Education accounts lack Claude Code
- Therefore: Not viable

---

## Documentation Trail

This decision was researched and documented in:
- Claude.ai chat session (January 21, 2025)
- Parallel Perplexity research review
- Cross-referenced with Anthropic official documentation

Key sources consulted:
- Anthropic Team plan documentation
- Claude Code Help Center articles
- Reddit r/ClaudeAI and r/ClaudeCode discussions
- LinkedIn educator testimonials
- January 2026 pricing announcement

---

## Approval

**Decision:** Proceed with Claude Team Standard (8 seats, monthly billing)

**Rationale:** Only viable option for giving students Claude Code access; cost reasonable for pilot; infrastructure supports course pedagogy.

**Next Action:** Create Team account and configure before February 2026 cohort.
