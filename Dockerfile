# Use a Windows-compatible Nginx image
FROM mcr.microsoft.com/windows/servercore/iis

# Copy index.html and other assets to the appropriate directory in the container
COPY index.html C:\inetpub\wwwroot\
COPY assets C:\inetpub\wwwroot\assets\

# Expose the container's port
EXPOSE 80

# Note: Adjust CMD based on the image you're using
CMD ["CMD", "/C", "start", "C:\\ServiceMonitor.exe", "w3svc"]
