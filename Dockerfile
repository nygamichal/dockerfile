#Dockerfile - Good practice
#Use always the smallest image to reduce disk space usage, instad of ubuntu, could be used busybox.
FROM ubuntu


#COPY whole content from catalog where located is dockerfile into container.
COPY . .

#Please use only one RUN to reduce disk space.
RUN apt update \
    && apt install curl vim -y \
    && mkdir -p /opt/test

#Please asign user instead of using root.
USER 10000

ENTRYPOINT ["date"]
CMD ["--help"]
#ENTRYPOINT will be always run as first, and then CMD will be run as argument for ENTRYPOINT
#Please build this image 
#docker build -t date:test .
#Then run 
#docker run date:test
#OR
#docker run date:test -R
#It will print time in different format instead of CMD ["--help"]