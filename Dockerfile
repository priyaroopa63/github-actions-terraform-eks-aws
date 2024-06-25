# Use the Red Hat Universal Base Image (UBI) as the base image
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