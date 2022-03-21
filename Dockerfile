FROM centos:7
RUN yum install java-1.8.0-openjdk -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.77/bin/apache-tomcat-8.5.77.tar.gz .
RUN tar -xvzf apache-tomcat-8.5.77.tar.gz
RUN mv apache-tomcat-8.5.77/* /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
