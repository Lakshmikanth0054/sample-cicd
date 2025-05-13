FROM ubuntu:20.04

# Prevents interaction prompts during install
ENV DEBIAN_FRONTEND=noninteractive

# Install curl and Node.js
RUN apt-get update && \
    apt-get install -y curl gnupg && \
    curl -sL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean

# Set working directory
WORKDIR /app

# Copy app code
COPY . .

# Install dependencies
RUN npm install

# Expose the port your app runs on
EXPOSE 3000

# Start the app (make sure your package.json has a "start" script)
CMD ["npm", "start"]
