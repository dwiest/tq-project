{% from "tomcat/map.jinja" import tomcat with context %}

tomcat_users:
  cmd.run: # backup dist file
    - name: cp {{tomcat.users.file.name}} {{tomcat.users.file.name}}.bak
    - unless: test -e {{tomcat.users.lockfile.name}}
  file.managed:
    - name: {{tomcat.users.file.name}}
    - source: {{tomcat.users.file.source}}
    - unless: test -e {{tomcat.users.lockfile.name}}

generate_user_password:
  cmd.run:
    - name: sed -i s/password1/`openssl rand -base64 12`/ {{tomcat.users.file.name}}
    - name: sed -i s/password2/`openssl rand -base64 12`/ {{tomcat.users.file.name}}
    - name: sed -i s/password3/`openssl rand -base64 12`/ {{tomcat.users.file.name}}
    - name: sed -i s/password4/`openssl rand -base64 12`/ {{tomcat.users.file.name}}
    - name: sed -i s/password5/`openssl rand -base64 12`/ {{tomcat.users.file.name}}
    - onchanges:
      - tomcat_users

users_prevent_overwrite:
  cmd.run:
    - name: touch {{tomcat.users.lockfile.name}}
    - onchanges:
      - generate_user_password
