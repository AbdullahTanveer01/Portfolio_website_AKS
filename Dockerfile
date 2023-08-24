# Use a base image
FROM nginx:latest

# Copy index.html to the default nginx web root directory
COPY index.html /usr/share/nginx/html/

# Copy style.css from assets/css to the assets directory in the container
COPY assets/css/style.css /usr/share/nginx/html/assets/css/

# Expose port 80
EXPOSE 80

# Start the nginx server
CMD ["nginx", "-g", "daemon off;"]
