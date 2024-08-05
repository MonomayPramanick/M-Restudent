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

# Use a new image for the runtime
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file from the build stage
COPY --from=build /app/target/M-Restudent M-Restudent

# Expose the application port
EXPOSE 8081

# Run the application
CMD ["java", "-jar", "M-Restudent"]
