{% from "tomcat/map.jinja" import tomcat with context %}

tomcat-service-enabled:
  service.enabled:
    - name: {{tomcat.service.name}}
