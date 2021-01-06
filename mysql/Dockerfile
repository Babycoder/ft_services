FROM alpine

COPY srcs/install.sh .
RUN sh install.sh
COPY srcs/run.sh .
COPY srcs/mariadb-server.cnf .
CMD ["bash", "/run.sh"]
