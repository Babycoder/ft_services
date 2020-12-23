FROM alpine

COPY srcs/install.sh .
RUN sh install.sh
COPY srcs/run.sh .
CMD ["bash", "/run.sh"]
