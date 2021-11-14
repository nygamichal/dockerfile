#Use base image - must have in Dockerfile.
FROM ubuntu

#RUN commands during building image.
RUN apt update && apt install vim -y \
    mkdir -p /opt/panda/alamakota

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