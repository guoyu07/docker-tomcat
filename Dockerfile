FROM sumit/jdk1.7:latest
MAINTAINER Sumit Kumar Maji

#Java Environemtn Setup
ENV JAVA_HOME /usr/local/jdk1.7

#Install Tomcat 6
COPY apache-tomcat-6.0.48.tar.gz /usr/local/apache-tomcat-6.0.48.tar.gz
RUN tar -xzvf /usr/local/apache-tomcat-6.0.48.tar.gz -C /usr/local/
RUN mv /usr/local/apache-tomcat-6.0.48 /usr/local/tomcat6
RUN rm -rf apache-tomcat-6.0.48.tar.gz

ADD run.sh /root/run.sh
RUN chmod +x /root/run.sh

ADD applicationfiles/server.xml /usr/local/tomcat6/
ADD war/* /usr/local/tomcat6/webapps/
RUN chmod 777 /usr/local/tomcat6/webapps/*.war
#CMD ["/root/run.sh"]

ENTRYPOINT ["sh", "/root/run.sh"]

