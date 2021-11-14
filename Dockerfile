FROM ubuntu
RUN apt update && apt install vim -y
RUN mkdir -p /opt/panda/alamakota
WORKDIR /opt/panda/
COPY sourcecode.txt alamakota/
EXPOSE 80
USER 10000
ENTRYPOINT ["sleep"]
CMD ["300"]