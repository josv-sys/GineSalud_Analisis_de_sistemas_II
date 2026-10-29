# 5. Historias de usuario

Historias definidas para identificar las necesidades de GineSalud, priorizadas según su impacto
en la operación de la clínica y las necesidades del cliente. Cada historia tiene una tarjeta
(issue) en el tablero Kanban del repositorio.

---

## HU-01 — Registro de nuevas pacientes

**Como** recepcionista de la clínica, **deseo** registrar nuevas pacientes en el sistema,
**de manera que** se mantenga actualizada la base de datos y se agilice la atención presencial.

**Criterios de aceptación**
- [ ] El sistema debe permitir ingresar datos personales (nombre, identificación, contacto, fecha de nacimiento, contacto de emergencia).
- [ ] Se debe validar que el número de identificación sea único para evitar duplicados.
- [ ] Al guardar el registro, se genera automáticamente un expediente clínico en blanco asociado a la paciente.

## HU-02 — Gestión de agenda de citas

**Como** recepcionista de la clínica, **quiero** programar, modificar y cancelar citas médicas,
**de manera que** se organice la agenda de los especialistas y se eviten solapamientos de horarios.

**Criterios de aceptación**
- [ ] Visualización de la disponibilidad de agenda en tiempo real por especialista.
- [ ] El sistema debe bloquear automáticamente horarios ocupados para evitar traslapes.
- [ ] En caso de cancelación o reprogramación, el sistema debe solicitar un motivo y liberar el espacio en la agenda.

## HU-03 — Consulta de expediente clínico

**Como** ginecólogo, **deseo** consultar el expediente clínico de una paciente, **de manera que**
pueda revisar su historial médico previo o durante la consulta.

**Criterios de aceptación**
- [ ] Búsqueda rápida por nombre o número de identificación.
- [ ] Visualización cronológica de consultas previas, antecedentes médicos, alergias y exámenes de laboratorio.
- [ ] Acceso restringido únicamente a médicos autorizados para resguardar la privacidad de los datos.

## HU-04 — Registro de atenciones médicas

**Como** ginecólogo, **deseo** registrar diagnósticos, tratamientos y observaciones médicas,
**de manera que** el historial clínico de cada paciente permanezca actualizado.

**Criterios de aceptación**
- [ ] Formulario estructurado para ingresar motivo de consulta, diagnóstico y observaciones clínicas.
- [ ] Firma o confirmación digital del médico que realiza la entrada.
- [ ] Los datos guardados en el expediente no podrán ser modificados sin dejar un registro de auditoría de cambios.

## HU-05 — Recordatorios automáticos de citas

**Como** paciente, **deseo** recibir recordatorios de mis citas previas a la fecha programada,
**de manera que** pueda reducir el riesgo de olvidarla o reprogramar a tiempo.

**Criterios de aceptación**
- [ ] Envío automático de notificaciones vía correo electrónico o SMS con 24/48 horas de anticipación.
- [ ] Inclusión de detalles clave: fecha, hora, especialista y ubicación.
- [ ] Opción para confirmar o cancelar la asistencia directamente desde el mensaje recibido.

## HU-06 — Emisión de recetas y órdenes médicas

**Como** ginecólogo, **quiero** generar recetas electrónicas y órdenes de exámenes de laboratorio,
**de manera que** la paciente reciba indicaciones claras y con validez oficial.

**Criterios de aceptación**
- [ ] Generación de documentos en formato digital estructurado con los datos de la clínica y firma médica.
- [ ] Módulo de búsqueda rápida de medicamentos y posología frecuente.
- [ ] Envío automático de la receta digital al correo electrónico registrado de la paciente.

## HU-07 — Registro de pagos y facturación de consultas

**Como** recepcionista de la clínica, **deseo** registrar el cobro de las consultas y emitir
comprobantes de pago, **de manera que** se mantenga el control de ingresos por cada atención brindada.

**Criterios de aceptación**
- [ ] Selección de la cita o paciente para asociar el cobro correspondiente.
- [ ] Registro del método de pago utilizado (efectivo, tarjeta, transferencia).
- [ ] Generación del comprobante de pago para impresión o envío digital.

## HU-08 — Autogestión de citas en línea

**Como** paciente, **deseo** solicitar y consultar mis citas médicas a través de WhatsApp,
**de manera que** pueda gestionar mi atención sin necesidad de llamar por teléfono.

**Criterios de aceptación**
- [ ] El bot o asistente de WhatsApp debe autenticar a la paciente mediante su número de teléfono o cédula registrada.
- [ ] Menú interactivo en el chat para consultar especialidades disponibles, médicos y horarios libres.
- [ ] Envío automático de confirmación de cita con los detalles de fecha, hora y ubicación directamente en el chat.

> La integración real con WhatsApp no forma parte del alcance actual (solo diseño conceptual).

## HU-09 — Cierre de caja diario

**Como** recepcionista de la clínica, **deseo** realizar el arqueo y cierre de caja al final de la
jornada, **de manera que** se cuadren los montos cobrados en efectivo y otros medios con las
transacciones registradas.

**Criterios de aceptación**
- [ ] Reporte resumido de ingresos diarios agrupados por método de pago.
- [ ] Conteo de efectivo ingresado frente al total calculado por el sistema.
- [ ] Bloqueo de modificaciones en los cobros del día una vez completado el cierre.

## HU-10 — Análisis gerencial de ingresos y pacientes en Tableau

**Como** dueño de la clínica, **deseo** visualizar reportes integrados en Tableau sobre el volumen
de pacientes, tendencias de atención y ganancias generadas, **de manera que** pueda evaluar el
desempeño financiero y operativo del negocio para la toma de decisiones estratégicas.

**Criterios de aceptación**
- [ ] Conexión segura o exportación estructurada de los datos operativos y financieros de la clínica hacia Tableau.
- [ ] Dashboards interactivos que muestren métricas clave de ingresos por periodo, especialidad y médico.
- [ ] Gráficos analíticos de comportamiento de pacientes (frecuencia de visitas, nuevas pacientes vs. recurrentes y tasa de ausentismo).

---

*Tabla 4. Historias de Usuario Clínica GineSalud.*
