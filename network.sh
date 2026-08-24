#!/bin/bash
set -euo pipefail

# media-stack has zero external repo dependencies, so it's the producer of
# this shared network per the docker-network-ownership principle — a
# dependent repo (e.g. the planned, separate tracker-ratios repo) joins
# this network as external and documents the dependency in its own README;
# it never recreates it.
docker network inspect media-net >/dev/null 2>&1 || docker network create media-net
