#!/bin/sh

set -e

wechaty_dir="../wechaty"

make -p src > /dev/null

jsdoc2md $wechaty_dir/dist/src/wechaty.js \
	$wechaty_dir/dist/src/user/{contact,room,friendship,message}.js > src/api.md



