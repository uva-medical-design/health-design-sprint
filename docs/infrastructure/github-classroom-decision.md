# GitHub Classroom: Decision Record
## Health Design Sprint Infrastructure

**Decision Date:** January 2025
**Status:** Deferred to Future Cohort
**Next Review:** Fall 2026 Cohort Planning

---

## Summary

GitHub Classroom was evaluated as a potential infrastructure component for the Health Design Sprint course. After analysis, we decided to **defer implementation** to a future cohort due to setup overhead relative to launch timeline.

---

## Features Evaluated

| Feature | Benefit | Complexity |
|---------|---------|------------|
| **Codespaces** | Consistent dev environment for all students | Medium - requires configuration |
| **Assignment autograding** | Automated feedback on submissions | High - requires test setup |
| **Progress tracking** | Instructor visibility into student work | Low - built-in |
| **Repository templates** | Standardized project structure | Low - straightforward |
| **Pull request workflows** | Code review practice | Medium - requires teaching |

---

## Rationale for Deferral

### Time Constraint
- **4 weeks to course launch** at time of decision
- GitHub Classroom setup requires: template repo configuration, Codespaces devcontainer, assignment structure, testing workflows
- Estimated setup time: 8-12 hours
- Risk of debugging environment issues during course

### Current Cohort Context
- 7 students (small enough for manual coordination)
- Mixed OS environment (Mac + Windows confirmed)
- Students have no prior coding experience
- Focus should be on design thinking + AI fluency, not git workflows

### Alternative Approach for February 2026
- Students use local Claude Code installation
- Simple shared repo for course materials (this repo)
- Individual project folders within repo or personal repos
- Manual submission via form or direct communication

---

## Recommendation for Fall 2026

Re-evaluate GitHub Classroom when:
1. Cohort size exceeds 10 students
2. Course includes explicit git/version control learning objectives
3. Setup time available (8+ weeks before launch)
4. Codespaces pricing evaluated for educational use

### Potential Benefits for Larger Cohorts
- Automated environment setup eliminates "works on my machine" issues
- Progress tracking across multiple teams
- Assignment structure enforces deliverable cadence
- Prepares students for professional development workflows

---

## Related Decisions

- [Claude Team Infrastructure](claude-team-decision.md) - Approved, primary AI platform
- Cross-platform support (Mac + Windows) - Required for current cohort

---

## References

- GitHub Classroom documentation
- GitHub Education benefits for instructors
- Codespaces pricing for education
