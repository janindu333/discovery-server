# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the timezone
ENV TZ=Asia/Colombo

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/discovery-server-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that Eureka will run on
EXPOSE 8761

# Command to run the Eureka server
ENTRYPOINT ["java", "-jar", "app.jar"]
