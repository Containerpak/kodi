FROM ghcr.io/containerpak/mesa64:main

LABEL org.opencontainers.image.source="https://github.com/Containerpak/kodi"

RUN apt-get update && \
    apt-get install -y --no-install-recommends kodi && \
    cpak-clean-junk

COPY tv.kodi.Kodi.desktop /usr/share/applications/tv.kodi.Kodi.desktop
