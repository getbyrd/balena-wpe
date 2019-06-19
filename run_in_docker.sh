#!/bin/bash
docker run --rm -d --name browser \
    --device=/dev/vchiq:/dev/vchiq \
    --device=/dev/fb0:/dev/fb0 \
    --device=/dev/input:/dev/input \
    -e WPE_BCMRPI_CURSOR=1 
    --privileged=true \
    tmp/wpe

