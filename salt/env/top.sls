base:
  '*':
    - apt.update
    - ec2
    - sysctl
    - iptables
    - java
    - tomcat
    - tomcat.configure_users
    - tomcat.deploy_edg
    - tomcat.service.enabled
    - tomcat.service.running
