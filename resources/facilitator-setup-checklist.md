# Facilitator Setup Checklist
## Health Design Sprint: February 2026 Cohort

**Last Updated:** January 21, 2025
**Course Start:** February 16, 2026

---

## Pre-Course Infrastructure Setup

Complete these tasks **before February 16, 2026**.

### Claude Team Account Setup

- [ ] **Create Claude Team account** at claude.ai/team
  - Use mtrowbridge@virginia.edu as Primary Owner
  - Select Team Standard plan
  - Purchase 8 seats (monthly billing)
  - Expected cost: $240/month

- [ ] **Enable domain capture** for virginia.edu
  - Allows students to self-join with @virginia.edu email
  - Test with a non-owner UVA account to verify

- [ ] **Configure Team structure**
  ```
  Team: UVA Medical Design (or similar)
  └── Project: Health Design Sprint Feb 2026
      ├── Instructions: [See deferred items]
      ├── Knowledge: Course materials, frameworks, rubrics
      └── [Student conversations visible to admin]
  ```

- [ ] **Test Claude Code authentication**
  - Verify Team subscription flows through to terminal
  - Document any ANTHROPIC_API_KEY conflicts
  - Test on both macOS and Windows if students use both

### Anthropic Console (API Backup)

- [ ] **Create Anthropic Console account**
  - Link to mtrowbridge@virginia.edu
  - Add $100-150 in credits
  - Set organization-level spending cap

- [ ] **Configure API access for course**
  - Create API key for Vapi integration
  - Set per-key rate limits if available
  - Document key rotation procedure

### Other Tool Access

- [ ] **Gamma Pro** - Verify Trowbridge subscription active
- [ ] **NotebookLM** - Confirm Google account access for all participants
- [ ] **Replit** - Create course organization/team if using paid tier
- [ ] **Otter.ai / transcription** - Verify access for interview recording

---

## Day 1 Student Onboarding Preparation

### Pre-Day 1 (Send 48 hours before)

- [ ] **Email students with pre-work:**
  - Accept Claude Team invitation (sent via domain capture or direct invite)
  - Install Claude Code CLI (provide instructions)
  - Verify they can run `claude` in terminal
  - Create Replit account (free tier OK)

### Day 1 Checklist

- [ ] **Verify each student has:**
  - Claude Team account active
  - Claude Code working in terminal
  - Access to shared Team project
  - Replit account created

- [ ] **Troubleshooting station:**
  - Have backup invitation links ready
  - Document common installation issues
  - Have API key fallback for Claude Code if Team auth fails

---

## Deferred Items (Complete After Course Plan Finalized)

### Custom Project Instructions for Claude Team Account

*Timing: After COURSE_WORKFLOW.md finalized*

- [ ] Write team-level default instructions
- [ ] Write project-level instructions for "Health Design Sprint Feb 2026"
- [ ] Integrate design thinking methodology prompts
- [ ] Reference Knowledge-Skills-Mindset framework
- [ ] Include evaluation rubric alignment
- [ ] Test with sample student scenarios

### Project Knowledge Base Content

*Timing: After course content finalized*

- [ ] Upload course syllabus and schedules
- [ ] Add design frameworks (IDEO, Stanford d.school)
- [ ] Include evaluation rubrics
- [ ] Add reference materials from /resources/

### CLAUDE.md Integration

*Timing: During infrastructure planning phase*

- [ ] Decide: shared repo vs. individual forks
- [ ] Determine relationship between Team project instructions and repo CLAUDE.md
- [ ] Update CLAUDE.md if needed to reference Team project

---

## Budget Tracking

| Item | Budgeted | Actual | Notes |
|------|----------|--------|-------|
| Claude Team (Month 1) | $240 | | |
| Claude Team (Month 2) | $240 | | If needed |
| Anthropic API Credits | $150 | | |
| **Total** | **$630** | | |

---

## Contacts

| Role | Name | Email |
|------|------|-------|
| Course Owner | Matt Trowbridge | mtrowbridge@virginia.edu |
| UVA Charlottesville Facilitator | TBD | |
| Inova Campus Facilitator | TBD | |
| Technical Support | TBD | |

---

## Related Documents

- [Claude Team Infrastructure Decision](../docs/infrastructure/claude-team-decision.md)
- [Daily Schedule](../curriculum/DAILY_SCHEDULE.md)
- [Course Workflow](../curriculum/COURSE_WORKFLOW.md)
