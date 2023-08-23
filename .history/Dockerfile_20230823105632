# Use a base image
FROM nginx:alpine

# Copy index.html and other assets to the appropriate directory in the container
COPY ./index.html /usr/share/nginx/html/
COPY ./assets /usr/share/nginx/html/assets/

# Expose the container's port
EXPOSE 80

# Command to run the nginx server
CMD ["nginx", "-g", "daemon off;"]
