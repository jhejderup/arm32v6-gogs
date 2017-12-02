FROM alpine:3.7

RUN apk --no-cache add openssl wget bash


RUN wget -O gogs.zip https://dl.gogs.io/0.11.34/raspi2_armv6.zip; \
    mkdir gogs; \
    unzip gogs.zip -d gogs/; \
    rm gogs.zip; 
    
WORKDIR gogs
RUN chmod u+s gogs;\ 
    ./gogs web

EXPOSE 22 3000
