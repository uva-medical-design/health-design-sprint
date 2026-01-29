# Health Design Sprint

A 2-week medical student elective combining design thinking methodology with AI-assisted prototyping to solve real healthcare challenges.

## Course Overview

| | |
|---|---|
| **Duration** | 2 weeks |
| **Start Date** | February 16, 2026 |
| **Locations** | UVA Charlottesville, Inova Campus |
| **Team Size** | 4-5 students |
| **Output** | Functional healthcare prototype |

## Learning Objectives

By the end of this elective, students will be able to:

- Apply design thinking methodology to healthcare problems
- Conduct effective user research with patients, clinicians, and staff
- Synthesize research into actionable insights and problem statements
- Rapidly prototype solutions using AI-assisted development tools
- Test and iterate based on user feedback
- Present and hand off a functional prototype

## The 14 Phases

### Week 1: Discover & Define

| Phase | Focus |
|-------|-------|
| 1. Problem Exploration | Identify and scope healthcare challenges |
| 2. Stakeholder Mapping | Map all affected parties and their relationships |
| 3. User Research | Conduct interviews and contextual observations |
| 4. Empathy Synthesis | Create personas and journey maps |
| 5. Problem Definition | Craft "How Might We" statements |
| 6. Ideation | Generate diverse solution concepts |
| 7. Concept Selection | Evaluate and select promising directions |

### Week 2: Develop & Deliver

| Phase | Focus |
|-------|-------|
| 8. Rapid Prototyping | Build low-fidelity prototypes |
| 9. User Testing Round 1 | Gather initial feedback |
| 10. Iteration | Refine based on insights |
| 11. AI-Assisted Development | Build functional prototypes |
| 12. User Testing Round 2 | Validate with working prototype |
| 13. Final Refinement | Polish and document |
| 14. Handoff | Present deliverables to stakeholders |

## Documentation

| Topic | Location | Description |
|-------|----------|-------------|
| **Course Philosophy** | [docs/course-philosophy.md](docs/course-philosophy.md) | "Six-Month Window" thesis and teaching rationale |
| **Student Setup** | [docs/student-setup/](docs/student-setup/) | Mac/Windows installation guides |
| **Infrastructure** | [docs/infrastructure/](docs/infrastructure/) | Claude Team, GitHub decisions |
| **Session Plans** | [curriculum/sessions/](curriculum/sessions/) | Day 1 kickoff, Day 4 workshop |
| **Voice Agent** | [voice-agent/](voice-agent/) | Daily check-in system for Vapi |
| **Brand System** | [`mdp-brand` repo](https://github.com/uva-medical-design/mdp-brand) | `<mdp>` mark, typography, colors |
| **Studio Assets** | [brand/studio/](brand/studio/) | OBS overlays, holding slides, stream deck icons |

## Repository Structure

```
health-design-sprint/
├── curriculum/           # Course content
│   ├── sessions/         # Session plans (Day 1, Day 4)
│   ├── templates/        # Design brief, PRD templates
│   ├── COURSE_WORKFLOW.md
│   └── DAILY_SCHEDULE.md
├── docs/                 # Documentation
│   ├── infrastructure/   # Tool and platform decisions
│   ├── student-setup/    # Installation guides
│   └── course-philosophy.md
├── voice-agent/          # Vapi check-in system
├── brand/                # Local production assets
│   ├── studio/           # OBS overlays, holding slides
│   └── templates/        # PDF generation templates
├── students/             # Roster and student data
├── templates/            # Phase worksheets
├── examples/             # Sample outputs
├── projects/             # Team project folders
├── resources/            # Reading materials, checklists
├── CLAUDE.md             # AI assistant context
└── README.md             # This file
```

## Getting Started

### For Facilitators

1. Review materials in `curriculum/` for session plans
2. Prepare templates from `templates/` for each phase
3. Set up team folders in `projects/`

### For Students

1. Form teams of 4-5 members
2. Review the phase overview above
3. Access your team folder in `projects/`

## Tools & Technologies

This course leverages AI tools to accelerate the prototyping process:

- **Research synthesis**: AI-assisted interview analysis
- **Ideation**: AI brainstorming partners
- **Prototyping**: AI code generation and design tools (Claude Code)
- **Documentation**: AI-assisted writing and presentation

**Infrastructure:** Students access Claude and Claude Code via a shared Claude Team Standard plan. See [Infrastructure Decision](docs/infrastructure/claude-team-decision.md) for details.

## Contact

For questions about the Health Design Sprint elective, contact the course coordinators at UVA School of Medicine.

---

*Designed for medical students who want to become physician-innovators.*
