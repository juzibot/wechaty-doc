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
# echo '# API\n\n' > docs/zh/api.md
# cat src/api.md >> docs/zh/api.md

cp ./src/index.html ./docs/
echo '' > ./docs/.nojekyll
