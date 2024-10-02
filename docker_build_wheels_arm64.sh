#!/bin/bash

set -exuo pipefail

python3 setup.py sdist
docker run --platform linux/arm64 -it -v `pwd`:/src -e PLAT=manylinux2014_aarch64 quay.io/pypa/manylinux2014_aarch64 /src/build_wheels.sh
