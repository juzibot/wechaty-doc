#!/bin/sh

mkdir -p src

set -e

wechaty_dir="../wechaty"

jsdoc2md $wechaty_dir/dist/src/wechaty.js \
	$wechaty_dir/dist/src/user/{contact,room,friendship,message}.js \
	| sed -e 's/<a href=\"#\([^"]\+\)\">[^<]\+<\/a>/[\1](#\1)/g' > src/api.md



