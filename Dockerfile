# Use an official lightweight Node.js image
FROM node:alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all files from the current directory to the working directory in the container
COPY . .

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the application
CMD ["node", "server.js"]
