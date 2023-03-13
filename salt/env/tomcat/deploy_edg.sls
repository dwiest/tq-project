deploy_edg:
  cmd.run:
    - name: unzip /home/ubuntu/TopBraid-EDG.zip edg.war -d /var/lib/tomcat9/webapps
    - unless: test -e /var/lib/tomcat9/webapps/edg.war -o /var/lib/tomcat9/webapps/edg
