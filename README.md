# Docker statsd

## About the container
A simple statsd docker implementation based off @antonlindstrom's statsd container.

Statsd listens on 8125 by default, to use it outside you'll need to expose it
to the outside world.

Example to run the docker instance:

    sudo docker run -e GRAPHITE_HOST=graphite.example.com -p 8125:8125 -d jaconel/statsd

Environment variables that can be used to set options:

    GRAPHITE_PORT   (default: 2003)
    GRAPHITE_HOST   (default: localhost)
    STATSD_PORT     (default: 8125)
    STATSD_DUMP_MSG (default: false)
    STATSD_DEBUG    (default: false)

This image is available in the docker registry at jaconel/statsd:

    sudo docker pull jaconel/statsd

The [statsd admin interface](https://github.com/etsy/statsd/blob/master/docs/admin_interface.md)
can be accessed through `8126/tcp`.

## Building the container

This repository is setup to automatically build on Docker Hub when new commits are pushed. 

If you wish to build this repository manually, the following command(s) can be used:

```sudo docker build -t statsd . ```

To push the image to docker hub:

```sudo docker push jaconel/statsd```
