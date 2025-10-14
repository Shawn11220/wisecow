# Use a lightweight base image
FROM ubuntu:22.04

# Set working directory
WORKDIR /app

# Copy all files into the container
COPY . .

# Install dependencies
RUN apt-get update && \
    apt-get install -y fortune cowsay netcat-openbsd && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

ENV PATH="/usr/games:${PATH}"
# Make script executable
RUN chmod +x wisecow.sh

# Expose port used by the script
EXPOSE 4499

# Run the script
CMD ["./wisecow.sh"]
