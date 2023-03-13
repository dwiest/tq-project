{% from "tomcat/map.jinja" import tomcat with context %}

deploy_warfile:
  cmd.run:
    - name: unzip {{pillar['edg']['zipfile']['name']}} {{pillar['edg']['warfile']['name']}} -d {{tomcat.webapps.dir.name}}
    - unless: test -e {{tomcat.webapps.dir.name}}/{{pillar['edg']['warfile']['name']}} -o {{tomcat.webapps.dir.name}}/`{{pillar['edg']['warfile']['name']}} | sed s/\.war//`
