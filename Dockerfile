FROM dduportal/rpi-alpine
MAINTAINER Adrian Sampson <adrian@radbox.org>

# Install packages.
RUN apk add --update \
        --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
        mopidy \
        py-six \
        py-mopidy-beets \
        py-mopidy-moped \
        gst-plugins-good0.10 gst-plugins-bad0.10 gst-plugins-ugly0.10 \
        alsa-utils \
        py-pip && \
    rm -rf /var/cache/apk/*

# Server socket.
EXPOSE 6680

# Install more Mopidy extensions from PyPI.
RUN pip install Mopidy-MusicBox-Webclient
RUN pip install Mopidy-Mobile

# Add the configuration file.
RUN mkdir -p /root/.config/mopidy
ADD mopidy.conf /root/.config/mopidy/mopidy.conf

CMD ["mopidy"]
