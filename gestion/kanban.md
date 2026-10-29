# Tablero Kanban — GineSalud

El tablero oficial está en la pestaña **Projects** del repositorio
(*GineSalud - Tablero Kanban*). Cada tarjeta es un issue de GitHub; esta página es una copia
en Markdown para el documento y para consultar sin conexión.

**Columnas:** `Todo` (por hacer / backlog) → `In Progress` (en progreso) → `Done` (hecho)

**Prioridad propuesta** (pendiente de validar en la priorización del backlog con el equipo):
alta = funciones base de la operación diaria; media = dependen de las anteriores;
baja = integraciones externas o análisis futuro.

## Backlog del producto — Historias de usuario

| Tarjeta | Actor | RF | Prioridad | Puntos (Planning Poker) | Estado |
|---|---|---|---|---|---|
| HU-01 Registro de nuevas pacientes | Recepcionista | RF-01 | Alta | _pendiente_ | Todo |
| HU-02 Gestión de agenda de citas | Recepcionista | RF-02 | Alta | _pendiente_ | Todo |
| HU-03 Consulta de expediente clínico | Ginecólogo | RF-03 | Alta | _pendiente_ | Todo |
| HU-04 Registro de atenciones médicas | Ginecólogo | RF-04 | Alta | _pendiente_ | Todo |
| HU-07 Registro de pagos y facturación | Recepcionista | RF-07 | Alta | _pendiente_ | Todo |
| HU-05 Recordatorios automáticos de citas | Paciente | RF-05 | Media | _pendiente_ | Todo |
| HU-06 Emisión de recetas y órdenes médicas | Ginecólogo | RF-06 | Media | _pendiente_ | Todo |
| HU-09 Cierre de caja diario | Recepcionista | RF-09 | Media | _pendiente_ | Todo |
| HU-08 Autogestión de citas por WhatsApp | Paciente | RF-08 | Baja | _pendiente_ | Todo |
| HU-10 Análisis gerencial en Tableau | Dueño de la clínica | RF-10 | Baja | _pendiente_ | Todo |

## Trabajo del equipo — Documento del proyecto

### Done (hecho)
- DOC: Introducción, objetivo general, justificación y alcance
- DOC: Ficha de la empresa y contexto del negocio
- DOC: Modelado de procesos de negocio
- DOC: Cadena de valor
- DOC: Identificación de problema, necesidad y oportunidad
- DOC: Situación actual (AS-IS) y propuesta (TO-BE)
- DOC: Catálogo de requerimientos funcionales y no funcionales
- DOC: Diagrama UML de casos de uso
- DOC: Historias de usuario con criterios de aceptación
- DOC: Referencias (formato APA)

### In Progress (en progreso)
- APÉNDICE: Repositorio con documentación versionada — Josue Villarreal
- APÉNDICE: Tablero Kanban — Josue Villarreal
- APÉNDICE: Bitácora del equipo — Josue Villarreal

### Todo (por hacer)
- DISEÑO: Mockups funcionales de las pantallas principales
- DISEÑO: Modelo entidad-relación
- PLAN: Estimación con Planning Poker
- PLAN: Estimación PERT
- PLAN: Priorización del backlog y planificación de sprints (SCRUM)

## Reglas del tablero

1. Toda tarea nueva se crea como issue con la plantilla correspondiente (*Historia de usuario* o *Tarea*).
2. Al empezar una tarea, asignársela y moverla a **In Progress**.
3. Al terminar, cerrar el issue desde el commit o PR (`Closes #N`) para que pase a **Done**.
4. Una HU solo pasa a **Done** cuando todos sus criterios de aceptación están documentados y revisados.
