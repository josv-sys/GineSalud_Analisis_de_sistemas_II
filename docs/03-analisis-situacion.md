# 3. Análisis de situación

## Identificación del problema, necesidad u oportunidad

### Problema

GineSalud utiliza Microsoft Excel para la información administrativa, Google Calendar para las
citas y Google Cloud para los expedientes clínicos. Aunque estas herramientas permiten realizar
las actividades cotidianas, la información se encuentra distribuida entre diferentes plataformas,
lo que dificulta la consulta integrada de los datos, la coordinación de las actividades
administrativas y médicas y la generación de información útil para la toma de decisiones.
Además, al trabajar con información personal y clínica sensible, es necesario establecer
criterios claros para proteger los datos, controlar los accesos y mantener la integridad de los
expedientes.

**Problema principal:** mejorar la organización y gestión de la información de GineSalud mediante
una propuesta tecnológica que permita definir procesos y requerimientos claros, facilite la
administración de las citas y contribuya a la protección de los datos de la clínica.

### Necesidad

Una propuesta de solución que defina una estructura organizada para gestionar pacientes,
expedientes clínicos, citas médicas y procesos administrativos, considerando las funciones de
cada usuario (personal médico, recepción y administración), mecanismos de protección y control
de acceso, y la posibilidad de generar reportes e indicadores mediante Tableau.

### Oportunidad de mejora

- Organizar conceptualmente la información de las pacientes y sus expedientes clínicos.
- Mejorar la administración de la agenda médica y la coordinación de horarios.
- Facilitar la consulta de antecedentes y atenciones por parte del personal autorizado.
- Contemplar mecanismos de recordatorio y autogestión de citas.
- Facilitar el control de los ingresos diarios mediante el cierre de caja.
- Establecer una base para reportes e indicadores en Tableau.
- Definir criterios de seguridad, confidencialidad e integridad de la información.
- Diseñar una interfaz web que centralice estas funcionalidades según los permisos de cada usuario.

## Situación actual (AS-IS)

GineSalud cuenta con cuatro colaboradores: tres ginecólogos (incluido el propietario) y una
persona encargada de recepción y administración. La clínica utiliza herramientas independientes
para apoyar sus actividades. La recepción registra pacientes, programa y modifica citas y
coordina horarios; el personal médico consulta antecedentes y registra diagnósticos,
tratamientos y observaciones. También existen procesos de recetas y órdenes médicas, registro de
pagos, facturación y control de ingresos diarios.

### Dificultades identificadas

> Se plantean a partir del contexto y las necesidades descritas; no implican que todas hayan sido
> comprobadas mediante una auditoría de los procesos actuales.

| Área | Situación identificada | Necesidad de mejora |
|---|---|---|
| Gestión de información | Los datos se encuentran distribuidos entre distintas herramientas. | Definir una estructura organizada para la información de la clínica. |
| Registro de pacientes | Se requiere mantener actualizados los datos personales y de contacto. | Establecer un proceso de registro que valide la identificación y evite duplicados. |
| Agenda médica | La programación de citas requiere considerar la disponibilidad de cada especialista. | Definir una agenda que permita consultar horarios disponibles y evitar traslapes. |
| Expedientes clínicos | La información médica debe consultarse de manera organizada y protegerse adecuadamente. | Establecer criterios para consultar y registrar información clínica con acceso restringido. |
| Atención médica | Se necesita mantener información sobre diagnósticos, tratamientos y observaciones. | Definir un proceso estructurado para registrar las atenciones médicas. |
| Procesos administrativos | La clínica contempla el registro de pagos, la emisión de comprobantes y el cierre de caja. | Establecer procedimientos para organizar y controlar los ingresos. |
| Atención a las pacientes | Se contempla facilitar la gestión de citas y sus recordatorios. | Definir los requerimientos de recordatorios y autogestión de citas. |
| Gestión gerencial | La información operativa y financiera puede apoyar el análisis del negocio. | Establecer las bases para generar reportes e indicadores mediante Tableau. |
| Seguridad de la información | Se manejan datos personales y clínicos sensibles. | Definir controles de acceso, confidencialidad, integridad y protección de los datos. |

*Tabla 1. Dificultades de la organización.*

### Consecuencias para la organización

La distribución de la información dificulta la consulta conjunta de los datos administrativos y
médicos y limita el análisis del desempeño. El manejo de información clínica requiere especial
atención a la confidencialidad y al control de acceso. En el ámbito gerencial, disponer de
información organizada facilitaría reportes sobre ingresos, volumen de pacientes y tendencias de
atención (HU-10).

## Situación propuesta (TO-BE)

Análisis y diseño conceptual de una solución que establezca una estructura organizada para
gestionar pacientes, expedientes clínicos, citas y procesos administrativos, relacionada
directamente con las diez historias de usuario.

### Funcionamiento propuesto

1. **Registro de pacientes** (HU-01): validación de identificación única y expediente vacío asociado.
2. **Gestión de citas** (HU-02): programar, modificar o cancelar según disponibilidad; registrar motivo y liberar espacio.
3. **Consulta del expediente clínico** (HU-03): antecedentes, consultas previas, alergias y exámenes, solo personal autorizado.
4. **Registro de atenciones médicas** (HU-04): motivo, diagnóstico, tratamientos y observaciones con confirmación digital.
5. **Recordatorios de citas** (HU-05).
6. **Emisión de recetas y órdenes médicas** (HU-06): con información médica y firma requerida.
7. **Registro de pagos y facturación** (HU-07): método de pago y comprobante.
8. **Autogestión de citas mediante WhatsApp** (HU-08): la integración real no forma parte del alcance actual.
9. **Cierre diario de caja** (HU-09): resumen por método de pago y comparación de montos.
10. **Análisis gerencial** (HU-10): datos estructurados para indicadores en Tableau.

### Resultados previstos

- Mayor organización conceptual de los datos administrativos y clínicos.
- Procesos definidos para registrar pacientes y administrar citas médicas.
- Mejor organización de la información necesaria para la atención de las pacientes.
- Controles de acceso definidos para proteger los expedientes clínicos.
- Procesos documentados para recetas, órdenes médicas, pagos y cierres de caja.
- Base conceptual para analizar los ingresos y la actividad de la clínica.
- Requerimientos documentados que permitan planificar una eventual implementación.
