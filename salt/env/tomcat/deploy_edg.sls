{% from "tomcat/map.jinja" import tomcat with context %}

zip_package:
  pkg.installed:
    - name: zip

deploy_warfile:
  cmd.run:
    - name: unzip {{pillar['edg']['zipfile']['name']}} {{pillar['edg']['warfile']['name']}} -d {{tomcat.webapps.dir.name}}
    - unless: test -e {{tomcat.webapps.dir.name}}/{{pillar['edg']['warfile']['name']}}
