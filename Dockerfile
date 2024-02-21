# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory to /app
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/your-spring-boot-app.jar /app

# Expose port 8080 to the outside world
EXPOSE 9090

# Define environment variable
ENV SPRING_PROFILES_ACTIVE=production

# Command to run your application
CMD ["java", "-jar", "your-spring-boot-app.jar"]
