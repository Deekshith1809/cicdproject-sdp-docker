# Use an OpenJDK base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the jar file
COPY target/*.jar app.jar

# Expose the port your Spring Boot app runs on
EXPOSE 2000

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
