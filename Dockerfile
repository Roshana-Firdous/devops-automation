FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy application files
COPY . .

# Expose the app port
EXPOSE 8080

# Start the application
CMD ["node", "server.js"]
