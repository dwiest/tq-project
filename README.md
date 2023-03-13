# tq-project
Please run install_salt.sh from this directory to install and start a local salt-minion service.

To configure your server please run:

  sudo salt-call --local state.highstate

To verify the installation was successful, please run:

  curl http://localhost:8080/edg/

You should get an HTML page back with a title of "Apache Tomcat" and some page content.

You should also be able to connect to port 80 from a remote server, e.g.:

  curl http://this_server/edg

The public IP of your server should be stored in /home/ubuntu/my_public_ip.txt
