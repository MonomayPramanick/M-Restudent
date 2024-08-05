FROM openjdk:17-jdk-slim AS build

COPY pom.xml mvnw ./
COPY .mvn .mvn
RUN ./mvnw dependency:resolve

COPY src src
RUN ./mvnw package com.monomay

FROM openjdk:17-jdk-slim
WORKDIR M-Restudent
COPY --from=build target/M-Restudent.jar M-Restudent.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "M-Restudent.jar"]