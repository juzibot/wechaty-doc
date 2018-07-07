#!/bin/sh

make -p docs > /dev/null

set -e

cat src/README.md > docs/README.md

echo '\n# API\n' >> docs/README.md

# cat src/api.md >> docs/README.md

cat src/api.md | sed -e 's/<a href=\"#\([^"]\+\)\">[^<]\+<\/a>/[\1](#\1)/g' >> docs/README.md


