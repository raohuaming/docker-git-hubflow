FROM alpine:3.1
MAINTAINER Huaming Rao <huaming.rao@gmail.com>

RUN apk add --update git perl bash util-linux && rm -rf /var/cache/apk/*

RUN git clone https://github.com/datasift/gitflow /gitflow
RUN cd /gitflow/ && sh install.sh
# RUN rm -rf /gitflow

ENTRYPOINT ["git"]
