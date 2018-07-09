#!/bin/sh

mkdir -p src
mkdir -p src/api
mkdir -p src/zh_api

set -e

wechaty_dir="../wechaty"

# jsdoc2md $wechaty_dir/dist/src/wechaty.js \
# 	$wechaty_dir/dist/src/user/{contact,room,friendship,message}.js \
# 	| sed -e 's/<a href=\"#\([^"]\+\)\">[^<]\+<\/a>/[\1](#\1)/g' > src/api.md

jsdoc2md $wechaty_dir/dist/src/wechaty.js > src/api/wechaty.md
jsdoc2md $wechaty_dir/dist/src/user/contact.js > src/api/contact.md
jsdoc2md $wechaty_dir/dist/src/user/room.js > src/api/room.md
jsdoc2md $wechaty_dir/dist/src/user/friendship.js > src/api/friendship.md
jsdoc2md $wechaty_dir/dist/src/user/message.js > src/api/message.md
cat api.md > src/api/README.md

cat src/api/wechaty.md | sed -e 's/\/api\//\/zh\/api\//g' | sed -e 's/## Wechaty/## Wechaty类/g' > src/zh_api/wechaty.md
cat src/api/contact.md | sed -e 's/\/api\//\/zh\/api\//g' | sed -e 's/## Contact/## Contact类/g'  > src/zh_api/contact.md
cat src/api/room.md | sed -e 's/\/api\//\/zh\/api\//g' | sed -e 's/## Room/## Room类/g'  > src/zh_api/room.md
cat src/api/friendship.md | sed -e 's/\/api\//\/zh\/api\//g' | sed -e 's/## Friendship/## Friendship类/g'  > src/zh_api/friendship.md
cat src/api/message.md | sed -e 's/\/api\//\/zh\/api\//g' | sed -e 's/## Message/## Messagey类/g'  > src/zh_api/message.md
cat api.md | sed -e 's/\/api\//\/zh\/api\//g' > src/zh_api/README.md
