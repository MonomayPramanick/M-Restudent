# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the pom.xml and the Maven settings if needed
COPY pom.xml ./

# Install Maven and other dependencies
RUN apt-get update && \
    apt-get install -y maven && \
    rm -rf /var/lib/apt/lists/*

# Install Maven dependencies
RUN mvn dependency:resolve

# Copy the source code to the container
COPY src ./src

# Package the application
RUN mvn package -DskipTests

# Use an official Jetty image as the runtime
FROM jetty:9.4-jre11-slim

# Set the working directory
WORKDIR /var/lib/jetty/webapps

# Copy the WAR file from the build stage
COPY --from=build /app/target/M-Restudent.war ./root.war

# Expose the application port
EXPOSE 8080
