## User perspective flow — Let'sDUO
 
This diagram shows the primary user flows through the app from a user's point of view: entry (Landing), registration (Sign Up), and the post-registration welcome (Welcome). It includes decisions and error/cancel paths.

```mermaid
flowchart TD
  A[User opens app] --> B(Landing Page)
  B --> |"Sign up"| C(Sign Up Page)
  B --> |"Explore (skip)"| E[Browse (guest)]
  C --> D{Form valid?}
  D --> |Yes| F[Create account]
  D --> |No| C
  F --> G(Welcome Page)
  C --> |"Cancel"| B
  G --> H[User home / main flow]
  E --> H
  style A fill:#f9f,stroke:#333,stroke-width:1px
  style G fill:#efe,stroke:#2a2,stroke-width:1px
```

### Notes (user perspective)
- Landing Page: first impression, brief app pitch and primary CTAs (Sign up, Explore as guest).
- Sign Up Page: collect user details; validation shown inline; user can cancel and return to Landing.
- Welcome Page: shown after successful sign-up; next step is the app's main experience.
- Guest path (Explore) allows users to try the app without signing up.

### Mapping to code
- `lib/main.dart` -> `MyApp` (wires routes and theme)
- `lib/routes.dart` -> route names (e.g., `Routes.home`, `Routes.signup`, `Routes.welcome`)
- `lib/screens/landing_page.dart` -> Landing Page UI/CTAs
- `lib/screens/signup_page.dart` -> Sign Up Page and form validation
- `lib/screens/welcome_page.dart` -> Welcome Page after signup

### How to render
- If your Markdown renderer supports Mermaid, the diagram above will render inline.
- Otherwise, use an external Mermaid live editor (https://mermaid.live/) and paste the Mermaid block above.

---

File saved as `marmAID/user-perspective-diagram.md`.
