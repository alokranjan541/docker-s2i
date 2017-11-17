FROM alpine

LABEL maintainer Bill Wang <ozbillwang@gmail.com>

RUN apk --update add git openssh sudo && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

ADD s2i /usr/local/bin/
RUN adduser  -S -G root app_user
RUN echo "app_user ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers
USER app_user
CMD ["echo","use this image in jenkins ci"]
