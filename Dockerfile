FROM busybox:latest
ENTRYPOINT ["echo"]
CMD ["-e", "lalala\aasd"]