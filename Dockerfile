FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get -y install openjdk-8-jdk wget
RUN mkdir /opt/tomcat
RUN wget http://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.16/bin/apache-tomcat-8.5.16.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-8.5.16/* /opt/tomcat/
EXPOSE 8080
CMD /opt/tomcat/bin/startup.sh run
