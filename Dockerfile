# Use the official Node.js image as the base image.
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install npm dependencies
RUN npm install

# Copy all other application files
COPY . .

# Expose the application port
EXPOSE 3000

# Start the application
CMD ["node", "node.js"]  # Or replace with the entry point for your app
