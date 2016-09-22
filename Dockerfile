FROM ubuntu:16.04

RUN apt-get update && apt-get install -y git maven
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:webupd8team/java

RUN echo debconf shared/accepted-oracle-license-v1-1 select true | \
  debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | \
  debconf-set-selections
RUN apt-get update && apt-get install -y oracle-java8-installer

COPY ideaIC-latest-installer /tmp
RUN /tmp/ideaIC-latest-installer

COPY mysql-latest-installer /tmp
RUN /tmp/mysql-latest-installer
