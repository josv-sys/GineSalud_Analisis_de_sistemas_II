#!/usr/bin/env bash
# Crea en GitHub las etiquetas, los issues (HU y tareas) y el tablero Kanban
# (GitHub Project) del proyecto GineSalud.
#
# Requisitos: GitHub CLI autenticado con permiso de proyectos:
#   gh auth login --scopes project
# Uso (desde la raíz del repositorio):
#   bash scripts/crear-kanban.sh
set -euo pipefail

OWNER="josv-sys"
REPO="$OWNER/GineSalud_Analisis_de_sistemas_II"
PROJECT_TITLE="GineSalud - Tablero Kanban"

# ---------------------------------------------------------------- etiquetas
label() { gh label create "$1" --repo "$REPO" --color "$2" --description "$3" --force; }

label "historia-de-usuario" "1D76DB" "Historia de usuario del backlog del producto"
label "documentacion"       "0E8A16" "Tarea de elaboración del documento"
label "apendice"            "5319E7" "Apéndice de evidencia"
label "recepcion"           "FBCA04" "Actor: Recepcionista"
label "area-medica"         "D93F0B" "Actor: Ginecólogo"
label "paciente"            "C5DEF5" "Actor: Paciente"
label "gerencial"           "BFD4F2" "Actor: Dueño de la clínica"
label "prioridad-alta"      "B60205" "Prioridad alta (propuesta)"
label "prioridad-media"     "E99695" "Prioridad media (propuesta)"
label "prioridad-baja"      "F9D0C4" "Prioridad baja (propuesta)"

# ------------------------------------------------------------------ tablero
PROJECT_NUM=$(gh project list --owner "$OWNER" --format json \
  --jq ".projects[] | select(.title==\"$PROJECT_TITLE\") | .number" | head -n1)
if [ -z "$PROJECT_NUM" ]; then
  PROJECT_NUM=$(gh project create --owner "$OWNER" --title "$PROJECT_TITLE" --format json --jq '.number')
fi
gh project link "$PROJECT_NUM" --owner "$OWNER" --repo "$REPO" || true

PROJECT_ID=$(gh project view "$PROJECT_NUM" --owner "$OWNER" --format json --jq '.id')
STATUS_FIELD=$(gh project field-list "$PROJECT_NUM" --owner "$OWNER" --format json \
  --jq '.fields[] | select(.name=="Status") | .id')
status_option() {
  gh project field-list "$PROJECT_NUM" --owner "$OWNER" --format json \
    --jq ".fields[] | select(.name==\"Status\") | .options[] | select(.name==\"$1\") | .id"
}
TODO=$(status_option "Todo")
DOING=$(status_option "In Progress")
DONE=$(status_option "Done")

# Crea un issue (si no existe uno con el mismo título), lo agrega al tablero
# y lo coloca en la columna indicada.
# Uso: card "<título>" "<etiquetas>" "<columna-id>" "<asignado|->" < cuerpo
card() {
  local title="$1" labels="$2" column="$3" assignee="$4" body url item
  body=$(cat)
  url=$(gh issue list --repo "$REPO" --state all --search "\"$title\" in:title" \
          --json title,url --jq ".[] | select(.title==\"$title\") | .url" | head -n1)
  if [ -z "$url" ]; then
    local args=(--repo "$REPO" --title "$title" --label "$labels" --body "$body")
    [ "$assignee" != "-" ] && args+=(--assignee "$assignee")
    url=$(gh issue create "${args[@]}")
  fi
  item=$(gh project item-add "$PROJECT_NUM" --owner "$OWNER" --url "$url" --format json --jq '.id')
  gh project item-edit --project-id "$PROJECT_ID" --id "$item" \
    --field-id "$STATUS_FIELD" --single-select-option-id "$column" >/dev/null
  if [ "$column" = "$DONE" ]; then
    gh issue close "$url" --repo "$REPO" >/dev/null 2>&1 || true
  fi
  echo "✔ $title"
}

# ------------------------------------------------- historias de usuario (HU)
hu() {
  # hu <id> <título> <labels> <rf> <como> <deseo> <para> <criterio1> <criterio2> <criterio3>
  card "$1 — $2" "historia-de-usuario,$3" "$TODO" "-" <<EOF
**Como** $5, **deseo** $6, **de manera que** $7.

### Criterios de aceptación
- [ ] $8
- [ ] $9
- [ ] ${10}

**Requerimiento relacionado:** $4
**Estimación (Planning Poker):** _pendiente_

Detalle: [docs/05-historias-usuario.md](../blob/main/docs/05-historias-usuario.md)
EOF
}

hu "HU-01" "Registro de nuevas pacientes" "recepcion,prioridad-alta" "RF-01" \
  "recepcionista de la clínica" "registrar nuevas pacientes en el sistema" \
  "se mantenga actualizada la base de datos y se agilice la atención presencial" \
  "Ingresar datos personales (nombre, identificación, contacto, fecha de nacimiento, contacto de emergencia)." \
  "Validar que el número de identificación sea único para evitar duplicados." \
  "Al guardar, se genera automáticamente un expediente clínico en blanco asociado a la paciente."

hu "HU-02" "Gestión de agenda de citas" "recepcion,prioridad-alta" "RF-02" \
  "recepcionista de la clínica" "programar, modificar y cancelar citas médicas" \
  "se organice la agenda de los especialistas y se eviten solapamientos de horarios" \
  "Visualización de la disponibilidad de agenda en tiempo real por especialista." \
  "Bloqueo automático de horarios ocupados para evitar traslapes." \
  "En cancelación o reprogramación se solicita un motivo y se libera el espacio en la agenda."

hu "HU-03" "Consulta de expediente clínico" "area-medica,prioridad-alta" "RF-03" \
  "ginecólogo" "consultar el expediente clínico de una paciente" \
  "pueda revisar su historial médico previo o durante la consulta" \
  "Búsqueda rápida por nombre o número de identificación." \
  "Visualización cronológica de consultas previas, antecedentes médicos, alergias y exámenes de laboratorio." \
  "Acceso restringido únicamente a médicos autorizados."

hu "HU-04" "Registro de atenciones médicas" "area-medica,prioridad-alta" "RF-04" \
  "ginecólogo" "registrar diagnósticos, tratamientos y observaciones médicas" \
  "el historial clínico de cada paciente permanezca actualizado" \
  "Formulario estructurado para motivo de consulta, diagnóstico y observaciones clínicas." \
  "Firma o confirmación digital del médico que realiza la entrada." \
  "Los datos guardados no podrán modificarse sin dejar un registro de auditoría de cambios."

hu "HU-05" "Recordatorios automáticos de citas" "paciente,prioridad-media" "RF-05" \
  "paciente" "recibir recordatorios de mis citas previas a la fecha programada" \
  "pueda reducir el riesgo de olvidarla o reprogramar a tiempo" \
  "Notificación automática por correo electrónico o SMS con 24/48 horas de anticipación." \
  "Incluye fecha, hora, especialista y ubicación." \
  "Opción para confirmar o cancelar la asistencia desde el mensaje."

hu "HU-06" "Emisión de recetas y órdenes médicas" "area-medica,prioridad-media" "RF-06" \
  "ginecólogo" "generar recetas electrónicas y órdenes de exámenes de laboratorio" \
  "la paciente reciba indicaciones claras y con validez oficial" \
  "Documentos digitales estructurados con los datos de la clínica y firma médica." \
  "Búsqueda rápida de medicamentos y posología frecuente." \
  "Envío automático de la receta digital al correo registrado de la paciente."

hu "HU-07" "Registro de pagos y facturación de consultas" "recepcion,prioridad-alta" "RF-07" \
  "recepcionista de la clínica" "registrar el cobro de las consultas y emitir comprobantes de pago" \
  "se mantenga el control de ingresos por cada atención brindada" \
  "Selección de la cita o paciente para asociar el cobro." \
  "Registro del método de pago (efectivo, tarjeta, transferencia)." \
  "Generación del comprobante para impresión o envío digital."

hu "HU-08" "Autogestión de citas en línea (WhatsApp)" "paciente,prioridad-baja" "RF-08" \
  "paciente" "solicitar y consultar mis citas médicas a través de WhatsApp" \
  "pueda gestionar mi atención sin necesidad de llamar por teléfono" \
  "El asistente autentica a la paciente por número de teléfono o cédula registrada." \
  "Menú interactivo para consultar especialidades, médicos y horarios libres." \
  "Confirmación automática de la cita con fecha, hora y ubicación en el chat."

hu "HU-09" "Cierre de caja diario" "recepcion,prioridad-media" "RF-09" \
  "recepcionista de la clínica" "realizar el arqueo y cierre de caja al final de la jornada" \
  "se cuadren los montos cobrados en efectivo y otros medios con las transacciones registradas" \
  "Reporte resumido de ingresos diarios agrupados por método de pago." \
  "Conteo de efectivo ingresado frente al total calculado por el sistema." \
  "Bloqueo de modificaciones en los cobros del día una vez completado el cierre."

hu "HU-10" "Análisis gerencial de ingresos y pacientes en Tableau" "gerencial,prioridad-baja" "RF-10" \
  "dueño de la clínica" "visualizar reportes integrados en Tableau sobre volumen de pacientes, tendencias de atención y ganancias" \
  "pueda evaluar el desempeño financiero y operativo del negocio para la toma de decisiones estratégicas" \
  "Conexión segura o exportación estructurada de los datos operativos y financieros hacia Tableau." \
  "Dashboards interactivos con ingresos por periodo, especialidad y médico." \
  "Gráficos de comportamiento de pacientes (frecuencia, nuevas vs. recurrentes, ausentismo)."

# ------------------------------------------------- tareas de documentación
task() { card "$1" "$2" "$3" "$4" <<< "$5"; }

task "DOC: Introducción, objetivo general, justificación y alcance" "documentacion" "$DONE" "-" "Sección 1 del documento. Ver docs/01-introduccion.md"
task "DOC: Ficha de la empresa y contexto del negocio" "documentacion" "$DONE" "-" "Incisos a–k. Ver docs/02-contexto-organizacion.md"
task "DOC: Modelado de procesos de negocio" "documentacion" "$DONE" "-" "Procesos A (admisión y citas), B (atención médica) y C (facturación y cierre)."
task "DOC: Cadena de valor" "documentacion" "$DONE" "-" "Actividades primarias y de apoyo."
task "DOC: Identificación de problema, necesidad y oportunidad" "documentacion" "$DONE" "-" "Ver docs/03-analisis-situacion.md"
task "DOC: Situación actual (AS-IS) y propuesta (TO-BE)" "documentacion" "$DONE" "-" "Incluye Tabla 1. Dificultades de la organización."
task "DOC: Catálogo de requerimientos funcionales y no funcionales" "documentacion" "$DONE" "-" "RF-01 a RF-10 y RNF-01 a RNF-08. Ver docs/04-requerimientos.md"
task "DOC: Diagrama UML de casos de uso" "documentacion" "$DONE" "-" "Fuente PlantUML en diagramas/casos-de-uso.puml"
task "DOC: Historias de usuario con criterios de aceptación" "documentacion" "$DONE" "-" "HU-01 a HU-10. Ver docs/05-historias-usuario.md"
task "DOC: Referencias (formato APA)" "documentacion" "$DONE" "-" "Ver docs/06-referencias.md"

task "APÉNDICE: Repositorio con documentación versionada" "documentacion,apendice" "$DOING" "$OWNER" "Estructura del repositorio, README, CHANGELOG y tags de versión."
task "APÉNDICE: Tablero Kanban" "documentacion,apendice" "$DOING" "$OWNER" "GitHub Project con HU y tareas; capturas para el documento."
task "APÉNDICE: Bitácora del equipo" "documentacion,apendice" "$DOING" "$OWNER" "Completar gestion/bitacora.md según el formato de bitácora para equipos."

task "DISEÑO: Mockups funcionales de las pantallas principales" "documentacion" "$TODO" "-" "Comprometido en el alcance del proyecto."
task "DISEÑO: Modelo entidad-relación" "documentacion" "$TODO" "-" "Comprometido en el alcance del proyecto."
task "PLAN: Estimación con Planning Poker" "documentacion" "$TODO" "-" "Estimar en puntos cada HU del backlog."
task "PLAN: Estimación PERT" "documentacion" "$TODO" "-" "Tiempo optimista, más probable y pesimista por actividad."
task "PLAN: Priorización del backlog y planificación de sprints (SCRUM)" "documentacion" "$TODO" "-" "Definir sprints a partir del backlog priorizado."

echo
echo "Tablero listo: https://github.com/users/$OWNER/projects/$PROJECT_NUM"
