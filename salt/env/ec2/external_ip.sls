external_ip:
  cmd.run:
    - name: curl -s http://169.254.169.254/latest/meta-data/public-ipv4/ > /home/ubuntu/my_public_ip.txt; cat /home/ubuntu/my_public_ip.txt
    - unless: test -e /home/ubuntu/my_public_ip.txt
