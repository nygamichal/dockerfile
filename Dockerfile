FROM ubuntu

RUN apt update && apt install vim -y

RUN mkdir -p /opt/panda/alamakota

WORKDIR /opt/panda/alamakota

COPY sourcecode.txt .

CMD sleep 300