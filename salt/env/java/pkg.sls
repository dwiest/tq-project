{% from "java/map.jinja" import java with context %}

java_package:
  pkg.installed:
    - name: {{java.pkg.name}}
