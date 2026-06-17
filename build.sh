#!/usr/bin/env bash

set -euo pipefail

rm -rf ./python

uv export --no-dev --format requirements-txt --no-hashes -o requirements.txt
uv pip install -r requirements.txt --target ./python --python-platform manylinux_2_28_x86_64 --python 3.12
