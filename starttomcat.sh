#!/bin/bash
#sudo rm -r /home/master/projects/Home
echo "STARTING THE DOCKER TOMCAT WEB CONTAINER!!"
#docker run -it -v /home/master/projects:/var/lib/tomcat6/webapps -p 8989:8080 --privileged=true -d sumit/demo
#docker run -it --privileged=true --name=$1 -h $2 -d sumit/tomcat /bin/bash
docker run -it -d --privileged=true --name=$1 -h $2 sumit/tomcat
echo "PROCESS SUCCESSFUL!!!!!!!!!!!!!!!!!!!!!!!!"
