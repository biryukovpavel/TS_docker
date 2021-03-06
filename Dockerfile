FROM alpine:3.14

ENV APPLICATION_PATH=/opt/torrserver

RUN mkdir ${APPLICATION_PATH} && \
    mkdir ${APPLICATION_PATH}/db

COPY TorrServer ${APPLICATION_PATH}/
RUN chmod +x ${APPLICATION_PATH}/TorrServer

EXPOSE 8090:8090

ENTRYPOINT ["/opt/torrserver/TorrServer", "--path=/opt/torrserver/db"]
