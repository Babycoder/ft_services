FROM alpine:3.11
COPY srcs/install.sh .
RUN sh install.sh
COPY srcs/nginx.conf /etc/nginx/
COPY srcs/run.sh .
COPY srcs/wp-config.php /www/wordpress/
CMD ["bash", "/run.sh"] 