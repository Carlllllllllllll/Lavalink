# Use OpenJDK 17 as the base image for Lavalink
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /opt/Lavalink

# Download Lavalink v3 from the official release page
ADD https://github.com/freyacodes/Lavalink/releases/download/3.4/Lavalink.jar /opt/Lavalink/Lavalink.jar

# Copy your Lavalink configuration file (application.yml) into the container
COPY ./application.yml /opt/Lavalink/application.yml

# Expose the port that Lavalink will run on
EXPOSE 8080

# Run Lavalink when the container starts
CMD ["java", "-jar", "Lavalink.jar"]
