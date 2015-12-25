rpi-mopidy via Docker
=====================

This is a [Docker][] package for running the [Mopidy][] music player on a [Raspberry Pi][].

[Raspberry Pi]: http://raspberrypi.org/
[Mopidy]: https://www.mopidy.com/
[Docker]: http://www.docker.com/

Build:

    docker build -t rpi-mopidy .

Run:

    docker run --device /dev/snd -p 6680:6680 -t rpi-mopidy
