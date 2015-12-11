FROM centos:centos7
MAINTAINER Igor

ADD jre-8u66-linux-x64.rpm /tmp/jre-8u66-linux-x64.rpm
RUN rpm -ivh /tmp/jre-8u66-linux-x64.rpm
RUN rm /tmp/jre-8u66-linux-x64.rpm
ENV JAVA_HOME /usr/java/jre1.8.0_66
