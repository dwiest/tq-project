# tq-project
## Installation ##

After cloning this repository, change to the tq-project directory and run "**. ./install_salt.sh**" to install the necessary software and configuration files.

To configure your server run:

  sudo salt-call --local state.highstate

To verify the installation was successful run:

  curl http://localhost:8080/edg/

You should get an HTML page back with a title of "Apache Tomcat" and some page content.

You should also be able to connect to port 80 from a remote server, e.g.:

  curl http://this_server/edg

The public IP of your server should be stored in /home/ubuntu/my_public_ip.txt
