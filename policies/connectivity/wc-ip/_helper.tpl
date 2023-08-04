{{/* vim: set filetype=mustache: */}}

{{- define "isWcIpCheckEnabled" -}}
    {{- if and .Values.wcIpCheck.enabled (or .Values.wcIpCheck.deriveFromControlPlaneEndpoint.enabled .Values.wcIpCheck.ipRanges) }}
        {{- printf "true" -}}
    {{ else }}
        {{- printf "false" -}}
    {{- end }}
{{- end }}
