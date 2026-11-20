---
name: sdd-contract-gen
description: "Fase X.1 del estándar de videojuegos: Diseña/extiende docs/TDD.md, congela contratos en src/contracts/ y desglosa el Milestone activo en tickets atómicos dentro de STATE.md."
---
# Skill: Arquitectura y Contratos de Videojuegos (Fase X.1)

Cuando el Game Director invoque `/sdd-contract-gen`:
1. Lee `docs/GDD.md`, `docs/TDD.md` (si existe), `src/contracts/*` y `STATE.md`.
2. Diseña o extiende `docs/TDD.md` (diagrama Mermaid, arquitectura headless, Fixed Timestep, PRNG con semilla y presupuesto de 16.6ms).
3. Crea o extiende de forma retrocompatible los contratos compilables en `src/contracts/`.
4. Pobla `STATE.md` con las olas paralelizables del Milestone actual (`NOW` y `NEXT`), scopes disjuntos y comandos de verificación.
5. Verifica `typecheck` en `0` errores y detente sin escribir código de implementación.
