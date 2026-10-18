# Game Design Document (GDD)

## "SAMT" (صَمْت — "Silence")

|  |  |
| --- | --- |
| **Version** | 0.1 (first draft) |
| **Date** | 2026-10-17 |
| **Genre** | Action / Open World / Stealth / Espionage |
| **Perspective** | Third person |
| **References** | GTA (living world) × Assassin's Creed (multi-solution assassinations) × Splinter Cell (stealth & infiltration) |
| **Status** | Pre-production — vertical slice phase |

---

## 1. Vision

> A large city where ordinary citizens live, where gangs and criminal organizations compete, and where secret intelligence agencies operate in the shadows, unknown to the public. The player is a **double agent**: they build influence in the criminal underworld, carry out covert operations for the Agency, and walk the thin wire between the two.

Not every mission is a firefight. Every mission has multiple paths: infiltration, disguise, leveraging relationships, hacking — or direct confrontation when the plan collapses. And that collapse is itself part of the design, not a fail state that reloads a checkpoint.

### What makes the game unique (its own identity)

1. **Two parallel danger meters**: street heat (police + gangs) and the Agency's suspicion of your loyalty. Actions in one world are watched by the other.
2. **Information as a first-class currency** — alongside money and reputation — with which you buy doors, identities, and silence.
3. **Direct confrontation as both punishment and fun**: failing stealth transforms a scene from infiltration into open-world pursuit, with consequences that raise the heat.

---

## 2. Design Pillars

| Pillar | What it means in practice |
| --- | --- |
| **Readable causality** | The city feels alive because the player can trace the chain: gunshot ← civilians flee ← police called ← perimeter set ← gang members on alert |
| **Information as currency** | The four mission paths (stealth/disguise/connections/hacking) each cost information, so every mission is an economic decision |
| **Double life** | There is no separate "stealth mode" and "crime mode"; the wall between them cracks with the player's actions |
| **Emergent solutions** | Missions aren't written with only three solutions; the systems (perception, lighting, reputation) generate solutions the designer never anticipated |

---

## 3. The World: The City

### 3.1 Districts

| District | Character | Controlled by | Role in gameplay |
| --- | --- | --- | --- |
| **The Old City** | Narrow alleys, connected rooftops, traditional market | The Market gang | Stealth and rooftops, disguise missions, escapes on foot |
| **The Business District** | Skyscrapers, offices, banks | Corporations & the Agency | Hacking, espionage missions, night infiltration |
| **The Industrial District** | Docks, warehouses, abandoned factories | The Port gang | Smuggling, gang wars, confrontation missions |
| **The Residential Suburbs** | Houses, quiet neighborhoods | Strong police presence | Going to ground, blending in, building relationships |
| **The Border Zone** | Black markets, cheap hotels | No one / everyone | Black market, fixers, the game's starting area |

### 3.2 Factions

- **The Market gang** — weapons and goods smuggling, wide network of connections.
- **The Port gang** — large-scale operations, direct violence, traditional feud with the Market.
- **A third gang (revealed during the story)** — an entity with threads reaching far beyond crime.
- **The Agency** — intelligence service; gives the covert missions and measures the player's loyalty.
- **The Police** — the official force; response level scales with danger, not with "wanted stars."

> Design rule: every faction has an **interest and a weak point**, and the player moves between them through information rather than force.

---

## 4. The Player

### 4.1 Abilities

- Movement: walk, run, jump, context-based climbing, hiding (dumpsters, cars, crowds).
- Stealth: concealment in shadow and behind cover, interaction with lighting (killing lights), moving bodies, distraction tools.
- Combat: melee (silent/direct), knife throwing, firearms when stealth collapses.
- Concealment & persuasion: changing clothes and appearance, forged badges, dialogue with characters.
- Hacking: devices, cameras, networks, target phones.

### 4.2 Dramatic Constraints (what the player cannot do)

- Cannot kill innocents without the Agency reassessing him.
- Disguise does not fool anyone who knows him personally (gang bosses, his direct contacts).
- Loyalty cannot be faked for long; suspicion accumulates.

---

## 5. Story & Characters

### 5.1 The City: "Al-Mirfa'a" (The Anchorage)

A large coastal city at the crossroads of old smuggling routes — a legitimate commercial port above the surface, and a network of tunnels and old warehouses beneath it. Historically it was "a place where spies crossed paths," and today it is shared between the Market and Port gangs while the Agency runs its files from the top floor of the Business District towers. The city itself is a character: every district tells a story, and every flagpole in it is the thread of an operation.

### 5.2 The Protagonist: Firas — "Saif"

Firas was a star of **the Circle** (the intelligence service): his codename was "Saif" (Sword), and his real name was buried in burned files. Years ago, an operation at the docks collapsed, and he was officially declared dead. The truth: someone inside the Circle betrayed him and left him for the gangs to execute — he survived by a miracle and fled to where files don't reach: the streets.

Today he lives under another name in the Old City, a **fixer** who solves problems with money and information, and the closest person to his heart is the leader of the Market gang who saved him and raised him in the criminal world. Firas is a master of **firasa** — reading faces and intentions — and it is his true weapon. His name means exactly that.

### 5.3 The Spark

The game opens on a night of arrest: the Circle catches Firas after years of believing himself safe. They don't kill him — **they reactivate him**. A new handler named **Ghadeer** offers him a deal: covert operations inside the criminal world he knows better than they do, in exchange for buying back — piece by piece — the truth about who burned him years ago. He is a hostage again, under a new leash: **a thread pulling him from the inside this time**.

### 5.4 The Acts

**Act I — The Return (proving himself):**
Firas rebuilds his standing in the criminal world through influence and theft missions, while in parallel carrying out infiltration operations for the Circle. The player learns that his old and new worlds are beginning to intertwine: a target of the Agency works for the Haj, and a shipment for the Port is being tracked by an Agency file.

**Act II — The Intersection (threads tangle):**
A sudden gang war erupts — Ghadeer insists the Circle is "managing it for the city's stability," but Firas discovers the war is **staged**: every operation he is sent on serves a hidden thread. First twist: the order to burn him years ago came from **inside the Circle itself**, and Ghadeer knows the name — giving him one letter of it at a time.

**Act III — The Unmasking (masks fall):**
A third gang appears suddenly in the city, snatching from the Market and the Port alike, and knowing real names no one should know. Second twist: **its leader is an agent of a foreign service** building a network in the city for twenty years — and one of his assets is very close to Firas. Third twist: **the Haj knew Firas's identity from day one**; saving him was no accident but an investment. Everyone has always used him; the only question left is what he does when he knows.

### 5.5 Characters

| Character | Role | Secret |
| --- | --- | --- |
| **Firas / Saif** | The player | The only survivor of a burned operation |
| **Ghadeer** | The handler | Holds his betrayal file — and lies about one big thing |
| **The Haj (Abu Shihab)** | Market boss, a father figure | Knew Firas's identity and invested in him |
| **The Raven** | The Port gang's brutal leader | Fears exactly one thing in the city |
| **"The Sheikh"** | The mysterious third gang's leader | An old foreign agent; his true identity is Act III's surprise |
| **The Accountant** | A numbers man serving everyone | Holds evidence on everyone — and his life is the core assassination mission |

### 5.6 Endings (earned through systems, not a dialogue list)

The ending is not chosen from a dialogue list; **it is earned by the state of the meters and the reputation matrix** at the moment of decision:

1. **Absolute Silence (The Ghost)**: balanced reputation, high Agency suspicion — Firas kills the Sheikh, dumps the files to the whole city, and vanishes. The city burns, and he watches from afar.
2. **Double Loyalty**: high gang reputation — he allies with the Haj against both the Circle and the Sheikh, and the city becomes his only world, at the price of his old blood.
3. **Return to the Circle**: low suspicion, high Agency reputation — Firas hands over both the Haj and the Sheikh, reclaims his real name, and discovers the name costs more than he thought.
4. **Total Betrayal (the worst and rarest)**: all meters at their max — every faction allies against him in a single night, and he becomes a hunted man in a city he built himself. An ending of survival, not story.

### 5.7 Story-System Links

- Every twist is revealed through **information** the player gathers, not a cutscene: whoever doesn't gather enters Act III blind.
- The core assassination mission (the Accountant) is the player's free point: eliminating him opens the Sheikh's path, sparing him opens the Circle's path, recruiting him opens a secret fourth path.
- The two meters are not just punishment mechanics: when Agency suspicion reaches a certain level, **Ghadeer begins assigning surveillance missions on the player himself** — the agent becomes the target.

---

## 6. Core Systems

### 6.1 The Living Open World (World)

|  | First version (MVP) | Full version |
| --- | --- | --- |
| City | One greybox district (4 streets: residential/business/gang) | 5 districts via World Partition |
| Buildings | One playable interior building | A library of interiors that can be re-arranged |
| Time | Simple day/night cycle | Dynamic light and shadows, weather (deferred) |
| Traffic | Cars on spline paths + a few pedestrians | Full traffic simulation (very late phase) |

### 6.2 Player Character (Character)

|  | MVP | Full |
| --- | --- | --- |
| Movement | Walk/run/jump/box climbing | Environment-based climbing, smooth transitions |
| Combat | Melee + knife throwing + pistol | Full arsenal with weapon physics |
| Appearance | 3 outfits/badges | Tiered disguise system (employee/worker/guard…) |
| Health | Single health bar | Location-based temporary injuries |

### 6.3 Gangs (Gangs)

|  | MVP | Full |
| --- | --- | --- |
| Factions | 3 gangs with numeric reputation (−100 to +100) | Dynamic alliances, double agents |
| Territories | 5 influence zones colored on the map | Fluid influence shifts through events |
| Clashes | Scheduled clash events the player can join | Emergent systemic clashes |
| Missions | Linear theft/smuggling | Missions tied to current influence state |

### 6.4 Espionage & Stealth (Stealth)

|  | MVP | Full |
| --- | --- | --- |
| Perception | Vision cone + hearing + 3 states (calm/suspicious/alert) | Memory, central reporting, searching last known position |
| Shadows | Fixed light/shadow zones in the building | Dynamic lighting the player can manipulate |
| Information | Collecting "files" before a mission opens paths | A living information network in the city |
| Assassinations | One target, three fixed paths with consequences | Targets with daily routines and emergent solutions |

### 6.5 Vehicles (Vehicles)

|  | MVP | Full |
| --- | --- | --- |
| Driving | Two cars with simple physics | Diverse fleet with advanced physics |
| Enter/exit | Simple interaction | Smooth animation |
| Pursuits | Patrol cars chase based on heat | Special units, helicopters, TV news coverage |
| Damage | Simple visual effect | Damage and repair (customization deferred) |

### 6.6 Intelligence & Missions (Missions)

|  | MVP | Full |
| --- | --- | --- |
| Framework | 5 missions + decision flags | Branching story with a decision log |
| Planning | Choose approach + equipment loadout screen | Pre-mission evidence gathering opens new paths |
| Clients | Two fixers: one Agency, one gang | A network of characters with intersecting interests |
| Events | 3 directed events | Systemic events (deferred) |

---

## 7. Unified Architecture (the most important section of this document)

These are what keep the six systems as one game rather than six, and are built **before** any expansion:

1. **Event Bus**: every event (gunshot, body, robbery, accident) is a data packet: location/type/severity. Factions respond by role. *This is the API between all systems — defined from day one.*
2. **Unified perception**: guard/policeman/gang member = same code, differences are data (vision range, response speed, noise threshold).
3. **One reputation matrix**: a relationship table (who knows whom / who cooperates with whom) feeding checkpoints, prices, and loyalty.
4. **AI simulation tiers**:

- Tier 0: paper simulation (district crime rate, influence) — always running.
- Tier 1: ambient pedestrians on simple paths — hundreds, dumb.
- Tier 2: systemic characters (patrols, members, shopkeepers) — dozens, with memory.
- Tier 3: hand-crafted characters (targets, fixers).

5. **Data-driven mission framework**: missions are data (objectives/conditions/flags), not hand-scripted scenarios — so nothing is rewritten when scaling up.
6. **The one-response rule**: anything the player tries to use responds with something; a locked door says "locked," never silence.

---

## 8. Gameplay Loops

### Core loop (60 seconds)

Scout ← information ← plan ← execute (stealth/disguise/…) ← consequences on both meters ← reward (information/money/reputation) ← a deeper opportunity opens.

### Mid loop (a mission)

Receive target ← gather information in the city ← plan and choose equipment ← multi-path execution ← consequences (heat/suspicion/reputation) ← a story thread closes or opens.

### Macro loop (the story)

Balancing influence between gangs and the Agency, uncovering layers of betrayal, reaching the moment of decision: who does he choose to be?

---

## 9. Economy: Three Currencies

| Currency | Earned from | Spent on |
| --- | --- | --- |
| **Money** | Missions, theft, trade | Weapons, cars, small bribes |
| **Information** | Stealth, hacking, connections, surveillance | Disguises, opening paths, silencing witnesses, delaying suspicion |
| **Reputation** (per faction) | Directed missions, keeping your word, silence | Black market prices, trust, exclusive information |

Rule: any major transaction = a mix of currencies, never just one.

---

## 10. Player Experience & UI

- Two permanent danger bars: street heat (red) and Agency suspicion (amber) — always visible, not only during missions.
- The "information network": a map that links characters to places to opportunities.
- Ambient noise/shadow indicator (a ring around the character), not hidden bars.
- Autosave at crossing points; stealth failure doesn't restart the mission but transforms it.

---

## 11. Development Plan

### Environment & Hardware

- Day-to-day development: **GitHub Codespaces** (repository, tests, content tools, CI).
- Graphics engine: due to the lack of a local GPU, the adopted path is a **cloud GPU workstation** (Shadow PC or hourly rental) to run **Unreal Engine 5**.
- Fallback: Godot 4 with a stylized cinematic art direction.
- All logic tests run headless in Codespaces without a GPU.

### Phases

| Phase | Duration | Deliverables |
| --- | --- | --- |
| **0 — Foundation** | Weeks 1–6 | Third-person character controller + unified perception system |
| **1 — Vertical Slice** | Months 2–5 | One interior building + stealth and shadows + dual heat system + **one assassination mission with three paths** (this is the success criterion) |
| **2 — The City** | Months 6–10 | One district + simple traffic + driving |
| **3 — Living World** | Months 11–16 | Police and pursuits + gang simulation |
| **4 — Content** | Month 17+ | Mission framework + story + planning & equipment |

### Gate between phases

The transition happens not when time runs out but when one question is answered: **"Is the core loop fun in greybox?"** If the answer is no, we don't move on — we fix the fun first.

---

## 12. Deferred Scope (no regrets)

Detailed weather, vehicle customization, dense crowd simulation, complex skill trees, open emergent events, multiplayer, platform support (PC only at launch).

---

## 13. Key Risks

| Risk | Likelihood | Mitigation |
| --- | --- | --- |
| Feature creep (building all six systems at once) | High | A strict Phase 1 gate; no city before stealth is fun |
| Living-city simulation (the most expensive system) | High | Simulation tiers + paper numbers instead of distant characters |
| Photorealistic graphics pressure without hardware | Known | Cloud GPU, or an early explicit art-direction recalibration |
| Solo-developer isolation | Medium | Weekly dev-log posts (X/YouTube) from Phase 0 |
| Losing focus between "two games" (crime/espionage) | Medium | Unified architecture: one perception, one reputation, one event flow |

---

## 14. Vertical Slice Success Criteria (Phase 1)

1. An outside tester plays the assassination mission **without instructions** and tries at least two different paths.
2. The player spontaneously traces a causality chain (gunshot ← fleeing ← police) and describes it with admiration.
3. One decision in the mission changes something tangible in both meters immediately after the mission.
4. Nobody says "it looks like a generic stealth game" or "it looks like a small GTA."

---

*This document is the development constitution: what is not in it is not built, and what is in it is not built before its time.*