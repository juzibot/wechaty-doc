# Room类
All wechat rooms(groups) will be encapsulated as a Room.

[Examples/Room-Bot](https://githubcom/Chatie/wechaty/blob/master/examples/room-botts)

**Kind**: global class  

* [Room](/zh/api/room?id=top)
    * _instance_
        * [.say(textOrContactOrFile, [mention])](#RoomsaytextOrContactOrFile-mention) <code>Promise.&lt;void&gt;</code>
        * [.on(event, listener)](#Roomonevent-listener) <code>this</code>
        * [.add(contact)](#Roomaddcontact) <code>Promise.&lt;void&gt;</code>
        * [.del(contact)](#Roomdelcontact) <code>Promise.&lt;void&gt;</code>
        * [.quit()](#Roomquit) <code>Promise.&lt;void&gt;</code>
        * [.topic([newTopic])](#RoomtopicnewTopic) <code>Promise.&lt;(string&#124;void)&gt;</code>
        * [.announce([text])](#Roomannouncetext) <code>Promise.&lt;(void&#124;string)&gt;</code>
        * [.qrcode()](#Roomqrcode) <code>Promise.&lt;string&gt;</code>
        * [.alias(contact)](#Roomaliascontact) <code>Promise.&lt;(string&#124;null)&gt;</code>
        * [.roomAlias(contact)](#RoomroomAliascontact) <code>Promise.&lt;(string&#124;null)&gt;</code>
        * [.has(contact)](#Roomhascontact) <code>Promise.&lt;boolean&gt;</code>
        * [.memberAll(query)](#RoommemberAllquery) <code>Promise.&lt;Array.&lt;Contact&gt;&gt;</code>
        * [.member(queryArg)](#RoommemberqueryArg) <code>Promise.&lt;(null&#124;Contact)&gt;</code>
        * [.memberList()](#RoommemberList) <code>Promise.&lt;Array.&lt;Contact&gt;&gt;</code>
        * ~~[.refresh()](#Roomrefresh)~~
        * [.sync()](#Roomsync) <code>Promise.&lt;void&gt;</code>
        * [.owner()](#Roomowner) [<code>Contact</code>](/zh/api/contact?id=top) &#124; <code>null</code>
    * _static_
        * [.create(contactList, [topic])](#RoomcreatecontactList-topic) [<code>Promise.&lt;Room&gt;</code>](/zh/api/room?id=top)
        * [.findAll([query])](#RoomfindAllquery) <code>Promise.&lt;Array.&lt;Room&gt;&gt;</code>
        * [.find(query)](#Roomfindquery) <code>Promise.&lt;(Room&#124;null)&gt;</code>
        * [.load(id)](#Roomloadid) [<code>Room</code>](/zh/api/room?id=top)

<a name="Room+say"></a>

## room.say(textOrContactOrFile, [mention])

**Return the type of**: <code>Promise.&lt;void&gt;</code>


Send message inside Room, if set [replyTo], wechaty will mention the contact as well.

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  

| Param | Type | Description |
| --- | --- | --- |
| textOrContactOrFile | <code>string</code> &#124; [<code>Contact</code>](/zh/api/contact?id=top) &#124; <code>FileBox</code> | Send `text` or `media file` inside Room. <br> You can use [FileBox](https://wwwnpmjscom/package/file-box) to send file |
| [mention] | [<code>Contact</code>](/zh/api/contact?id=top) &#124; [<code>Array.&lt;Contact&gt;</code>](/zh/api/contact?id=top) | Optional parameter, send content inside Room, and mention @replyTo contact or contactList. |

**Example**  
```js
const bot = new Wechaty()
await bot.start()
const room = await bot.Room.find({name: 'wechaty'})

# 1. Send text inside Room

await room.say('Hello world!')

# 2. Send media file inside Room
import { FileBox }  from 'file-box'
const fileBox1 = FileBox.fromUrl('https://chatie.io/wechaty/images/bot-qr-code.png')
const fileBox2 = FileBox.fromLocal('/tmp/text.txt')
await room.say(fileBox1)
await room.say(fileBox2)

# 3. Send Contact Card in a room
const contactCard = await bot.Contact.find({name: 'lijiarui'}) // change 'lijiarui' to any of the room member
await room.say(contactCard)

# 4. Send text inside room and mention @mention contact
const contact = await bot.Contact.find({name: 'lijiarui'}) // change 'lijiarui' to any of the room member
await room.say('Hello world!', contact)
```
<a name="Room+on"></a>

## room.on(event, listener)

**Return the type of**: <code>this</code>


**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  
**Returns**: <code>this</code> - - this for chain  

| Param | Type | Description |
| --- | --- | --- |
| event | [<code>RoomEventName</code>](/zh/api/?id=roomeventname) | Emit WechatyEvent |
| listener | [<code>RoomEventFunction</code>](/zh/api/?id=roomeventfunction) | Depends on the WechatyEvent |

**Example** *(Event:join )*  
```js
const bot = new Wechaty()
await bot.start()
const room = await bot.Room.find({topic: 'event-room'}) // change `event-room` to any room topic in your wechat
if (room) {
  room.on('join', (room: Room, inviteeList: Contact[], inviter: Contact) => {
    const nameList = inviteeList.map(c => c.name()).join(',')
    console.log(`Room ${room.topic()} got new member ${nameList}, invited by ${inviter}`)
  })
}
```
**Example** *(Event:leave )*  
```js
const bot = new Wechaty()
await bot.start()
const room = await bot.Room.find({topic: 'event-room'}) // change `event-room` to any room topic in your wechat
if (room) {
  room.on('leave', (room: Room, leaverList: Contact[]) => {
    const nameList = leaverList.map(c => c.name()).join(',')
    console.log(`Room ${room.topic()} lost member ${nameList}`)
  })
}
```
**Example** *(Event:topic )*  
```js
const bot = new Wechaty()
await bot.start()
const room = await bot.Room.find({topic: 'event-room'}) // change `event-room` to any room topic in your wechat
if (room) {
  room.on('topic', (room: Room, topic: string, oldTopic: string, changer: Contact) => {
    console.log(`Room ${room.topic()} topic changed from ${oldTopic} to ${topic} by ${changer.name()}`)
  })
}
```
<a name="Room+add"></a>

## room.add(contact)

**Return the type of**: <code>Promise.&lt;void&gt;</code>


Add contact in a room

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  

| Param | Type |
| --- | --- |
| contact | [<code>Contact</code>](/zh/api/contact?id=top) | 

**Example**  
```js
const bot = new Wechaty()
await bot.start()
const contact = await bot.Contact.find({name: 'lijiarui'}) // change 'lijiarui' to any contact in your wechat
const room = await bot.Room.find({topic: 'wechat'})        // change 'wechat' to any room topic in your wechat
if (room) {
  try {
     await room.add(contact)
  } catch(e) {
     console.error(e)
  }
}
```
<a name="Room+del"></a>

## room.del(contact)

**Return the type of**: <code>Promise.&lt;void&gt;</code>


Delete a contact from the room
It works only when the bot is the owner of the room

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  

| Param | Type |
| --- | --- |
| contact | [<code>Contact</code>](/zh/api/contact?id=top) | 

**Example**  
```js
const bot = new Wechaty()
await bot.start()
const room = await bot.Room.find({topic: 'wechat'})          // change 'wechat' to any room topic in your wechat
const contact = await bot.Contact.find({name: 'lijiarui'})   // change 'lijiarui' to any room member in the room you just set
if (room) {
  try {
     await room.del(contact)
  } catch(e) {
     console.error(e)
  }
}
```
<a name="Room+quit"></a>

## room.quit()

**Return the type of**: <code>Promise.&lt;void&gt;</code>


Bot quit the room itself

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  
**Example**  
```js
await room.quit()
```
<a name="Room+topic"></a>

## room.topic([newTopic])

**Return the type of**: <code>Promise.&lt;(string&#124;void)&gt;</code>


SET/GET topic from the room

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  

| Param | Type | Description |
| --- | --- | --- |
| [newTopic] | <code>string</code> | If set this para, it will change room topic. |

**Example** *(When you say anything in a room, it will get room topic. )*  
```js
const bot = new Wechaty()
bot
.on('message', async m => {
  const room = m.room()
  if (room) {
    const topic = await room.topic()
    console.log(`room topic is : ${topic}`)
  }
})
.start()
```
**Example** *(When you say anything in a room, it will change room topic. )*  
```js
const bot = new Wechaty()
bot
.on('message', async m => {
  const room = m.room()
  if (room) {
    const oldTopic = await room.topic()
    await room.topic('change topic to wechaty!')
    console.log(`room topic change from ${oldTopic} to ${room.topic()}`)
  }
})
.start()
```
<a name="Room+announce"></a>

## room.announce([text])

**Return the type of**: <code>Promise.&lt;(void&#124;string)&gt;</code>


SET/GET announce from the room
> Tips: It only works when bot is the owner of the room.

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  

| Param | Type | Description |
| --- | --- | --- |
| [text] | <code>string</code> | If set this para, it will change room announce. |

**Example** *(When you say anything in a room, it will get room announce. )*  
```js
const bot = new Wechaty()
bot
.on('message', async m => {
  const room = m.room()
  if (room) {
    const announce = await room.announce()
    console.log(`room announce is : ${announce}`)
  }
})
.start()
```
**Example** *(When you say anything in a room, it will change room announce. )*  
```js
const bot = new Wechaty()
bot
.on('message', async m => {
  const room = m.room()
  if (room) {
    const oldAnnounce = await room.announce()
    await room.announce('change announce to wechaty!')
    console.log(`room announce change from ${oldAnnounce} to ${room.announce()}`)
  }
})
.start()
```
<a name="Room+qrcode"></a>

## room.qrcode()

**Return the type of**: <code>Promise.&lt;string&gt;</code>


Get Room QR Code

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  
<a name="Room+alias"></a>

## room.alias(contact)

**Return the type of**: <code>Promise.&lt;(string&#124;null)&gt;</code>


Return contact's roomAlias in the room, the same as roomAlias

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  
**Returns**: <code>Promise.&lt;(string&#124;null)&gt;</code> - - If a contact has an alias in room, return string, otherwise return null  

| Param | Type |
| --- | --- |
| contact | [<code>Contact</code>](/zh/api/contact?id=top) | 

**Example**  
```js
const bot = new Wechaty()
bot
.on('message', async m => {
  const room = m.room()
  const contact = m.from()
  if (room) {
    const alias = await room.alias(contact)
    console.log(`${contact.name()} alias is ${alias}`)
  }
})
.start()
```
<a name="Room+roomAlias"></a>

## room.roomAlias(contact)

**Return the type of**: <code>Promise.&lt;(string&#124;null)&gt;</code>


Same as function alias

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  

| Param | Type |
| --- | --- |
| contact | [<code>Contact</code>](/zh/api/contact?id=top) | 

<a name="Room+has"></a>

## room.has(contact)

**Return the type of**: <code>Promise.&lt;boolean&gt;</code>


Check if the room has member `contact`, the return is a Promise and must be `await`-ed

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  
**Returns**: <code>Promise.&lt;boolean&gt;</code> - Return `true` if has contact, else return `false`.  

| Param | Type |
| --- | --- |
| contact | [<code>Contact</code>](/zh/api/contact?id=top) | 

**Example** *(Check whether &#x27;lijiarui&#x27; is in the room &#x27;wechaty&#x27;)*  
```js
const bot = new Wechaty()
await bot.start()
const contact = await bot.Contact.find({name: 'lijiarui'})   // change 'lijiarui' to any of contact in your wechat
const room = await bot.Room.find({topic: 'wechaty'})         // change 'wechaty' to any of the room in your wechat
if (contact && room) {
  if (await room.has(contact)) {
    console.log(`${contact.name()} is in the room wechaty!`)
  } else {
    console.log(`${contact.name()} is not in the room wechaty!`)
  }
}
```
<a name="Room+memberAll"></a>

## room.memberAll(query)

**Return the type of**: <code>Promise.&lt;Array.&lt;Contact&gt;&gt;</code>


Find all contacts in a room

### definition
- `name`                 the name-string set by user-self, should be called name, equal to `Contact.name()`
- `roomAlias`            the name-string set by user-self in the room, should be called roomAlias
- `contactAlias`         the name-string set by bot for others, should be called alias, equal to `Contact.alias()`

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  

| Param | Type | Description |
| --- | --- | --- |
| query | [<code>RoomMemberQueryFilter</code>](/zh/api/?id=roommemberqueryfilter) &#124; <code>string</code> | When use memberAll(name:string), return all matched members, including name, roomAlias, contactAlias |

<a name="Room+member"></a>

## room.member(queryArg)

**Return the type of**: <code>Promise.&lt;(null&#124;Contact)&gt;</code>


Find all contacts in a room, if get many, return the first one.

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  

| Param | Type | Description |
| --- | --- | --- |
| queryArg | [<code>RoomMemberQueryFilter</code>](/zh/api/?id=roommemberqueryfilter) &#124; <code>string</code> | When use member(name:string), return all matched members, including name, roomAlias, contactAlias |

**Example** *(Find member by name)*  
```js
const bot = new Wechaty()
await bot.start()
const room = await bot.Room.find({topic: 'wechaty'})           // change 'wechaty' to any room name in your wechat
if (room) {
  const member = await room.member('lijiarui')             // change 'lijiarui' to any room member in your wechat
  if (member) {
    console.log(`wechaty room got the member: ${member.name()}`)
  } else {
    console.log(`cannot get member in wechaty room!`)
  }
}
```
**Example** *(Find member by MemberQueryFilter)*  
```js
const bot = new Wechaty()
await bot.start()
const room = await bot.Room.find({topic: 'wechaty'})          // change 'wechaty' to any room name in your wechat
if (room) {
  const member = await room.member({name: 'lijiarui'})        // change 'lijiarui' to any room member in your wechat
  if (member) {
    console.log(`wechaty room got the member: ${member.name()}`)
  } else {
    console.log(`cannot get member in wechaty room!`)
  }
}
```
<a name="Room+memberList"></a>

## room.memberList()

**Return the type of**: <code>Promise.&lt;Array.&lt;Contact&gt;&gt;</code>


Get all room member from the room

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  
**Example**  
```js
await room.memberList()
```
<a name="Room+refresh"></a>

## ~~room.refresh()~~
***Deprecated***

Force reload data for Room, use [sync](#Roomsync) instead

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  
<a name="Room+sync"></a>

## room.sync()

**Return the type of**: <code>Promise.&lt;void&gt;</code>


Force reload data for Room, Sync data for Room

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  
**Example**  
```js
await room.sync()
```
<a name="Room+owner"></a>

## room.owner()

**Return the type of**: [<code>Contact</code>](/zh/api/contact?id=top) &#124; <code>null</code>


Get room's owner from the room.

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  
**Example**  
```js
const owner = room.owner()
```
<a name="Room.create"></a>

## Room.create(contactList, [topic])

**Return the type of**: [<code>Promise.&lt;Room&gt;</code>](/zh/api/room?id=top)


Create a new room.

**Kind**: static method of [<code>Room</code>](/zh/api/room?id=top)  

| Param | Type |
| --- | --- |
| contactList | [<code>Array.&lt;Contact&gt;</code>](/zh/api/contact?id=top) | 
| [topic] | <code>string</code> | 

**Example** *(Creat a room with &#x27;lijiarui&#x27; and &#x27;juxiaomi&#x27;, the room topic is &#x27;ding - created&#x27;)*  
```js
const helperContactA = await Contact.find({ name: 'lijiarui' })  // change 'lijiarui' to any contact in your wechat
const helperContactB = await Contact.find({ name: 'juxiaomi' })  // change 'juxiaomi' to any contact in your wechat
const contactList = [helperContactA, helperContactB]
console.log('Bot', 'contactList: %s', contactList.join(','))
const room = await Room.create(contactList, 'ding')
console.log('Bot', 'createDingRoom() new ding room created: %s', room)
await room.topic('ding - created')
await room.say('ding - created')
```
<a name="Room.findAll"></a>

## Room.findAll([query])

**Return the type of**: <code>Promise.&lt;Array.&lt;Room&gt;&gt;</code>


Find room by by filter: {topic: string | RegExp}, return all the matched room

**Kind**: static method of [<code>Room</code>](/zh/api/room?id=top)  

| Param | Type |
| --- | --- |
| [query] | [<code>RoomQueryFilter</code>](/zh/api/?id=roomqueryfilter) | 

**Example**  
```js
const bot = new Wechaty()
await bot.start()
const roomList = await bot.Room.findAll()                    // get the room list of the bot
const roomList = await bot.Room.findAll({topic: 'wechaty'})  // find all of the rooms with name 'wechaty'
```
<a name="Room.find"></a>

## Room.find(query)

**Return the type of**: <code>Promise.&lt;(Room&#124;null)&gt;</code>


Try to find a room by filter: {topic: string | RegExp}. If get many, return the first one.

**Kind**: static method of [<code>Room</code>](/zh/api/room?id=top)  
**Returns**: <code>Promise.&lt;(Room&#124;null)&gt;</code> - If can find the room, return Room, or return null  

| Param | Type |
| --- | --- |
| query | [<code>RoomQueryFilter</code>](/zh/api/?id=roomqueryfilter) | 

**Example**  
```js
const bot = new Wechaty()
await bot.start()
const roomList = await bot.Room.find()
const roomList = await bot.Room.find({topic: 'wechaty'})
```
<a name="Room.load"></a>

## Room.load(id)

**Return the type of**: [<code>Room</code>](/zh/api/room?id=top)


Load room by topic. <br>
> Tips: For Web solution, it cannot get the unique topic id,
but for other solutions besides web,
we can get unique and permanent topic id.

**Kind**: static method of [<code>Room</code>](/zh/api/room?id=top)  

| Param | Type |
| --- | --- |
| id | <code>string</code> | 

**Example**  
```js
const bot = new Wechaty()
await bot.start()
const room = bot.Room.load('roomId')
```
<a name="Contact"></a>
