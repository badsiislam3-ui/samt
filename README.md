# SAMT «صَمْت» — Starter Kit

The game's systems core, developed headless in GitHub Codespaces (no GPU).
The rule: brain before body — all of the game's intelligence is built and tested here, and graphics are attached later.

## Running in Codespaces

1. Create a new repository and push these files to it (large assets go through Git LFS later).
2. Open the repository in Codespaces — `postCreateCommand` installs Godot 4.3 and runs the tests automatically.
3. At any later time, in the terminal:

```bash
godot --headless --script tests/run_tests.gd
```

Every `FAIL` exits the process with code 1 — CI-ready from day one.

## Structure

```javascript
.devcontainer/   dev container (Ubuntu + Godot headless)
src/core/
  event_bus.gd    Event bus — type/location/severity; factions respond by role
  perception.gd   Unified perception: vision (light shrinks range) + hearing + 3 states
tests/            Test runner with a single command
```

## Two-Week Plan (from the GDD, section 11)

| Day | Task |
| --- | --- |
| 1 | This repository runs and all tests are green |
| 2–3 | Expand the event bus: subscribers per `type` + distance-based filtering |
| 4–6 | A PoliceResponder class that reacts to `gunshot` with levels based on `severity` |
| 7–10 | HeatSystem (street heat) + AgencySuspicion (Agency suspicion) |
| 11–14 | One full headless simulation scene: gunshot ← fleeing ← police response ← gang alert |

Reference document: GDD_SAMT.md — if it is not in the GDD, it is not built.