FROM hope/base

MAINTAINER Sergey Sadovoi <sergey@hope.ua>

ENV SHOUTCAST_VERSION 2.4.7

RUN wget -P /tmp/ http://download.nullsoft.com/shoutcast/tools/sc_serv2_linux_x64-latest.tar.gz \
    && mkdir /usr/local/shoutcast \
    && tar -xzf /tmp/sc_serv2_linux_x64-latest.tar.gz -C /usr/local/shoutcast \
    && rm -f /tmp/sc_serv2_linux_x64-latest.tar.gz

ONBUILD COPY Resources/sc.conf /usr/local/shoutcast/sc.conf

EXPOSE 7777
EXPOSE 7778

WORKDIR /usr/local/shoutcast

ENTRYPOINT ["./sc_serv"]
CMD ["./sc.conf"]
