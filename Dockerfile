#Use base image - must have in Dockerfile.
FROM ubuntu:18.04

#Set WORKDIR
WORKDIR /home

#RUN commands during building image.
RUN apt-get update -y && apt-get install curl openjdk-11-jdk git maven vim -y \
    mkdir -p /opt/panda/alamakota

#Add user Jenkins with disabled password.
RUN adduser --disabled-password --gecos "" jenkins

#Install docker via the easiest way.
RUN curl -fsSL https://get.docker.com/ | sh

#Define WORKDIR on container.
WORKDIR /opt/panda/

COPY sourcecode.txt alamakota/

#EXOPOSE host port to container.
EXPOSE 80

#Set USER which will be used on container.
USER 10000

#EXECUTE sleep 300
ENTRYPOINT ["sleep"]
CMD ["300"]