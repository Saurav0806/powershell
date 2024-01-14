FROM nginx:latest
COPY resource_info.sh /usr/share/nginx/html/resource_info.sh
RUN chmod +x /usr/share/nginx/html/resource_info.sh
#RUN mkdir -p /usr/share/nginx/html
RUN /usr/share/nginx/html/resource_info.sh
RUN ls -la
#COPY /usr/share/nginx/html/index.html /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
