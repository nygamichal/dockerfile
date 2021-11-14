FROM ubuntu
RUN apt update && apt install vim -y
CMD ["date"]