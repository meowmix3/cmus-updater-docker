#!/bin/bash
docker stop cmus-updater
docker rm cmus-updater
mkdir config
docker build -t cmus-updater . && \
docker run -itd \
  --name=cmus-updater \
  -u 1000:1000 \
  -v "$(pwd)"/config:/.config/cmus \
  -v "$(pwd)"/music:/mnt/music \
  -e TZ=America/New_York \
  cmus-updater:latest
