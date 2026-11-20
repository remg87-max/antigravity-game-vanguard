---
trigger: glob
globs: "**/sim/**, **/core/**, **/ai/**, **/physics/**, **/config/**"
description: "Reglas de determinismo, simulación headless, PRNG con semilla y rendimiento para el núcleo del videojuego."
---
# Reglas de Simulación Determinista y Core Gameplay

1. **Headless Estricto:** Prohibido importar o referenciar `window`, `document`, `HTMLCanvasElement`, `Three`, `Pixi`, `requestAnimationFrame` o `AudioContext` dentro de `src/sim/` o `src/core/`.
2. **Prohibido `Math.random()`:** Usa exclusivamente un generador PRNG determinista con semilla (`Mulberry32` / `Xoshiro128**`) almacenado en el estado de simulación.
3. **Fixed Timestep / Turnos Puros:** Toda transición de estado debe ser una función predecible `(state, command, dt) -> Result<StateDelta, SimError>` que permita replays y fuzzing en Vitest.
4. **Complejidad y Memoria:** Documenta la complejidad algorítmica de la IA/pathfinding/colisiones. Evita crear basura en memoria por cada tick.
