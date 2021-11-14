#Download docker image FROM
FROM openjdk:11.0
#Define ARGument 
ARG JAR_FILE=target/*.jar
#COPY files from defined argument location into specific location and filename.
COPY $JAR_FILE app.jar
#Execute command
ENTRYPOINT ["java", "-jar", "/app.jar"]