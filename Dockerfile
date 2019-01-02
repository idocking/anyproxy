FROM alpine:3.6

RUN apk add --no-cache yarn ca-certificates
RUN yarn global add anyproxy &&\
    yarn cache clean

EXPOSE 8001 8002

CMD anyproxy
