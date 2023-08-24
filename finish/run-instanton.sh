#!/bin/bash -x

podman run \
    --rm \
    -p 9080:9080 \
    --cap-add=CHECKPOINT_RESTORE \
    --cap-add=SETPCAP \
    --security-opt seccomp=unconfined \
    --security-opt systempaths=unconfined \
    springboot

