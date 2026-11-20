---
name: swarm-dispatch
description: "Fase X.2 del estándar de videojuegos: Despacha las olas paralelas de STATE.md a gameplay-sim-engineer (Pro), render-feel-artisan (Inherit) y audio-pipeline-integrator (Flash)."
---
# Skill: Despacho Paralelo de Estudio (Fase X.2)

1. Confirma que `src/contracts/` compile sin errores.
2. Lee los tickets en `NOW` de `STATE.md` y despacha en paralelo respetando estrictamente el scope de cada rol:
   - `gameplay-sim-engineer` (`pro`): `src/sim/`, `src/core/`, `src/config/`.
   - `render-feel-artisan` (`inherit`): `src/render/`, `src/ui/`, `src/shaders/`.
   - `audio-pipeline-integrator` (`flash`): `src/audio/`, `src/input/`, `src/storage/`, config y build.
3. Ningún builder puede modificar `src/contracts/`.
4. Al cerrar cada ola, actualiza `STATE.md` y prepara el pase a Fase `X.3` (`/zero-trust-audit`).
