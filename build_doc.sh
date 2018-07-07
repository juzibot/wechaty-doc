#!/bin/sh

mkdir -p docs

set -e

cat src/README.md > docs/README.md

echo '\n# API\n' >> docs/README.md

# cat src/api.md >> docs/README.md

cat src/api.md >> docs/README.md

cp README-zh.md ./docs/zh.md

cp ./src/index.html ./docs/
echo '' > ./docs/.nojekyll
