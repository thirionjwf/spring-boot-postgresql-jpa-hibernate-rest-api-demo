# Use a base image with Java 11 installed
FROM openjdk:11

# Copy the compiled JAR file into the container at /app
ADD target/postgres-demo-0.0.1.jar postgres-demo.jar

# Expose port 8080
EXPOSE 8080

# Command to run the application when the container starts
ENTRYPOINT ["java", "-jar", "postgres-demo.jar"]
