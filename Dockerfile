FROM alpine:latest 

MAINTAINER Joby Pooppillikudiyil <joby.pooppillikudiyil@nttdata.com>

RUN apk update 

RUN apk add maven 
RUN apk add openjdk8
RUN apk add curl

CMD exec /bin/sh -c "trap : TERM INT; (while true; do sleep 1000; done) & wait"
