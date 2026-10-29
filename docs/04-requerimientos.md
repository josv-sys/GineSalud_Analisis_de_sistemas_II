# 4. Catálogo de requerimientos

Los requerimientos funcionales describen las acciones que deberá contemplar la solución
propuesta. Los requerimientos no funcionales establecen las condiciones de calidad, seguridad y
protección que deberán considerarse en su diseño.

## Requerimientos funcionales

| ID | Requerimiento funcional | Descripción | HU |
|---|---|---|---|
| RF-01 | Registro de pacientes | Permitir registrar los datos personales y de contacto de las pacientes, validar que la identificación sea única y asociar un expediente clínico vacío al registro. | HU-01 |
| RF-02 | Gestión de agenda de citas | Contemplar la programación, modificación y cancelación de citas, la consulta de disponibilidad por especialista, la prevención de traslapes y el registro del motivo de cancelación o reprogramación. | HU-02 |
| RF-03 | Consulta de expedientes clínicos | Permitir al personal médico autorizado buscar expedientes por nombre o identificación y consultar cronológicamente la información clínica disponible. | HU-03 |
| RF-04 | Registro de atenciones médicas | Registrar el motivo de consulta, el diagnóstico, los tratamientos y las observaciones clínicas, incluyendo la confirmación o firma digital del médico. | HU-04 |
| RF-05 | Recordatorios de citas | Contemplar el envío de recordatorios relacionados con las citas médicas, de acuerdo con las condiciones definidas para esta funcionalidad. | HU-05 |
| RF-06 | Emisión de recetas y órdenes médicas | Contemplar la generación de recetas electrónicas y órdenes de exámenes de laboratorio, la búsqueda de medicamentos y posologías frecuentes y el envío de la receta al correo registrado. | HU-06 |
| RF-07 | Registro de pagos y facturación | Registrar los cobros de las consultas, asociarlos con la cita o paciente, identificar el método de pago y generar comprobantes para impresión o envío digital. | HU-07 |
| RF-08 | Autogestión de citas mediante WhatsApp | Contemplar la autenticación de la paciente, la consulta de especialidades, médicos y horarios disponibles, y la confirmación de la cita mediante el canal indicado. | HU-08 |
| RF-09 | Cierre diario de caja | Contemplar un resumen de ingresos por método de pago, la comparación del efectivo recibido con el monto calculado y el bloqueo de modificaciones de los cobros del día después del cierre. | HU-09 |
| RF-10 | Análisis gerencial mediante Tableau | Plantear la organización y preparación de los datos operativos y financieros para generar reportes e indicadores en Tableau sobre ingresos, pacientes y tendencias de atención. | HU-10 |

*Tabla 2. Requerimientos funcionales.*

## Requerimientos no funcionales

| ID | Requerimiento no funcional | Descripción | Justificación |
|---|---|---|---|
| RNF-01 | Seguridad de la información | Controles de acceso según los roles de los usuarios, de manera que la información clínica solo pueda ser consultada por personal autorizado. | Proteger los datos personales y clínicos de las pacientes. |
| RNF-02 | Confidencialidad y privacidad | Protección de los datos personales y clínicos, y disposiciones aplicables al manejo de información médica. | La clínica maneja información sensible que requiere protección. |
| RNF-03 | Integridad de los datos | Validaciones para evitar identificaciones duplicadas y proteger la consistencia de la información, incluidas las restricciones de atenciones médicas y cierres de caja. | Mantener información confiable y evitar inconsistencias. |
| RNF-04 | Trazabilidad | Mecanismos para identificar las operaciones realizadas sobre la información y mantener controles sobre los registros. | Facilitar el seguimiento y control de la información. |
| RNF-05 | Disponibilidad y respaldo | Medidas de respaldo y recuperación de la información para reducir el riesgo de pérdida de datos. | Favorecer la continuidad de las actividades administrativas y médicas. |
| RNF-06 | Usabilidad | Pantallas y procesos claros y sencillos para el personal médico y administrativo. | Equipo de trabajo reducido que necesita procesos fáciles de utilizar. |
| RNF-07 | Organización y mantenibilidad | Documentar de manera ordenada los datos, requerimientos y funcionalidades como base para futuras modificaciones. | Facilitar una eventual etapa de desarrollo e implementación. |
| RNF-08 | Capacidad de análisis de información | La estructura de los datos deberá contemplar la información necesaria para los reportes e indicadores previstos para Tableau. | Apoyar el análisis gerencial y la toma de decisiones. |

*Tabla 3. Requerimientos no funcionales.*

## Matriz de trazabilidad

| HU | RF | Actor | Paquete UML | RNF relacionados |
|---|---|---|---|---|
| HU-01 | RF-01 | Recepcionista | Administración (Recepción) | RNF-03, RNF-06 |
| HU-02 | RF-02 | Recepcionista | Administración (Recepción) | RNF-03, RNF-06 |
| HU-03 | RF-03 | Ginecólogo | Atención Médica | RNF-01, RNF-02 |
| HU-04 | RF-04 | Ginecólogo | Atención Médica | RNF-01, RNF-03, RNF-04 |
| HU-05 | RF-05 | Paciente | Atención al Paciente | RNF-02 |
| HU-06 | RF-06 | Ginecólogo | Atención Médica | RNF-01, RNF-02 |
| HU-07 | RF-07 | Recepcionista | Administración (Recepción) | RNF-03, RNF-04 |
| HU-08 | RF-08 | Paciente | Atención al Paciente | RNF-01, RNF-02 |
| HU-09 | RF-09 | Recepcionista | Administración (Recepción) | RNF-03, RNF-04 |
| HU-10 | RF-10 | Dueño de la clínica | Gestión Gerencial | RNF-05, RNF-08 |
