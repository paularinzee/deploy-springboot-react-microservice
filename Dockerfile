# Use a base image with Java (for Spring Boot)
FROM openjdk:17

# Set the working directory for the backend application
WORKDIR /app

# Copy the compiled Spring Boot JAR file into the container
COPY target/movieist-0.0.1-SNAPSHOT.jar /app/



# Expose the port that the Spring Boot application will run on
EXPOSE 8080

# Define the command to run the Spring Boot application
CMD ["java", "-jar", "movieist-0.0.1-SNAPSHOT.jar"]