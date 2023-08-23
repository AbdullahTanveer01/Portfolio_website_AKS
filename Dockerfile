# Use the base image from Microsoft's repository
FROM mcr.microsoft.com/windows/servercore/iis

# Copy index.html to the wwwroot folder
COPY index.html C:\inetpub\wwwroot

# Copy assets folder to the wwwroot folder
COPY assets C:\inetpub\wwwroot\assets

# Expose port 80 to allow incoming traffic
EXPOSE 80
# Start the w3svc service using ServiceMonitor.exe
CMD ["C:\\ServiceMonitor.exe", "w3svc"]