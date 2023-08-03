{{/* vim: set filetype=mustache: */}}

{{- define "preinstallHookAnnotations" -}}
"helm.sh/hook-delete-policy": "before-hook-creation,hook-succeeded,hook-failed"
"helm.sh/hook": "pre-install,pre-upgrade"
{{- end -}}
