FROM alpine:3.7

RUN apk --no-cache add openssl wget


RUN wget -O gogs.zip https://dl.gogs.io/0.11.34/raspi2_armv6.zip; \
    mkdir /gogs; \
    unzip gogs.zip -d /gogs; \
    rm gogs.zip; 
 
EXPOSE 22 3000
CMD [./gogs/gogs web]

    
