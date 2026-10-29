# GineSalud — Análisis y Diseño Conceptual de un Sistema de Gestión Clínica

Proyecto del curso **Análisis de Sistemas II** — Escuela de Ingeniería Informática,
Universidad Politécnica Internacional (San José, Costa Rica).

**Profesor:** Randolph Vega Ramírez

| Integrante |
|---|
| Melanny Fiorella Víquez Saborío |
| Josue Villarreal Saavedra |
| Ariana Céspedes Alfaro |
| David Acuña Cordero |

---

## Descripción

Nuestro equipo consultor fue contratado por **GineSalud**, una clínica privada pequeña
especializada en ginecología y obstetricia (3 ginecólogos y 1 recepcionista), que hoy
gestiona su información con herramientas independientes: Microsoft Excel (información
administrativa), Google Calendar (citas) y Google Cloud (expedientes clínicos).

El proyecto realiza el **análisis y diseño conceptual** de una solución tecnológica que
centralice la gestión de pacientes, citas, expedientes clínicos, pagos y cierre de caja,
con una estructura de datos preparada para generar indicadores en **Tableau**.

> **Alcance:** el proyecto se limita al análisis, la documentación y el diseño.
> No incluye programación, implementación de bases de datos, despliegue en servidores,
> pruebas de software ni integración con API externas reales.

## Estructura del repositorio

```
.
├── README.md                     ← este archivo
├── CHANGELOG.md                  ← historial de versiones de los entregables
├── CONTRIBUTING.md               ← flujo de trabajo del equipo (ramas, commits, Kanban)
├── docs/                         ← documentación del proyecto en Markdown (versionable)
│   ├── 01-introduccion.md        ← introducción, objetivo, justificación y alcance
│   ├── 02-contexto-organizacion.md ← ficha de la empresa, procesos de negocio, cadena de valor
│   ├── 03-analisis-situacion.md  ← problema, AS-IS, TO-BE
│   ├── 04-requerimientos.md      ← RF y RNF con trazabilidad
│   ├── 05-historias-usuario.md   ← HU-01 a HU-10 con criterios de aceptación
│   └── 06-referencias.md
├── diagramas/
│   └── casos-de-uso.puml         ← fuente PlantUML del diagrama de casos de uso
├── entregables/                  ← versiones oficiales (PDF) entregadas al profesor
├── gestion/
│   ├── kanban.md                 ← tablero Kanban (espejo del GitHub Project)
│   ├── Bitacora_Equipo_GineSalud.docx ← bitácora oficial (formato del curso)
│   ├── bitacora.md               ← la misma bitácora en Markdown
│   ├── plantillas/               ← formato de bitácora para equipos (vacío)
│   └── apendice-evidencia.md     ← texto listo para el Apéndice del documento
├── scripts/
│   └── crear-kanban.sh           ← crea etiquetas, issues y el tablero en GitHub
└── .github/                      ← plantillas de issues (HU / tareas) y de pull requests
```

## Historias de usuario

| ID | Historia | Actor | Requerimiento |
|---|---|---|---|
| HU-01 | Registro de nuevas pacientes | Recepcionista | RF-01 |
| HU-02 | Gestión de agenda de citas | Recepcionista | RF-02 |
| HU-03 | Consulta de expediente clínico | Ginecólogo | RF-03 |
| HU-04 | Registro de atenciones médicas | Ginecólogo | RF-04 |
| HU-05 | Recordatorios automáticos de citas | Paciente | RF-05 |
| HU-06 | Emisión de recetas y órdenes médicas | Ginecólogo | RF-06 |
| HU-07 | Registro de pagos y facturación | Recepcionista | RF-07 |
| HU-08 | Autogestión de citas por WhatsApp | Paciente | RF-08 |
| HU-09 | Cierre de caja diario | Recepcionista | RF-09 |
| HU-10 | Análisis gerencial en Tableau | Dueño de la clínica | RF-10 |

Detalle completo en [`docs/05-historias-usuario.md`](docs/05-historias-usuario.md).

## Gestión del proyecto

- **Metodología:** SCRUM (backlog priorizado y sprints), con estimación por Planning Poker y PERT.
- **Tablero Kanban:** <https://github.com/users/josv-sys/projects/1> (GitHub Projects), con una
  tarjeta (issue) por historia de usuario y por tarea de documentación.
  Copia en Markdown: [`gestion/kanban.md`](gestion/kanban.md).
- **Bitácora:** [`gestion/bitacora.md`](gestion/bitacora.md).
- **Control de cambios:** cada cambio a la documentación se registra con un commit y,
  al entregar, con una versión en [`CHANGELOG.md`](CHANGELOG.md) y un tag de Git (`v1.0`, `v1.1`, …).

## Cómo ver el diagrama UML

El diagrama de casos de uso está en formato PlantUML. Para verlo:

1. Copiar el contenido de [`diagramas/casos-de-uso.puml`](diagramas/casos-de-uso.puml)
   en <https://www.plantuml.com/plantuml/uml/>, o
2. Usar la extensión *PlantUML* de VS Code (`Alt + D` para previsualizar).

## Normativa considerada

- Ley N.º 8968, *Ley de Protección de la Persona frente al Tratamiento de sus Datos Personales* (Costa Rica).
