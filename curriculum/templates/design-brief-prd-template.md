# Design Brief / PRD Template
## Dual-Purpose: Human Communication + Agent Specification

**Team:**
**Date:**
**Version:**

---

## Instructions

This template serves two purposes:
1. **Human communication** - Align your team and stakeholders on what you're building
2. **Agent specification** - Provide clear enough instructions that an AI agent could execute

For each section, apply the **Agent-Ready Check**:
- [ ] Could an AI execute this without asking clarifying questions?
- [ ] Is success measurable (not just "good" or "working")?
- [ ] Are constraints explicit, not implied?

---

## 1. Problem Statement

### The Problem
*What's broken? Who's affected? Why does it matter?*

> [Write 2-3 sentences describing the problem in concrete terms]

### Supporting Evidence
*What did you learn from user research?*

| Source | Key Finding |
|--------|-------------|
| Interview with [role] | "[Quote]" |
| Interview with [role] | "[Quote]" |
| Observation | [What you saw] |

### How Might We...
*Your focused design question*

> HMW [your question]?

**Agent-Ready Check:**
- [ ] Problem is specific enough to know when it's solved
- [ ] Evidence comes from real users, not assumptions
- [ ] HMW is neither too broad nor too narrow

---

## 2. Target User

### Primary User
*Who is this for? Be specific.*

| Attribute | Description |
|-----------|-------------|
| Role | |
| Context | |
| Key pain point | |
| Current workaround | |

### User Persona
*Based on your research synthesis*

> [Name] is a [role] who [context]. They struggle with [pain point] because [reason]. Currently, they cope by [workaround], but this fails when [limitation].

**Agent-Ready Check:**
- [ ] User is specific enough to make design decisions
- [ ] Pain point is validated by research, not assumed
- [ ] Context is concrete (not "busy healthcare worker")

---

## 3. Hypothesis

### What We Believe
*Frame your solution as a testable hypothesis*

> We believe that [solution approach]
> will help [target user]
> achieve [desired outcome]
> because [reasoning based on insights].

### Riskiest Assumption
*What must be true for this to work?*

> The riskiest assumption is: [assumption]

> We'll test this by: [method]

**Agent-Ready Check:**
- [ ] Hypothesis is falsifiable (could be proven wrong)
- [ ] Riskiest assumption is identified
- [ ] Test method is specified

---

## 4. Success Criteria

### Primary Success Metric
*How will you know if this works?*

| Metric | Target | How Measured |
|--------|--------|--------------|
| [Primary metric] | [Specific number/threshold] | [Method] |

### Secondary Metrics
| Metric | Target | How Measured |
|--------|--------|--------------|
| | | |
| | | |

### Definition of "Done" for Prototype
*What must the prototype do to be considered complete?*

- [ ] [Specific capability 1]
- [ ] [Specific capability 2]
- [ ] [Specific capability 3]

**Agent-Ready Check:**
- [ ] Metrics are quantifiable (not "users like it")
- [ ] Targets are specific (not "improved")
- [ ] "Done" criteria are binary (done or not done)

---

## 5. Solution Overview

### Core Concept
*What are you building? Describe in 2-3 sentences.*

> [Description]

### Key Features (MVP)
*What must the prototype include?*

| Feature | Description | Priority |
|---------|-------------|----------|
| | | Must have |
| | | Must have |
| | | Nice to have |

### User Flow
*Step-by-step: what does the user do?*

1. User [action]
2. System [response]
3. User [action]
4. System [response]
5. [Continue as needed]

**Agent-Ready Check:**
- [ ] Features are specific enough to implement
- [ ] Priority is clear (must-have vs. nice-to-have)
- [ ] User flow covers the core experience end-to-end

---

## 6. Data Requirements

### What Data Does the Solution Need?

| Data Type | Source | Format | Available? |
|-----------|--------|--------|------------|
| | | | Yes / No / TBD |
| | | | |

### External APIs or Services
*Does this need to connect to anything?*

| Service | Purpose | Status |
|---------|---------|--------|
| | | Available / Needs setup / N/A |

### Sample Data for Prototype
*What fake/test data will you use?*

> [Describe sample data approach]

**Agent-Ready Check:**
- [ ] Data requirements are explicit
- [ ] External dependencies are identified
- [ ] Sample data approach is defined

---

## 7. Scope Boundaries

### Explicitly Out of Scope
*What will this prototype NOT do? Be specific.*

- NOT: [Explicit exclusion 1]
- NOT: [Explicit exclusion 2]
- NOT: [Explicit exclusion 3]

### Constraints
*What limitations must the solution respect?*

| Constraint Type | Constraint |
|-----------------|------------|
| Technical | |
| Time | Prototype due [date] |
| Resources | |
| Regulatory | |

### Future Considerations (Not for MVP)
*What might a future version include?*

- [ ] [Future feature 1]
- [ ] [Future feature 2]

**Agent-Ready Check:**
- [ ] Out-of-scope items are explicit (not implied)
- [ ] Constraints are documented
- [ ] MVP scope is clearly bounded

---

## 8. Acceptance Tests

### How Will You Verify the Prototype Works?

| Test | Steps | Expected Result | Pass/Fail |
|------|-------|-----------------|-----------|
| [Test name] | 1. [Step] 2. [Step] | [What should happen] | |
| | | | |
| | | | |

### User Testing Protocol
*How will you test with real users?*

| Aspect | Plan |
|--------|------|
| Number of users | |
| User type | |
| Tasks to test | |
| Data to collect | |

**Agent-Ready Check:**
- [ ] Acceptance tests are specific and runnable
- [ ] Expected results are defined
- [ ] User testing approach is planned

---

## 9. Team & Timeline

### Team Roles
| Name | Primary Responsibility |
|------|----------------------|
| | |
| | |

### Key Milestones
| Date | Milestone |
|------|-----------|
| | Low-fi prototype complete |
| | User testing round 1 |
| | Hi-fi prototype complete |
| | User testing round 2 |
| | Final presentation |

---

## Appendix: Agent Prompt Version

*Use this condensed version when working with Claude Code or similar tools:*

```
Build a [type of solution] that helps [target user] [achieve goal].

CONTEXT:
[2-3 sentences about the problem and user]

MUST INCLUDE:
- [Feature 1]
- [Feature 2]
- [Feature 3]

DO NOT INCLUDE:
- [Exclusion 1]
- [Exclusion 2]

SUCCESS LOOKS LIKE:
- [Acceptance criterion 1]
- [Acceptance criterion 2]

SAMPLE DATA:
[Description of test data to use]
```

---

## Document History

| Version | Date | Changes | Author |
|---------|------|---------|--------|
| 0.1 | | Initial draft | |
| | | | |
