# syntax=docker/dockerfile:1
FROM openjdk:16-alpine3.13
WORKDIR /home/ubuntu
RUN apk update && apk upgrade && \
    apk add --no-cache git 
RUN git clone https://github.com/shreya-ahujaa/java.project /home/ubuntu
RUN ./mvnw package
CMD ["java", "-jar", "target/spring-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080
