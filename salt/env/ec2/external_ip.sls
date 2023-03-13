{% from "ec2/map.jinja" import ec2 with context %}

external_ip:
  cmd.run:
    - name: curl -s {{ec2.metadata_endpoint.public_ipv4}} > {{ec2.public_ip_file.name}}; cat {{ec2.public_ip_file.name}}
    - unless: test -e {{ec2.public_ip_file.name}}
