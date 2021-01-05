FROM alpine
COPY srcs/install.sh .
RUN sh install.sh
COPY srcs/nginx.conf /etc/nginx/
COPY srcs/run.sh .
ENTRYPOINT ["bash", "/run.sh"] 