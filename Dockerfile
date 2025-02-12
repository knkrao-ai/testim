# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Copy the rest of the app files
COPY . .

# Expose the port
EXPOSE 8080

# Command to run the application
CMD ["npm", "start"]
