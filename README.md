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
├── README.md
├── CHANGELOG.md                       ← historial de versiones entregadas
├── docs/                              ← documento del proyecto por secciones
├── diagramas/casos-de-uso.puml        ← diagrama UML de casos de uso (PlantUML)
├── entregables/                       ← versiones oficiales en PDF
└── gestion/Bitacora_Equipo_GineSalud.docx ← bitácora del equipo
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

- **Metodología:** SCRUM, con estimación por Planning Poker y PERT.
- **Tablero Kanban:** <https://github.com/users/josv-sys/projects/1>
- **Bitácora:** [`gestion/Bitacora_Equipo_GineSalud.docx`](gestion/Bitacora_Equipo_GineSalud.docx)
- **Versiones:** [`CHANGELOG.md`](CHANGELOG.md) y tags de Git (`v1.0`, …).

## Normativa considerada

- Ley N.º 8968, *Ley de Protección de la Persona frente al Tratamiento de sus Datos Personales* (Costa Rica).
