# Individual Check-in Flow
## 3-5 Minute Daily Student Check-in

**Duration:** 3-5 minutes
**Frequency:** Daily
**Participants:** 1 student + voice agent

---

## Purpose

Collect individual progress updates to:
1. Document learning journey for assessment
2. Surface blockers early
3. Track AI tool usage patterns
4. Support reflection and metacognition
5. Provide data for instructor dashboard

---

## Conversation Script

### Opening (30 seconds)

**Context-aware greeting:**
> "Hey [Name], it's Day [X] of the sprint—we're in the [phase name] part of the workflow."

**Reference previous day (if available):**
> "Based on yesterday, it sounds like you were [brief summary from previous check-in]."

**Set expectations:**
> "Today people are typically working on [expected activities]. Common challenges include [typical struggles]."

---

### Strategy Question (30-60 seconds)

**Always ask first:**
> "Before we get into what actually happened—what was your strategy going into today? How did you decide to break apart what you were tackling?"

**Follow-ups if needed:**
- "What made you prioritize that?"
- "Did you make that call yourself or discuss with your team?"

**Why this matters:** Captures metacognition and planning skills, not just outcomes.

---

### Progress Questions (60-90 seconds)

**What's working:**
> "So what got done? What's working well?"

**Follow-ups:**
- "Nice. How did that come together?"
- "What made that click?"

**What's not working:**
> "What about things that aren't working? Any experiments that didn't pan out?"

**Important:** Normalize this!
- "Makes sense—that's useful data."
- "Good to know what doesn't work."
- "That's the kind of thing we want to document."

---

### AI Tool Usage (30-60 seconds)

> "Which AI tools did you use today—Claude, Replit, NotebookLM, whatever?"

**Follow-ups:**
- "What did you use it for?"
- "What worked well?"
- "Anything frustrating about it?"

**Why this matters:** Tracks tool adoption, informs future curriculum.

---

### Blockers (30 seconds)

> "Any blockers—things you're stuck on or need help with?"

**If yes:**
- "Got it. What have you tried so far?"
- "Do you need instructor help or is this something you can work through?"

**If no:**
- "Cool, sounds like you're unblocked."

---

### Periodic Questions (When Applicable)

**Skills Reflection (Days 2, 5, 8, 10):**
> "Quick skills check: What's something you can do now that you couldn't do at the start of the week?"

**Why this matters:** Documents growth for assessment, supports self-efficacy.

**Career Transfer (Days 5, 10):**
> "Thinking ahead: How might you use what you're learning here in your clinical career?"

**Why this matters:** Connects learning to professional identity.

---

### Closing (30 seconds)

**Summarize:**
> "Okay, so today you [brief summary]. Tomorrow you're planning to [their stated plan]."

**Final check:**
> "Anything else you want to flag before we wrap?"

**Sign off:**
> "Cool, thanks for the update. Good luck with [specific next step]!"

---

## Rubric Alignment

The check-in questions map to assessment criteria:

| Question | Rubric Criterion |
|----------|------------------|
| Strategy decomposition | Problem-solving approach |
| What's working | Technical progress |
| What's not working | Experimentation mindset |
| AI tool usage | AI fluency |
| Blockers | Self-awareness, help-seeking |
| Skills reflection | Growth mindset |
| Career transfer | Professional application |

---

## Output Format

```json
{
  "student": "[name]",
  "day": [number],
  "date": "[YYYY-MM-DD]",
  "phase": "[current phase]",

  "strategy": {
    "approach": "[how they planned to tackle the day]",
    "rationale": "[why they prioritized this way]"
  },

  "progress": {
    "accomplished": ["[item 1]", "[item 2]"],
    "working_well": "[what's clicking]",
    "not_working": ["[experiment that failed]"],
    "learnings": "[what they learned from failures]"
  },

  "ai_tools": {
    "tools_used": ["Claude", "Replit"],
    "use_cases": ["[tool]: [what for]"],
    "worked_well": "[positive experience]",
    "frustrations": "[pain points]"
  },

  "blockers": {
    "current": ["[blocker or 'none']"],
    "tried": "[what they've attempted]",
    "needs_help": true/false
  },

  "periodic": {
    "skills_reflection": "[if asked]",
    "career_transfer": "[if asked]"
  },

  "tomorrow": "[stated plan]",

  "flags": {
    "instructor_attention": ["[issues to escalate]"],
    "sentiment": "positive/neutral/stressed"
  }
}
```

---

## Instructor Dashboard View

**Daily Summary (aggregated):**
- Students checked in: X/7
- Blockers reported: [list]
- AI tools trending: [most used]
- Flags requiring attention: [list]

**Individual View:**
- Full conversation transcript
- Structured JSON output
- Day-over-day comparison
- Skills progression chart

---

## Related Documents

- [System Prompt v1](system-prompt-v1.md) - Full Vapi configuration
- [Team Check-in Flow](team-checkin-flow.md) - Team version
- [Evaluation Rubric](../curriculum/COURSE_WORKFLOW.md) - Assessment criteria
