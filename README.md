# tq-project
## Installation ##

After cloning this repository run the following commands to install the necessary software and configuration files:
  
``cd tq-project``

``. ./install_salt.sh``

To configure your server run:

  ``sudo salt-call --local state.highstate | tee /tmp/highstate.out``

The command will take a few minutes to complete before displaying output (also saved to **/tmp/highstate.out**).

To verify the installation was successful run:

  ``curl http://localhost:8080/edg/``

You should get an HTML page back with a title of "Apache Tomcat" and some content.

You should also be able to connect to port 80 from a remote server, e.g.:

  ``curl http://this_server/edg/``

The public IP of your server should be stored in **/home/ubuntu/my_public_ip.txt**
