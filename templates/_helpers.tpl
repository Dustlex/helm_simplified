{{/*
Полное имя ресурса
Принимает: dict с полем "component" (строка)
Возвращает: <имя-релиза>-<component>
Пример: my-release-db
*/}}
{{- define "next_chart.fullname" -}}
{{ .Release.Name }}-{{ .component }}
{{- end }}


{{/*
Лейблы уровня metadata (для самого Deployment/Service/PVC)
Принимает: dict с полями "Release" и "component"
Возвращает: app: <имя-релиза>-<component>
Пример:
  app: my-release-db
*/}}
{{- define "next_chart.labels" -}}
app: {{ .Release.Name }}-{{ .component }}
{{- end }}


{{/*
Селекторные лейблы (для matchLabels и template labels)
Принимает: dict с полями "Release" и "component"
Возвращает: project: <имя-релиза>-<component>
Пример:
  project: my-release-db
*/}}
{{- define "next_chart.selectorLabels" -}}
project: {{ .Release.Name }}-{{ .component }}
{{- end }}
