# Use Node.js 14 Alpine as base image
FROM node:14-alpine
 
# Set working directory inside the container
WORKDIR /app
 
# Copy package.json and package-lock.json (if available) to WORKDIR
COPY package*.json ./
 
# Install dependencies
RUN npm install
 
# Copy the rest of the application code to WORKDIR
COPY . .
 
# Expose the port the app runs on
EXPOSE 3000
 
# Command to run the application
CMD ["npm", "start"]