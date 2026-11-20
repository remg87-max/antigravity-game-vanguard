---
trigger: always_on
description: "Gobernanza arquitectónica, estándar X.1/X.2/X.3/X.R, Data-Driven Design y economía de tokens para todos los agentes de videojuegos."
---
# Gobernanza Always-On (The Game Vanguard)

1. **Verificación de `STATE.md`:** Lee `STATE.md` antes de editar cualquier archivo y actualiza el estado del ticket al cerrar tu turno.
2. **Inmutabilidad de `src/contracts/`:** Los agentes L1 tienen estrictamente prohibido modificar `src/contracts/`.
3. **Data-Driven Design:** Prohibido hardcodear stats de gameplay, tiempos de cooldown o paletas visuales dentro de la lógica; colócalos en `src/config/`.
4. **Economía de Contexto (Pro/Flash):** Nunca imprimas archivos enteros en el chat. Escribe directo a disco y reporta únicamente resumen de cambios y resultados de comandos de verificación.
