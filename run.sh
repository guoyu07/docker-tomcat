#!/bin/bash

export JAVA_HOME="/usr/local/jdk1.7"
export PATH=$PATH:$JAVA_HOME/bin
CMD ["/usr/local/tomcat6/bin/startup.sh"]

# The container will run as long as the script is running, that's why
# we need something long-lived here
#exec tail -f /var/log/tomcat6/catalina.out
exec /bin/bash
