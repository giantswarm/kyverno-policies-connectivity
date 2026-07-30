{{/* vim: set filetype=mustache: */}}

{{- define "isWcIpCheckEnabled" -}}
    {{- if and .Values.wcIpCheck.enabled (or .Values.wcIpCheck.deriveFromControlPlaneEndpoint.enabled .Values.wcIpCheck.ipRanges) }}
        {{- printf "true" -}}
    {{ else }}
        {{- printf "false" -}}
    {{- end }}
{{- end }}

{{- define "preinstallHookAnnotations" -}}
"helm.sh/hook-delete-policy": "before-hook-creation,hook-succeeded,hook-failed"
"helm.sh/hook": "pre-install,pre-upgrade"
{{- end -}}

{{/*
Common labels
*/}}
{{- define "labels.common" -}}
app.kubernetes.io/name: {{ .Chart.Name | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
application.giantswarm.io/team: {{ index .Chart.Annotations "io.giantswarm.application.team" | quote }}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" | quote }}
{{- end -}}
