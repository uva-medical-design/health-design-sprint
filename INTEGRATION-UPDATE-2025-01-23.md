# Integration Update: 2025-01-23

## Decisions Made

### Team Formation & Challenge Selection
- **Student-generated challenges**: Students pitch challenge areas during Monday pre-course call and/or Day 1
- **Team formation by interest**: Form teams around shared interests rather than assigned challenges
- **Scope guardrails**: Faculty guides scope during design brief phase (data access, user availability, HIPAA considerations)

### Scoping Tool (NEW - Priority)
Build an agent-based tool to help students refine challenge ideas into well-scoped design briefs.

**Requirements:**
- Help students narrow broad interests into actionable "How Might We" statements
- Screen for feasibility: data access, user access, regulatory constraints
- Guide through Liedtka's scoping framework from "Designing for Growth"
- Output: Draft design brief ready for faculty review

**Implementation options (evaluate):**
1. Vapi voice agent (conversational scoping)
2. Claude-powered smart form (structured intake)
3. Custom GPT (shareable, lower setup)
4. Combination: form intake → voice follow-up

**Training source:** 
- "Designing for Growth" (Liedtka) - digital copy available
- Extract scoping methodology, question sequences, red flags

### GitHub Infrastructure (Completed Today)
- ✅ Repo made public with CC BY-NC 4.0 license
- ✅ GitHub Pages live: https://uva-medical-design.github.io/health-design-sprint/
- ✅ Favicon: chevron diamond
- ✅ Social preview image: dark mode with `<mdp>` branding
- ✅ Org avatar: chevron diamond
- ✅ Discussions enabled
- ✅ Welcome page deployed with MDP design system

### Student Communication
- ✅ Pre-course email sent with calendar invite for Monday 1/26 at 5pm
- Students responding with campus location, device info, challenge interests
- One student interested in psychiatry — validates student-generated approach

## Next Steps for Claude Code

### Immediate (before Monday call)
1. Review `curriculum/` folder for alignment with student-generated approach
2. Prepare Day 1 schedule to include challenge pitching session

### This Week
3. Prototype scoping tool MVP (start with structured prompt/form)
4. Extract scoping framework from Liedtka into reusable prompt
5. Update design brief template to reflect scoping guardrails

### Before Course (Feb 16)
6. Test scoping tool with sample challenges
7. Finalize team formation process
8. Integrate scoping tool into Day 1-2 workflow

## Files to Reference
- `/curriculum/` - course structure
- `/docs/course-philosophy.md` - six-month window thesis
- `/voice-agent/` - Vapi system prompts (potential scoping agent home)
- `/templates/` - design brief template (needs scope criteria)

## Resource Needed
- Digital copy of "Designing for Growth" (Liedtka) for scoping methodology extraction
