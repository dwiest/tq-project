tomcat:
  pkg:
    name: tomcat9
  tomcat-users:
    file: /etc/tomcat9/tomcat-users.xml
    source: salt://tomcat/tomcat-users.xml?saltenv=base
