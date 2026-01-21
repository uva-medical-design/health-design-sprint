# Team Check-in Flow
## 5-8 Minute Daily Team Check-in

**Duration:** 5-8 minutes
**Frequency:** Daily (end of day preferred)
**Participants:** Full team (3-4 students) + voice agent

---

## Purpose

Collect team-level progress updates to:
1. Document team coordination and decision-making
2. Surface inter-team friction early
3. Track division of labor and ownership
4. Ensure alignment on priorities
5. Prepare for next day's work

---

## When to Use

**Individual check-ins:** Daily, every student
**Team check-ins:** Daily, once per team (in addition to individual)

Team check-ins work best at end of day when the team can reflect together.

---

## Conversation Script

### Opening (30 seconds)

**Greeting:**
> "Hey team, it's Day [X] check-in. You're in the [phase name] part of the sprint."

**Set context:**
> "I want to hear about team progress, decisions you made, and how you're planning for tomorrow. This should take about 5-8 minutes."

**Identify speaker:**
> "Who wants to start? Or should I ask questions and you can jump in?"

---

### Team Progress (60-90 seconds)

> "Big picture: where are you as a team today compared to yesterday?"

**Follow-ups:**
- "What's the most important thing that moved forward?"
- "Anything that's further along than you expected?"
- "Anything behind where you hoped to be?"

---

### Decisions Made (60-90 seconds)

> "What decisions did you make as a team today? Could be about scope, direction, who does what—any team-level calls."

**Follow-ups:**
- "What alternatives did you consider?"
- "How did you decide?"
- "Was everyone aligned, or was there disagreement?"

**Why this matters:** Documents decision-making process, not just outcomes.

---

### Division of Labor (60 seconds)

> "How did you divide up the work today? Who owned what?"

**Follow-ups:**
- "Did that division work well?"
- "Anyone feel overloaded or underutilized?"
- "How did you coordinate—Slack, in person, scheduled syncs?"

---

### Coordination Friction (60 seconds)

> "Any friction in how you're working together? Miscommunications, stepping on each other's toes, waiting on someone?"

**Normalize this:**
- "Totally normal for teams to hit bumps."
- "Catching these early helps."

**If friction exists:**
- "What would help resolve that?"
- "Is this something you can sort out internally, or do you need support?"

---

### Tomorrow's Plan (60 seconds)

> "What's the plan for tomorrow? What needs to happen, and who owns each piece?"

**Follow-ups:**
- "Is that realistic given the time you have?"
- "Any dependencies—things that have to happen before other things can start?"
- "What's your riskiest item for tomorrow?"

---

### Team Blockers (30-60 seconds)

> "Any blockers at the team level—things you're stuck on that need outside help?"

**If yes:**
- "Is this a resource issue, a decision you need made, or something else?"
- "Do you need instructor involvement?"

---

### Closing (30 seconds)

**Summarize:**
> "Okay, so today you [key accomplishment], decided [key decision], and tomorrow [owner] is handling [task] while [other owner] does [other task]."

**Final check:**
> "Anything else the team wants to flag?"

**Sign off:**
> "Great, good work today. Good luck tomorrow!"

---

## Rubric Alignment

| Question | Assessment Criterion |
|----------|---------------------|
| Team progress | Project outcomes |
| Decisions made | Critical thinking, collaboration |
| Division of labor | Team dynamics, ownership |
| Coordination friction | Communication, adaptability |
| Tomorrow's plan | Planning, prioritization |
| Team blockers | Problem-solving, help-seeking |

---

## Output Format

```json
{
  "team": "[team name]",
  "day": [number],
  "date": "[YYYY-MM-DD]",
  "phase": "[current phase]",
  "members_present": ["[name 1]", "[name 2]", "[name 3]"],

  "progress": {
    "summary": "[overall progress statement]",
    "key_accomplishment": "[most important thing]",
    "ahead_of_plan": ["[items]"],
    "behind_plan": ["[items]"]
  },

  "decisions": {
    "decisions_made": [
      {
        "decision": "[what was decided]",
        "alternatives": ["[option considered]"],
        "rationale": "[why this choice]",
        "alignment": "unanimous/majority/contested"
      }
    ]
  },

  "coordination": {
    "division_today": {
      "[name]": "[what they owned]"
    },
    "worked_well": "[what's working]",
    "friction": "[issues or 'none']",
    "communication_method": "[Slack/in-person/etc]"
  },

  "tomorrow": {
    "plan": [
      {
        "task": "[task]",
        "owner": "[name]",
        "dependencies": ["[dependency or 'none']"]
      }
    ],
    "riskiest_item": "[what could go wrong]"
  },

  "blockers": {
    "team_blockers": ["[blocker or 'none']"],
    "needs_instructor": true/false
  },

  "flags": {
    "team_health": "healthy/some tension/needs attention",
    "instructor_notes": ["[observations]"]
  }
}
```

---

## Team Health Indicators

**Healthy signs:**
- Clear ownership and accountability
- Decisions made with rationale
- Friction acknowledged and addressed
- Realistic tomorrow plan

**Warning signs:**
- Vague ownership ("we all worked on it")
- Decisions made without considering alternatives
- Friction dismissed or avoided
- Tomorrow plan is unrealistic or unclear
- One person doing most of the talking

**Escalation triggers:**
- Repeated friction without resolution
- Team member consistently absent from check-ins
- Major disagreement on direction
- Scope creep without acknowledgment

---

## Comparison: Individual vs. Team Check-ins

| Aspect | Individual | Team |
|--------|-----------|------|
| Duration | 3-5 min | 5-8 min |
| Focus | Personal progress, learning | Coordination, decisions |
| AI tools question | Yes | Only if relevant |
| Skills reflection | Yes (periodic) | No |
| Division of labor | No | Yes |
| Coordination friction | No | Yes |
| Tomorrow ownership | Personal plan | Team plan with owners |

---

## Related Documents

- [System Prompt v1](system-prompt-v1.md) - Vapi configuration
- [Individual Check-in Flow](individual-checkin-flow.md) - Individual version
- [Course Workflow](../curriculum/COURSE_WORKFLOW.md) - Phase details
