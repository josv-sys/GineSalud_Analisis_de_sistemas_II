# Guía de trabajo del equipo

## Flujo de trabajo

1. Tomar una tarjeta del tablero Kanban (pestaña **Projects**), asignársela y moverla a **In Progress**.
2. Crear una rama a partir de `main`:
   ```bash
   git checkout main && git pull
   git checkout -b docs/modelo-entidad-relacion
   ```
3. Editar los archivos de `docs/`, `diagramas/` o `gestion/`.
4. Hacer commits pequeños y descriptivos (ver convención abajo).
5. Subir la rama y abrir un *pull request* hacia `main` indicando `Closes #N` (número del issue).
6. Otro integrante revisa y aprueba; al fusionar, la tarjeta pasa a **Done**.

## Convención de commits

```
<tipo>: <descripción breve en minúsculas>
```

| Tipo | Uso |
|---|---|
| `docs` | Contenido nuevo o modificado del documento |
| `diagrama` | Diagramas UML, ER o mockups |
| `gestion` | Kanban, bitácora, planificación |
| `fix` | Correcciones (ortografía, IDs, formato) |
| `release` | Nueva versión entregada (PDF + CHANGELOG) |

Ejemplos: `docs: agregar modelo entidad-relación`, `fix: corregir numeración de RNF`.

## Publicar una versión entregada

1. Copiar el PDF a `entregables/` con el nombre `Proyecto_Analisis_Sistemas_II_vX.Y.pdf`.
2. Mover lo de *[Sin publicar]* a una nueva sección en `CHANGELOG.md`.
3. Commit y etiqueta:
   ```bash
   git commit -am "release: versión X.Y del documento"
   git tag -a vX.Y -m "Entrega X.Y"
   git push origin main --tags
   ```
