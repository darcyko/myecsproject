# Use the official NGINX image from the Docker Hub
FROM nginx:latest

# Copy custom configuration file (optional)
# COPY ./nginx.conf /etc/nginx/nginx.conf

# Copy your website content to the appropriate directory
COPY ./html /usr/share/nginx/html

# Expose port 80 to make the web server accessible
EXPOSE 80

# Start NGINX in the foreground (default behavior for the official NGINX image)
CMD ["nginx", "-g", "daemon off;"]

