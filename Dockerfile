FROM ubuntu
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