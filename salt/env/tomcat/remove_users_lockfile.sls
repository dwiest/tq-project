{% from "tomcat/map.jinja" import tomcat with context %}

remove_users_lockfile:
  cmd.run:
    - name: rm -f {{tomcat.users.lockfile.name}}
