{{- define "backendapi-chart.name" -}}
{{- default .Values.nameOverride .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "backendapi-chart.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Values.nameOverride .Chart.Name -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end }}

{{- define "backendapi-chart.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" -}}
{{- end }}

{{- define "backendapi-chart.namespace" -}}
{{- default "project-testing" .Values.namespaceOverride -}}
{{- end }}

{{- define "backendapi-chart.app" -}}
{{- default "httpd" .Values.appOverride -}}
{{- end }}