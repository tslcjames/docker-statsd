# Dockerfile for statsd
#
# VERSION               0.2
# DOCKER-VERSION        0.4.0

FROM dockerfile/nodejs

RUN git clone git://github.com/etsy/statsd.git /usr/local/src/statsd

ADD ./etc/config.js ./etc/default/statsd.js

EXPOSE 8125/udp
EXPOSE 8126/tcp

CMD node /usr/local/src/statsd/stats.js /etc/default/statsd.js
