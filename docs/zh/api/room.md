# Room类
All wechat rooms(groups) will be encapsulated as a Room.

`Room` is `Sayable`,
[Examples/Room-Bot](https://githubcom/Chatie/wechaty/blob/master/examples/room-botts)

**Kind**: global class  

* [Room](/zh/api/room?id=top)
    * _instance_
        * [.say(textOrContactOrFile, [replyTo])](#RoomsaytextOrContactOrFile-replyTo) <code>Promise.&lt;boolean&gt;</code>
        * [.on(event, listener)](#Roomonevent-listener) <code>this</code>
        * [.add(contact)](#Roomaddcontact) <code>Promise.&lt;number&gt;</code>
        * [.del(contact)](#Roomdelcontact) <code>Promise.&lt;number&gt;</code>
        * [.topic([newTopic])](#RoomtopicnewTopic) <code>Promise.&lt;(string&#124;void)&gt;</code>
        * [.qrcode()](#Roomqrcode)
        * [.alias(contact)](#Roomaliascontact) <code>string</code> &#124; <code>null</code>
        * [.roomAlias(contact)](#RoomroomAliascontact) <code>string</code> &#124; <code>null</code>
        * [.has(contact)](#Roomhascontact) <code>boolean</code>
        * [.memberAll(query)](#RoommemberAllquery) [<code>Array.&lt;Contact&gt;</code>](/zh/api/contact?id=top)
        * [.member(queryArg)](#RoommemberqueryArg) [<code>Contact</code>](/zh/api/contact?id=top) &#124; <code>null</code>
        * [.memberList()](#RoommemberList) [<code>Array.&lt;Contact&gt;</code>](/zh/api/contact?id=top)
        * [.sync()](#Roomsync) <code>Promise.&lt;void&gt;</code>
    * _static_
        * [.create(contactList, [topic])](#RoomcreatecontactList-topic) [<code>Promise.&lt;Room&gt;</code>](/zh/api/room?id=top)
        * [.findAll([query])](#RoomfindAllquery) <code>Promise.&lt;Array.&lt;Room&gt;&gt;</code>
        * [.find(query)](#Roomfindquery) <code>Promise.&lt;(Room&#124;null)&gt;</code>

<a name="Room+say"></a>

## room.say(textOrContactOrFile, [replyTo])

**Return the type of**: Promise.&lt;boolean&gt; 


Send message inside Room, if set [replyTo], wechaty will mention the contact as well.

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  
**Returns**: <code>Promise.&lt;boolean&gt;</code> - If bot send message successfully, it will return true. If the bot failed to send for blocking or any other reason, it will return false  

| Param | Type | Description |
| --- | --- | --- |
| textOrContactOrFile | <code>string</code> &#124; <code>MediaMessage</code> | Send `text` or `media file` inside Room. |
| [replyTo] | [<code>Contact</code>](/zh/api/contact?id=top) &#124; [<code>Array.&lt;Contact&gt;</code>](/zh/api/contact?id=top) | Optional parameter, send content inside Room, and mention @replyTo contact or contactList. |

**Example** *(Send text inside Room)*  
```js
const room = await Room.find({name: 'wechaty'})        // change 'wechaty' to any of your room in wechat
await room.say('Hello world!')
```
**Example** *(Send media file inside Room)*  
```js
const room = await Room.find({name: 'wechaty'})        // change 'wechaty' to any of your room in wechat
await room.say(new MediaMessage('/test.jpg'))          // put the filePath you want to send here
```
**Example** *(Send text inside Room, and mention @replyTo contact)*  
```js
const contact = await Contact.find({name: 'lijiarui'}) // change 'lijiarui' to any of the room member
const room = await Room.find({name: 'wechaty'})        // change 'wechaty' to any of your room in wechat
await room.say('Hello world!', contact)
```
<a name="Room+on"></a>

## room.on(event, listener)

**Return the type of**: this 


**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  
**Returns**: <code>this</code> - - this for chain  

| Param | Type | Description |
| --- | --- | --- |
| event | [<code>RoomEventName</code>](/zh/api/?id=roomeventname) | Emit WechatyEvent |
| listener | [<code>RoomEventFunction</code>](/zh/api/?id=roomeventfunction) | Depends on the WechatyEvent |

**Example** *(Event:join )*  
```js
const room = await Room.find({topic: 'event-room'}) // change `event-room` to any room topic in your wechat
if (room) {
  room.on('join', (room: Room, inviteeList: Contact[], inviter: Contact) => {
    const nameList = inviteeList.map(c => c.name()).join(',')
    console.log(`Room ${room.topic()} got new member ${nameList}, invited by ${inviter}`)
  })
}
```
**Example** *(Event:leave )*  
```js
const room = await Room.find({topic: 'event-room'}) // change `event-room` to any room topic in your wechat
if (room) {
  room.on('leave', (room: Room, leaverList: Contact[]) => {
    const nameList = leaverList.map(c => c.name()).join(',')
    console.log(`Room ${room.topic()} lost member ${nameList}`)
  })
}
```
**Example** *(Event:topic )*  
```js
const room = await Room.find({topic: 'event-room'}) // change `event-room` to any room topic in your wechat
if (room) {
  room.on('topic', (room: Room, topic: string, oldTopic: string, changer: Contact) => {
    console.log(`Room ${room.topic()} topic changed from ${oldTopic} to ${topic} by ${changer.name()}`)
  })
}
```
<a name="Room+add"></a>

## room.add(contact)

**Return the type of**: Promise.&lt;number&gt; 


Add contact in a room

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  

| Param | Type |
| --- | --- |
| contact | [<code>Contact</code>](/zh/api/contact?id=top) | 

**Example**  
```js
const contact = await Contact.find({name: 'lijiarui'}) // change 'lijiarui' to any contact in your wechat
const room = await Room.find({topic: 'wechat'})        // change 'wechat' to any room topic in your wechat
if (room) {
  const result = await room.add(contact)
  if (result) {
    console.log(`add ${contact.name()} to ${room.topic()} successfully! `)
  } else{
    console.log(`failed to add ${contact.name()} to ${room.topic()}! `)
  }
}
```
<a name="Room+del"></a>

## room.del(contact)

**Return the type of**: Promise.&lt;number&gt; 


Delete a contact from the room
It works only when the bot is the owner of the room

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  

| Param | Type |
| --- | --- |
| contact | [<code>Contact</code>](/zh/api/contact?id=top) | 

**Example**  
```js
const room = await Room.find({topic: 'wechat'})          // change 'wechat' to any room topic in your wechat
const contact = await Contact.find({name: 'lijiarui'})   // change 'lijiarui' to any room member in the room you just set
if (room) {
  const result = await room.del(contact)
  if (result) {
    console.log(`remove ${contact.name()} from ${room.topic()} successfully! `)
  } else{
    console.log(`failed to remove ${contact.name()} from ${room.topic()}! `)
  }
}
```
<a name="Room+topic"></a>

## room.topic([newTopic])

**Return the type of**: Promise.&lt;(string&#124;void)&gt; 


SET/GET topic from the room

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  

| Param | Type | Description |
| --- | --- | --- |
| [newTopic] | <code>string</code> | If set this para, it will change room topic. |

**Example** *(When you say anything in a room, it will get room topic. )*  
```js
const bot = Wechaty.instance()
bot
.on('message', async m => {
  const room = m.room()
  if (room) {
    const topic = await room.topic()
    console.log(`room topic is : ${topic}`)
  }
})
```
**Example** *(When you say anything in a room, it will change room topic. )*  
```js
const bot = Wechaty.instance()
bot
.on('message', async m => {
  const room = m.room()
  if (room) {
    const oldTopic = room.topic()
    room.topic('change topic to wechaty!')
    console.log(`room topic change from ${oldTopic} to ${room.topic()}`)
  }
})
```
<a name="Room+qrcode"></a>

## room.qrcode()
Room QR Code

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  
<a name="Room+alias"></a>

## room.alias(contact)

**Return the type of**: string  &#124; <code>null</code>


Return contact's roomAlias in the room, the same as roomAlias

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  
**Returns**: <code>string</code> &#124; <code>null</code> - - If a contact has an alias in room, return string, otherwise return null  

| Param | Type |
| --- | --- |
| contact | [<code>Contact</code>](/zh/api/contact?id=top) | 

**Example**  
```js
const bot = Wechaty.instance()
bot
.on('message', async m => {
  const room = m.room()
  const contact = m.from()
  if (room) {
    const alias = room.alias(contact)
    console.log(`${contact.name()} alias is ${alias}`)
  }
})
```
<a name="Room+roomAlias"></a>

## room.roomAlias(contact)

**Return the type of**: string  &#124; <code>null</code>


Same as function alias

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  

| Param | Type |
| --- | --- |
| contact | [<code>Contact</code>](/zh/api/contact?id=top) | 

<a name="Room+has"></a>

## room.has(contact)

**Return the type of**: boolean 


Check if the room has member `contact`, the return is a Promise and must be `await`-ed

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  
**Returns**: <code>boolean</code> - Return `true` if has contact, else return `false`.  

| Param | Type |
| --- | --- |
| contact | [<code>Contact</code>](/zh/api/contact?id=top) | 

**Example** *(Check whether &#x27;lijiarui&#x27; is in the room &#x27;wechaty&#x27;)*  
```js
const contact = await Contact.find({name: 'lijiarui'})   // change 'lijiarui' to any of contact in your wechat
const room = await Room.find({topic: 'wechaty'})         // change 'wechaty' to any of the room in your wechat
if (contact && room) {
  if (await room.has(contact)) {
    console.log(`${contact.name()} is in the room ${room.topic()}!`)
  } else {
    console.log(`${contact.name()} is not in the room ${room.topic()} !`)
  }
}
```
<a name="Room+memberAll"></a>

## room.memberAll(query)

**Return the type of**: [Array.&lt;Contact&gt;](/zh/api/contact?id=top) 


Find all contacts in a room

### definition
- `name`                 the name-string set by user-self, should be called name, equal to `Contact.name()`
- `roomAlias`            the name-string set by user-self in the room, should be called roomAlias
- `contactAlias`         the name-string set by bot for others, should be called alias, equal to `Contact.alias()`

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  

| Param | Type | Description |
| --- | --- | --- |
| query | <code>RoomMemberQueryFilter</code> &#124; <code>string</code> | When use memberAll(name:string), return all matched members, including name, roomAlias, contactAlias |

<a name="Room+member"></a>

## room.member(queryArg)

**Return the type of**: [Contact](/zh/api/contact?id=top)  &#124; <code>null</code>


Find all contacts in a room, if get many, return the first one.

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  

| Param | Type | Description |
| --- | --- | --- |
| queryArg | <code>RoomMemberQueryFilter</code> &#124; <code>string</code> | When use member(name:string), return all matched members, including name, roomAlias, contactAlias |

**Example** *(Find member by name)*  
```js
const room = await Room.find({topic: 'wechaty'})           // change 'wechaty' to any room name in your wechat
if (room) {
  const member = room.member('lijiarui')                   // change 'lijiarui' to any room member in your wechat
  if (member) {
    console.log(`${room.topic()} got the member: ${member.name()}`)
  } else {
    console.log(`cannot get member in room: ${room.topic()}`)
  }
}
```
**Example** *(Find member by MemberQueryFilter)*  
```js
const room = await Room.find({topic: 'wechaty'})          // change 'wechaty' to any room name in your wechat
if (room) {
  const member = room.member({name: 'lijiarui'})          // change 'lijiarui' to any room member in your wechat
  if (member) {
    console.log(`${room.topic()} got the member: ${member.name()}`)
  } else {
    console.log(`cannot get member in room: ${room.topic()}`)
  }
}
```
<a name="Room+memberList"></a>

## room.memberList()

**Return the type of**: [Array.&lt;Contact&gt;](/zh/api/contact?id=top) 


Get all room member from the room

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  
<a name="Room+sync"></a>

## room.sync()

**Return the type of**: Promise.&lt;void&gt; 


Sync data for Room

**Kind**: instance method of [<code>Room</code>](/zh/api/room?id=top)  
<a name="Room.create"></a>

## Room.create(contactList, [topic])

**Return the type of**: [Promise.&lt;Room&gt;](/zh/api/room?id=top) 


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

**Return the type of**: Promise.&lt;Array.&lt;Room&gt;&gt; 


Find room by topic, return all the matched room

**Kind**: static method of [<code>Room</code>](/zh/api/room?id=top)  

| Param | Type |
| --- | --- |
| [query] | <code>RoomQueryFilter</code> | 

**Example**  
```js
const roomList = await Room.findAll()                    // get the room list of the bot
const roomList = await Room.findAll({name: 'wechaty'})   // find all of the rooms with name 'wechaty'
```
<a name="Room.find"></a>

## Room.find(query)

**Return the type of**: Promise.&lt;(Room&#124;null)&gt; 


Try to find a room by filter: {topic: string | RegExp}. If get many, return the first one.

**Kind**: static method of [<code>Room</code>](/zh/api/room?id=top)  
**Returns**: <code>Promise.&lt;(Room&#124;null)&gt;</code> - If can find the room, return Room, or return null  

| Param | Type |
| --- | --- |
| query | <code>RoomQueryFilter</code> | 

<a name="Contact"></a>
