#!/bin/bash

CMD=$1
DEVICE=$2
if [ -z "$DEVICE" ]; then
    DEVICE=m201-eng
fi
cd /src && \
source build/envsetup.sh && \
lunch $DEVICE
if [ "$CMD" = "source" ]; then
    exec bash
fi

if [ "$CMD" = "slow" ]; then
    MAKE_OPT=""
else
    MAKE_OPT="-j12"
fi
# ota
make otapackage $MAKE_OPT