{% from "tomcat/map.jinja" import tomcat with context %}

tomcat-service-running:
  service.running:
    - name: {{tomcat.service.name}}
