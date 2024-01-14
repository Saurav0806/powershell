FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the shell script and make it executable
COPY resource_info.sh .
RUN chmod +x resource_info.sh

# Copy any other files you want to include in the image
COPY  /usr/share/nginx/html/index.html

# Expose port 80 (default port for NGINX)
EXPOSE 80

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]
