---
name: zero-trust-audit
description: "Fase X.3 (y soporte X.R) del estándar de videojuegos: Ejecuta auditoría AST, simulación headless de 1,000+ ticks, validación de FPS y playtest E2E en Browser Subagent."
---
# Skill: Auditoría Forense y Playtest Zero-Trust (Fase X.3)

1. Invoca a `playtest-qa-verifier` (`pro`) para auditar todos los archivos del Milestone actual.
2. Ejecuta `typecheck`, suite completa de Vitest (incluyendo simulación headless determinista y fuzzing) y `build`.
3. Ejecuta playtest E2E con el **Browser Subagent** verificando `0` errores de consola, fluidez (`< 16.6ms`) y flujo jugable real.
4. Si todo aprueba, marca `[PASS]` y mueve los tickets a `COMPLETED` en `STATE.md`. Si falla, registra los hallazgos `F-XXX` en `BLOCKED` con flag `FAIL_AUDIT` para ejecutar una reparación quirúrgica `X.R`.
