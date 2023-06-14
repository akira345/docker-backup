FROM alpine:latest

RUN apk --no-cache add tar xz bash grep

ADD backup.sh /root/bin/

VOLUME /backup
ENTRYPOINT ["/root/bin/backup.sh"]
CMD ["backup"]
