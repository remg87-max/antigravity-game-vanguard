# CONSTITUCIÓN DE INGENIERÍA DE VIDEOJUEGOS: THE GAME VANGUARD

## 1. Filosofía Operativa (Estándar X.1 / X.2 / X.3 / X.R)
- **Prohibido el "Essay Mode":** Un ensayo sin archivos reales creados o modificados es un fallo crítico.
- **Contract-First Development:** Ningún agente L1 escribe código de implementación hasta que `@l0-game-architect` haya congelado `docs/TDD.md` y las interfaces en `src/contracts/`.
- **Memoria Persistente en Disco:** Antes de iniciar y al cerrar cualquier turno, lee y actualiza `STATE.md` (`NOW`, `NEXT`, `BLOCKED`, `COMPLETED`, `ADR Log`). No dependas del historial del chat.
- **Data-Driven Design:** Prohibido hardcodear números de balance (HP, daño, velocidades, tamaños de tablero, probabilidades) dentro de la lógica. Todo parámetro de diseño vive en `src/config/`.

## 2. Estándares Técnicos No Negociables
- **Higiene de Código:** TypeScript estricto (`strict: true`, `0` `any`, `0` `TODO`/`FIXME`), funciones de máximo `60` líneas y complejidad ciclomática `CC <= 10`.
- **Determinismo Absoluto en Simulación (`src/sim/`):**
  - Prohibido usar `Math.random()`. Toda aleatoriedad debe pasar por un PRNG con semilla (`seed`) inyectado para garantizar replays y debugging 100% reproducibles.
  - La simulación corre en **Fixed Timestep** (ej. `dt = 1/60s` o por turnos discretos) y es 100% headless (cero referencias a `window`, `document`, DOM, Canvas o Three.js).
- **Presupuesto de Frame (60+ FPS / `< 16.6ms`):**
  - Prohibido instanciar objetos (`new`, `.map()`, `.filter()`, closures, arrays temporales) dentro de `render(alpha)` o `tick()`. Usa `TypedArrays` y Object Pooling.
  - Todo recurso gráfico o sonoro (texturas, buffers, shaders, listeners, AudioContext nodes) debe tener limpieza explícita (`dispose()`).
- **Manejo de Errores Determinista:** Prohibido usar `catch` vacíos. Usa `Result<T, E>` o errores tipados.

## 3. Protocolo de Escalación (Bounded Repair Loop — Fase X.R)
- Si un test, build o auditoría falla `3` veces consecutivas intentando la misma estrategia, DETÉN la ejecución, documenta el stacktrace exacto en `STATE.md` bajo `BLOCKED` con el flag `[HUMAN_INTERVENTION_REQUIRED]` y solicita intervención del Game Director.
