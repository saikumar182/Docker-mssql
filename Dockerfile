FROM maven:3.8.3-openjdk-17 AS build
COPY . /app
WORKDIR /app
FROM openjdk:17
RUN mkdir app
COPY --from=build /app/target/DockerApplication-0.0.1-SNAPSHOT.jar /app/DockerApplication-0.0.1-SNAPSHOT.jar
CMD ["java", "-jar", "/app/DockerApplication-0.0.1-SNAPSHOT.jar"]

