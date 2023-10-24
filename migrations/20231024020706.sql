{{- if eq .env "stg" }}
INSERT INTO "users" (age, name) VALUES (23, 'Mark');
DROP TABLE "users";
{{- end }}
