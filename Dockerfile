#Use base image - must have in Dockerfile.
FROM ubuntu:18.04

#Set WORKDIR
WORKDIR /home

COPY ../jenkinsSlaveJarFile/agent.jar .

#RUN commands during building image.
RUN apt-get update -y && apt-get install curl openjdk-11-jdk git maven vim -y

#Add user Jenkins with disabled password.
RUN adduser --disabled-password --gecos "" jenkins

#Install docker via the easiest way.
RUN curl -fsSL https://get.docker.com/ | sh