FROM openjdk:17-jdk-slim

WORKDIR /app

# Download Lavalink jar
ADD https://github.com/freyacodes/Lavalink/releases/download/3.7.5/Lavalink.jar .

# Copy your configuration file
COPY ./application.yml .

# Expose port (use default Render dynamic port)
EXPOSE ${PORT}

# Start Lavalink server
CMD ["java", "-jar", "Lavalink.jar"]
