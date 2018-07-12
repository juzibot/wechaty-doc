#!/bin/sh

# https://raw.githubusercontent.com/lijiarui/wechaty/add-doc/docs/index.md

# curl https://raw.githubusercontent.com/lijiarui/wechaty/add-doc/docs/index.md | python3 parse_doc.py
cat /Users/jiaruili/git/rui/wechaty/docs/index.md > index.md && cat index.md | python3 parse_doc.py