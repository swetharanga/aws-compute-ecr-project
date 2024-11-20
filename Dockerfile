FROM nginx:latest
COPY index1.html /usr/share/nginx/html/
COPY ./default.conf /etc/nginx/conf.d/default.conf
