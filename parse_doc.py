
import os
import re
import sys


lines = []
for line in sys.stdin:
    lines.append(line)

# 去掉头三行
lines = lines[3:]

key = 'README'
ret = {}

for line in lines:

    if line.startswith('## Wechaty'):
        key = 'wechaty'
    if line.startswith('## Friendship'):
        key = 'friendship'
    if line.startswith('## Room'):
        key = 'room'
    if line.startswith('## Message'):
        key = 'message'
    if line.startswith('## Contact'):
        key = 'contact'
    
    if key not in ret:
        ret[key] = []
    
    ret[key].append(line)

keys = [
    'README',
    'wechaty',
    'contact',
    'friendship',
    'room',
    'message',
]

for key in keys:
    ret[key] = '\n'.join(ret[key])

output_dir = './src/api'
if not os.path.exists(output_dir):
    os.makedirs(output_dir)

def replace(text):
    replace_list = [
        ['(#Message)', '(/api/message)'],
        ['(#Room)', '(/api/room)'],
        ['(#Contact)', '(/api/contact)'],
        ['(#Wechaty)', '(/api/wechaty)'],
        ['(#Friendship)', '(/api/friendship)'],
    ]
    
    for a, b in replace_list:
        text = text.replace(a, b)
    
    return text

for key in keys:
    path = os.path.join(output_dir, key + '.md')
    content = ret[key]
    if key == 'README':
        content = open('api.md').read() + '\n\n' + content

    content = re.sub(r'^## ', '# ', content)
    content = re.sub(r'^### ', '## ', content)
    content = re.sub(r'^#### ', '### ', content)
    content = re.sub(r'^##### ', '#### ', content)
    content = replace(content)

    with open(path, 'w') as fp:
        fp.write(content)

print('ok', len(lines))