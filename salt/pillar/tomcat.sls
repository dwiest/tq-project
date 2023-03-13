tomcat:
  pkg:
    name: tomcat9
  service:
    name: tomcat9
  users:
    file:
      name: /etc/tomcat9/tomcat-users.xml
      source: salt://tomcat/tomcat-users.xml?saltenv=base
    lockfile:
      name: /etc/tomcat9/.tomcat-users.lock
  webapps:
    dir:
      name: /var/lib/tomcat9/webapps
