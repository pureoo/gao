FROM alpine:latest
 
ADD https://raw.githubusercontent.com/v2ray/install/master/docker/official/v2ray /usr/bin/v2ray/
COPY config.json /etc/v2ray/config.json

RUN mkdir /var/log/v2ray/ \
    && chmod +x /usr/bin/v2ray/v2ray

ENV PATH /usr/bin/v2ray:$PATH
 
EXPOSE 25143

CMD ["v2ray", "-config=/etc/v2ray/config.json"]
