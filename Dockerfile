# # Use Node.js 14 Alpine as base image
# FROM node:14-alpine
 
# # Set working directory inside the container
# WORKDIR /app
 
# # Copy package.json and package-lock.json (if available) to WORKDIR
# COPY package*.json ./
 
# # Install dependencies
# RUN npm install
 
# # Copy the rest of the application code to WORKDIR
# COPY . .
 
# # Expose the port the app runs on
# EXPOSE 3000
 
# # Command to run the application
# CMD ["npm", "start"]



FROM registry.access.redhat.com/ubi8/ubi:latest

# Update the system and install necessary packages
RUN yum update -y && \
    yum install -y httpd && \
    yum clean all

# Copy your website files into the container
COPY index.html /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["httpd", "-D", "FOREGROUND"]     