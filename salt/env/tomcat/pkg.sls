{% from "tomcat/map.jinja" import tomcat with context %}

tomcat_package:
  pkg.installed:
    - name: {{tomcat.pkg.name}}
