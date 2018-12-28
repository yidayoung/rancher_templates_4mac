version: '2'
services:
  mysql-data:
    image: busybox
    labels:
      io.rancher.container.start_once: true
    volumes:
      - ${mysql_dir}:/var/lib/mysql
  mysql:
    image: ${mysql_image}
    ports:
      - ${mysql_lb_port}:3306
    environment:
{{- if eq .Values.mysql_allow_empty_password "yes"}}
      MYSQL_ALLOW_EMPTY_PASSWORD: ${mysql_allow_empty_password}
{{- end}}
{{- if (.Values.mysql_database)}}
      MYSQL_DATABASE: ${mysql_database}
{{- end}}
{{- if eq .Values.mysql_onetime_password "yes"}}
      MYSQL_ONETIME_PASSWORD: ${mysql_onetime_password}
{{- end}}
{{- if (.Values.mysql_password)}}
      MYSQL_PASSWORD: ${mysql_password}
{{- end}}
{{- if eq .Values.mysql_random_root_password "yes"}}
      MYSQL_RANDOM_ROOT_PASSWORD: ${mysql_random_root_password}
{{- end}}
      MYSQL_ROOT_PASSWORD: ${mysql_root_password}
{{- if (.Values.mysql_user)}}
      MYSQL_USER: ${mysql_user}
{{- end}}
    tty: true
    stdin_open: true
    network_mode: "bridge"
    labels:
      io.rancher.sidekicks: mysql-data
    volumes_from:
      - mysql-data