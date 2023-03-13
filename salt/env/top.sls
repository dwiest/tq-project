base:
  '*':
    - ec2
    - apt.update
    - sysctl
    - iptables
    - java
    - tomcat
    - tomcat.configure_users
    - tomcat.deploy_edg
    - tomcat.enabled
    - tomcat.running
