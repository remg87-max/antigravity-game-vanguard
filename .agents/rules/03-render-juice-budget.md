---
trigger: glob
globs: "**/render/**, **/ui/**, **/shaders/**, **/scenes/**, *.tsx, *.jsx, *.glsl, *.wgsl"
description: "Reglas de presupuesto de 16.6ms (60 FPS), zero-allocation render loop, Game Feel y limpieza de VRAM."
---
# Reglas de Renderizado, Shaders y Game Feel

1. **Presupuesto de Frame (16.6ms):** El bucle de renderizado (`render(alpha)`) no debe ejecutar lógica de negocio pesada ni bloquear el hilo principal.
2. **Zero-Allocation Draw Loop:** Prohibido instanciar objetos (`new`, closures, `.map()`, `.filter()`, spread `{...}`) dentro de las funciones ejecutadas 60 veces por segundo. Pre-aloja buffers (`Float32Array`, `Uint32Array`) y usa Object Pooling para partículas.
3. **Skins Desacopladas:** Los temas visuales o skins se consumen como diccionarios de configuración (`src/config/`) sin meter `if (skin === ...)` dentro de la lógica de reglas.
4. **Limpieza de Recursos (`dispose()`):** Todo renderer, textura, shader, geometría o listener debe liberar sus recursos limpiamente en `dispose()`.
