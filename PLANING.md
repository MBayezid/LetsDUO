# PLANING - Finalize PRD.md

Purpose

This planning doc lays out the concrete steps to finalize PRD.md for the "Let'sDUO" project. It maps product requirements to current code and design artifacts, lists acceptance criteria, assigns tasks, and proposes a short timeline and verification plan.

Scope

- Consolidate the product requirements from existing MarmAID docs and code (notably `marmAID/user-perspective-diagram.md`) into a single PRD.md.
- Ensure the PRD references concrete routes and UI screens implemented in code (`lib/routes.dart`, `lib/screens/*`).
- Add acceptance criteria and minimal success metrics.
- Identify any gaps (missing screens, validation rules, or flows) and propose owner/action.

Key artifacts to use

- `marmAID/user-perspective-diagram.md` — user flows (Landing -> Sign Up -> Welcome, guest/skip path)
- `lib/routes.dart` — canonical route names used across the app
- `lib/main.dart` — app entrypoint and route wiring
- `lib/screens/landing_page.dart`, `lib/screens/signup_page.dart`, `lib/screens/welcome_page.dart` — screen responsibilities (if present)
- `marmAID/*.md` — design and signup/landing docs for copy/requirements

High-level goals

1. Produce a clear, single-source PRD.md that describes: problem statement, target users, user journeys, functional requirements (per screen and per route), non-functional requirements (performance, accessibility, platform support), and acceptance criteria.
2. Map each functional requirement to code locations (files, routes, components) so engineers can implement/verify quickly.
3. Flag missing or ambiguous items for follow-up (e.g., exact validation rules, API contracts, analytics events).

Step-by-step plan

1. Gather & synthesize
   - Read `marmAID/user-perspective-diagram.md`, `landing_page_design.md`, `signup_flow_design.md`, and README to extract goals, flows, and copy.
   - Use `lib/routes.dart` and `lib/main.dart` to map route names to screens.

2. Draft PRD structure (skeleton)
   - Title, version, authors
   - Executive summary & problem statement
   - Personas & target users
   - User journeys (Landing, Sign Up, Welcome, Guest flow)
   - Functional requirements (grouped by route/screen)
   - Non-functional requirements
   - Acceptance criteria & success metrics
   - Open questions & gaps
   - Implementation mapping (file-level)

3. Fill functional requirements
   - For each screen (Landing, Sign Up, Welcome), specify:
     - Inputs, outputs, validations
     - UI elements and copy
     - Navigation/route transitions (use `Routes.*` constants)
     - Edge cases (cancel, invalid input, network failure)

4. Add non-functional requirements
   - Performance: cold-start target, max network latency for signup
   - Accessibility: contrast, screen-reader labels for primary elements
   - Platforms: mobile (iOS/Android), web, desktop (Windows/Linux/macOS)

5. Acceptance criteria & verification
   - Checklist items mapped to unit/integration tests, manual QA steps, and analytics events
   - Example: "User can sign up with email and password and reach Welcome page" → automated widget test + manual end-to-end verification

6. Review & iterate
   - Share PRD draft with PM/Designer/Engineer
   - Collect feedback and finalize

Files to create/update

- Create `PRD.md` at repo root (draft). Use `PLANING.md` as the plan.
- Optionally keep PRD in `marmAID/` if you prefer all design artifacts together.

Acceptance criteria for PRD.md

- Each user flow in `marmAID/user-perspective-diagram.md` is represented in PRD (landing, signup, guest flow, welcome)
- Each functional requirement lists the code files and routes that implement it (with exact `Routes.*` names)
- Unresolved questions are listed with an owner and due date
- A minimal QA checklist is present (happy-path + 2 edge cases per screen)

Owner & timeline (suggested)

- Owner: you (repo owner) or a designated PM/engineer
- Draft: 1 day
- Review: 1 day
- Finalize: 1 day

Risks & notes

- If the code changes (route names or screen filenames) after PRD is finalized, update the PRD accordingly.
- Do not rename package identifiers or binary names in this process; treat those as separate tasks.

Next actions I can take now (pick one)

- Create `PRD.md` draft using this plan and the existing MarmAID docs (I can auto-generate the first draft now).
- Open a PR with `PRD.md` and request reviews (I can create the file and prepare a commit/PR message if you want github automation).
- Stop here and let you make edits.

---

File created by automation. Update as needed.
