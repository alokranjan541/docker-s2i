FROM alpine

LABEL maintainer Chakradhar Rao Jonagam

RUN apk --update add git openssh sudo && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

ADD s2i /usr/local/bin/
CMD ["echo","use this image in jenkins ci"]
