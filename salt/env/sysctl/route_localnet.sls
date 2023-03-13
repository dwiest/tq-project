net.ipv4.conf.all.route_localnet:
  sysctl.present:
    - value: 1

sysctl -p:
  cmd.run:
    - onchanges:
      - net.ipv4.conf.all.route_localnet
