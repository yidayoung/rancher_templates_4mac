version: '2'
services:
  jenkins-data:
    image: busybox
    labels:
      io.rancher.container.start_once: true
    volumes:
      - ${jenkins_dir}:/var/jenkins_home
  jenkins:
    image: jenkins-erlang
    ports:
      - ${jenkins_port}:3306
    tty: true
    stdin_open: true
    network_mode: "bridge"
    labels:
      io.rancher.sidekicks: jenkins-data
    volumes_from:
      - jenkins-data