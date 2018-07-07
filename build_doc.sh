#!/bin/sh

make -p docs > /dev/null

set -e

cat src/README.md > docs/README.md

echo '\n# API\n' >> docs/README.md

cat src/api.md >> docs/README.md


