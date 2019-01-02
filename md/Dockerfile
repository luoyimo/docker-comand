FROM    hub.c.163.com/public/centos:6.7-tools
MAINTAINER huqi
RUN yum install -y java-1.8.0-openjdk.x86_64
ADD see-mapi-api-0.0.1-SNAPSHOT.jar  /data/see-mapi-api-0.0.1-SNAPSHOT.jar
ENV JAVA_VERSION 1.8.0
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.191.b12-0.el6_10.x86_64
CMD   ["java","-jar","/data/see-mapi-api-0.0.1-SNAPSHOT.jar","--spring.profiles.active=test"]