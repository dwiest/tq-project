tomcat_users:
  cmd.run: # backup dist file
    - name: cp /etc/tomcat9/tomcat-users.xml /etc/tomcat9/tomcat-users.xml.bak
    - unless: test -e /etc/tomcat9/.tomcat-users.lock
  file.managed:
    - name: /etc/tomcat9/tomcat-users.xml
    - source: salt://tomcat9/tomcat-users.xml?saltenv=base
    - unless: test -e /etc/tomcat9/.tomcat-users.lock

generate_user_password:
  cmd.run:
    - name: sed -i s/password1/`openssl rand -base64 12`/ /tmp/tomcat-users.xml
    - name: sed -i s/password2/`openssl rand -base64 12`/ /tmp/tomcat-users.xml
    - name: sed -i s/password3/`openssl rand -base64 12`/ /tmp/tomcat-users.xml
    - name: sed -i s/password4/`openssl rand -base64 12`/ /tmp/tomcat-users.xml
    - name: sed -i s/password5/`openssl rand -base64 12`/ /tmp/tomcat-users.xml
    - onchanges:
      - tomcat_users

prevent_overwrite:
  cmd.run:
    - name: touch /etc/tomcat9/.tomcat-users.lock
    - onchanges:
      - generate_user_password
