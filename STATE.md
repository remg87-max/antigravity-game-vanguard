# 📊 PROJECT STATE & DAG QUEUE — Game Project

> **Regla de Gobernanza:** Este archivo es la única fuente de la verdad sobre el progreso del juego. Todo agente debe leerlo al iniciar su turno y actualizarlo al cerrar un ticket. Los contratos en `src/contracts/` son propiedad exclusiva de `@l0-game-architect`.

## 🎯 Visión Activa del Proyecto
- **Juego:** `[Pendiente de inicializar con /sdd-contract-gen (Fase 1.1)]`
- **Stack Principal:** `TypeScript 5.x (strict), Vite, HTML5 Canvas 2D / WebGL / Three.js, WebAudio, Vitest, Tauri (.exe) / Capacitor (.apk)`
- **Estado del Contrato (`src/contracts/`):** `UNINITIALIZED`
- **Milestone Activo:** `Milestone 1 — Greybox & Core Loop Jugable`

---

## 🔥 NOW (Ola Activa — Ejecución en Paralelo con Scopes Disjuntos)
| Ticket ID | Agente Asignado | Scope (Archivos Permitidos) | Descripción & Contrato | Comando de Verificación | Estado |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `M1-000` | `@l0-game-architect` | `docs/TDD.md`, `src/contracts/**`, `STATE.md` | Fase `1.1`: Diseñar TDD del Milestone 1 (Greybox), congelar contratos de simulación/input/render y poblar DAG de tickets. | `ls src/contracts/` | `PENDING` |

---

## ⏭️ NEXT (Cola del Grafo DAG — Esperando Dependencias)
| Ticket ID | Depende de | Agente Asignado | Scope | Descripción |
| :--- | :--- | :--- | :--- | :--- |
| `T-101` | `M1-000` | `@audio-pipeline-integrator` | `package.json`, `vite.config.ts`, `src/input/**` | Scaffold Vite + TS Strict + Vitest + Input Manager base |
| `T-102` | `M1-000` | `@gameplay-sim-engineer` | `src/sim/**`, `src/config/**` | Implementar motor headless, PRNG con semilla, reglas completas y unit tests |
| `T-103` | `M1-000` | `@render-feel-artisan` | `src/render/**`, `src/ui/**` | Implementar renderizador Greybox a 60 FPS (zero-allocation loop) + HUD mínimo |
| `T-104` | `T-101`, `T-102`, `T-103` | `@playtest-qa-verifier` | `tests/**` | Fase `1.3`: Auditoría AST, simulación headless 1,000+ ticks y playtest E2E en Browser |

---

## 🛑 BLOCKED (Requiere Intervención o Reparación X.R)
| Ticket ID | Agente | Intento # | Stacktrace / Hallazgos `F-XXX` | Flag |
| :--- | :--- | :--- | :--- | :--- |
| — | — | — | Sin bloqueos activos | `OK` |

---

## ✅ COMPLETED (Auditados por `@playtest-qa-verifier`)
| Ticket ID | Agente | Verificado por | Evidencia (Test / FPS / Métrica) |
| :--- | :--- | :--- | :--- |
| — | — | — | — |

---

## 🏛️ ARCHITECTURAL DECISIONS (ADR Log)
1. **ADR-001:** Adopción del estándar operativo `X.1 / X.2 / X.3 / X.R` con arquitectura *Contract-First* y separación estricta entre simulación headless (`src/sim/`) y renderizado (`src/render/`).
2. **ADR-002:** Determinismo garantizado mediante PRNG con semilla (`seed`) y Fixed Timestep; prohibido `Math.random()` en lógica de gameplay.
