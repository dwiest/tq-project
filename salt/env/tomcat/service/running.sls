{% from "tomcat/map.jinja" import tomcat with context %}
include:
  - tomcat.configure_users

tomcat-service-running:
  service.running:
    - name: {{tomcat.service.name}}
    - restart: True
    - watch:
      - sls: tomcat.configure_users
