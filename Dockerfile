FROM hope/centos:7

LABEL maintainer="s.sadovyi@hope.ua"

ENV \
    SHOUTCAST_VERSION=2.5.5 \
    SHOUTCAST_HOME=/usr/local/shoutcast

WORKDIR ${SHOUTCAST_HOME}
EXPOSE 8000

RUN \
    yum -y install wget && \
    # Install
    wget -P /tmp/ http://download.nullsoft.com/shoutcast/tools/sc_serv2_linux_x64-latest.tar.gz && \
    tar -xzf /tmp/sc_serv2_linux_x64-latest.tar.gz -C ${SHOUTCAST_HOME} && \
    # Cleanup
    rm -f /tmp/sc_serv2_linux_x64-latest.tar.gz && \
    yum -y remove wget && \
    yum clean all

ENTRYPOINT ["./sc_serv"]
