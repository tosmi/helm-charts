
{{/*
Create the name of the service account to use
*/}}
{{- define "rhacs.serviceAccountName" -}}
  {{- if .Values.serviceAccount.create }}
    {{- default .Values.serviceAccount.name }}
  {{- else }}
    {{- default "temp-serviceaccount" }}
  {{- end }}
{{- end }}
