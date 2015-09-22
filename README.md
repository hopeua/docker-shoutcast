# ShoutCast docker image

[![hope/shoutcast](https://img.shields.io/badge/docker-hope/shoutcast-brightgreen.svg)](https://hub.docker.com/r/hope/shoutcast/)

ShoutCast streaming server.

Ports: 

* 7777 – main port
* 7778 – legacy port (optional)

## Run

Create __Dockerfile__ with following content

    FROM hope/shoutcast
    
Write configuration file __Resources/sc.conf__

Build image

    docker build -t shoutcast .
      
Run container

    docker run -d -p 7777:7777 --name=shoutcast shoutcast
