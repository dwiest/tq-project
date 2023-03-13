tomcat:
  iptables.append:
    - table: nat
    - chain: PREROUTING
    - jump: DNAT
    - dport: 80
    - protocol: tcp
    - to-destination: 127.0.0.1:8080
    - save: True
