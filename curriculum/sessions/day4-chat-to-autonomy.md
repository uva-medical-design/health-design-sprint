# Day 4: Chat to Autonomy Workshop
## From Conversation Partner to Autonomous Agent

**Date:** February 19, 2026 (Thursday)
**Time:** 10:45 AM - 12:00 PM
**Format:** Virtual (recorded) + hands-on exercise
**Duration:** 75 minutes

---

## Learning Objectives

| Knowledge | Skills | Mindset |
|-----------|--------|---------|
| Understand the spectrum from chat to fully autonomous agents | Convert a chat-based workflow into an agent-ready specification | Think in systems, not conversations |
| Know the components of agent-ready specifications (PRDs) | Write measurable success criteria for AI tasks | Treat specifications as hypotheses to test |
| Recognize the "Ralph pattern" for delegation | Identify data requirements and failure modes | Embrace appropriate human oversight |

---

## Session Context

By Day 4, students have:
- Completed Problem Exploration and User Identification (Days 1-2)
- Conducted User Research interviews (Day 3)
- Begun Insight Synthesis (Day 4 morning)

This workshop bridges the "understand" phase and the "build" phase by introducing how to specify work for AI agents.

---

## Session Flow

### Part 1: The Spectrum of AI Assistance (15 min)

**Opening question:**
> "When you use Claude, how much do you stay in the loop versus let it run?"

**Introduce the spectrum:**

```
CHAT ←――――――――――――――――――――――――――――――――→ AGENT
Human decides      Human defines goal
every step         AI executes plan
```

**Five levels of AI assistance:**

| Level | Description | Example |
|-------|-------------|---------|
| 1. Chat | Human prompts, AI responds, human decides next | "Help me brainstorm interview questions" |
| 2. Guided | AI suggests next steps, human approves each | "Based on that, should I ask about X?" |
| 3. Supervised | AI executes multi-step plan, human reviews output | "Analyze these 5 transcripts and summarize themes" |
| 4. Autonomous | AI executes complex task, human reviews final result | "Build a prototype based on this PRD" |
| 5. Fully Autonomous | AI executes and iterates without human review | (Not recommended for most tasks) |

**Key insight:** Most productive work happens at levels 3-4. The skill is knowing when to use each level.

---

### Part 2: The Ralph Pattern (15 min)

**Introduce "Ralph":**
> Ralph is a new team member. Smart, capable, eager—but doesn't know your context. How do you delegate effectively to Ralph?

**The Ralph pattern for AI delegation:**

1. **Context** - What does Ralph need to know about the situation?
2. **Goal** - What does success look like? (Be specific!)
3. **Constraints** - What should Ralph NOT do?
4. **Resources** - What data/tools/access does Ralph have?
5. **Checkpoints** - When should Ralph check in vs. proceed autonomously?

**Exercise: Ralph-ify a task**

Take a task from your design sprint work:
> "Analyze our user research interviews"

Rewrite it using the Ralph pattern:
```
CONTEXT: We interviewed 5 patients about their medication management experience.
         Transcripts are attached. Our HMW question is "How might we help
         patients remember complex medication schedules?"

GOAL: Identify 3-5 themes that appear across multiple interviews. For each
      theme, provide 2-3 supporting quotes.

CONSTRAINTS: Don't make recommendations yet. Don't summarize individual
             interviews. Focus only on cross-cutting patterns.

RESOURCES: 5 interview transcripts (attached)

CHECKPOINT: After identifying themes, pause for my review before deeper analysis.
```

**Discussion:** How did adding structure change the likely output quality?

---

### Part 3: PRDs as Agent Specifications (20 min)

**Key insight:** A Product Requirements Document (PRD) isn't just for humans—it's a specification an AI agent can execute.

**Components of an agent-ready PRD:**

| Section | Human Purpose | Agent Purpose |
|---------|--------------|---------------|
| Problem Statement | Align team on "why" | Provide context for decisions |
| Success Criteria | Define "done" | Measurable pass/fail conditions |
| User Stories | Describe desired experience | Specific scenarios to implement |
| Data Requirements | Plan integrations | Know what's available to work with |
| Scope Boundaries | Prevent scope creep | Hard constraints on what NOT to build |
| Acceptance Tests | QA checklist | Verification the agent can run |

**The "agent-ready check" questions:**

For each section, ask:
1. Could an AI execute this without asking clarifying questions?
2. Is success measurable (not just "good" or "working")?
3. Are constraints explicit, not implied?
4. Is the required data/access specified?

**Example transformation:**

❌ **Vague:** "Build a medication reminder app"

✅ **Agent-ready:**
```
PROBLEM: Patients on 3+ daily medications miss doses 40% of the time.

SUCCESS CRITERIA:
- User can input medication name, dosage, and schedule
- App sends push notification at scheduled times
- User can mark dose as "taken" or "skipped"
- Dashboard shows 7-day adherence percentage

DATA REQUIREMENTS:
- No external APIs needed for MVP
- Local storage for medication data
- Push notification capability

SCOPE BOUNDARIES:
- NO pharmacy integrations
- NO medication interaction checking
- NO sharing with healthcare providers
- English only

ACCEPTANCE TESTS:
- [ ] Add medication with twice-daily schedule
- [ ] Receive notification at correct time
- [ ] Mark as taken, verify dashboard updates
- [ ] Skip a dose, verify adherence % decreases
```

---

### Part 4: Hands-On Exercise (20 min)

**Task:** Convert your team's current design brief into an agent-ready specification.

**Steps:**
1. (5 min) Review your current design brief / HMW question
2. (10 min) Rewrite using the PRD template, applying agent-ready checks
3. (5 min) Swap with another team for "Ralph test"—could a capable stranger execute this?

**Template provided:** [Design Brief PRD Template](../templates/design-brief-prd-template.md)

**Debrief questions:**
- What was hardest to make specific?
- What assumptions did you discover you were making?
- How might this change how you approach Week 2 prototyping?

---

### Closing (5 min)

**Key takeaways:**
1. Chat is for exploration; agents are for execution
2. The Ralph pattern: Context, Goal, Constraints, Resources, Checkpoints
3. PRDs become agent specifications when they pass the "agent-ready check"
4. Vague specifications → vague outputs; specific specs → specific outputs

**Preview of Week 2:**
> "Next week, you'll use these specifications to build functional prototypes. The quality of your spec directly impacts the quality of what you build."

**Homework:**
- Refine your agent-ready PRD based on peer feedback
- Identify your riskiest assumption to test first

---

## Materials Needed

- [ ] Slides with spectrum diagram, Ralph pattern, PRD components
- [ ] Printed/digital PRD template for each team
- [ ] Timer for hands-on exercise
- [ ] Example PRD transformation (medication reminder)

---

## Related Documents

- [Design Brief PRD Template](../templates/design-brief-prd-template.md)
- [Day 1 Kickoff Lecture](day1-kickoff-lecture.md)
- [Course Philosophy](../../docs/course-philosophy.md)
