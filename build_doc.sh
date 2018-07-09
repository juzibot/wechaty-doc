#!/bin/sh

set -e

mkdir -p docs
mkdir -p docs/zh

cp src/en/*.md docs/
cp -r src/api docs/
# echo '# API\n\n' > docs/api.md
# cat src/api.md >> docs/api.md

cp src/zh/*.md docs/zh/
cp -r src/zh_api docs/zh/
rm -rf docs/zh/api
mv docs/zh/zh_api docs/zh/api

cp src/en/_sidebar.md docs/api/
cp src/zh/_sidebar.md docs/zh/api/

cp ./src/index.html ./docs/
echo '' > ./docs/.nojekyll
