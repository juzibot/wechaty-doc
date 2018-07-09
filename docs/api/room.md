# Room

All wechat rooms(groups) will be encapsulated as a Room.



`Room` is `Sayable`,

[Examples/Room-Bot](https://github.com/Chatie/wechaty/blob/master/examples/room-bot.ts)



**Kind**: global class  



* [Room](/api/room)

    * _instance_

        * [.say(textOrContactOrFile, [replyTo])](#Room+say) ⇒ <code>Promise.&lt;boolean&gt;</code>

        * [.on(event, listener)](#Room+on) ⇒ <code>this</code>

        * [.add(contact)](#Room+add) ⇒ <code>Promise.&lt;number&gt;</code>

        * [.del(contact)](#Room+del) ⇒ <code>Promise.&lt;number&gt;</code>

        * [.topic([newTopic])](#Room+topic) ⇒ <code>Promise.&lt;(string\|void)&gt;</code>

        * [.qrcode()](#Room+qrcode)

        * [.alias(contact)](#Room+alias) ⇒ <code>string</code> \| <code>null</code>

        * [.roomAlias(contact)](#Room+roomAlias) ⇒ <code>string</code> \| <code>null</code>

        * [.has(contact)](#Room+has) ⇒ <code>boolean</code>

        * [.memberAll(query)](#Room+memberAll) ⇒ [<code>Array.&lt;Contact&gt;</code>](/api/contact)

        * [.member(queryArg)](#Room+member) ⇒ [<code>Contact</code>](/api/contact) \| <code>null</code>

        * [.memberList()](#Room+memberList) ⇒ [<code>Array.&lt;Contact&gt;</code>](/api/contact)

        * [.sync()](#Room+sync) ⇒ <code>Promise.&lt;void&gt;</code>

    * _static_

        * [.create(contactList, [topic])](#Room.create) ⇒ [<code>Promise.&lt;Room&gt;</code>](/api/room)

        * [.findAll([query])](#Room.findAll) ⇒ <code>Promise.&lt;Array.&lt;Room&gt;&gt;</code>

        * [.find(query)](#Room.find) ⇒ <code>Promise.&lt;(Room\|null)&gt;</code>



<a name="Room+say"></a>



### room.say(textOrContactOrFile, [replyTo]) ⇒ <code>Promise.&lt;boolean&gt;</code>

Send message inside Room, if set [replyTo], wechaty will mention the contact as well.



**Kind**: instance method of [<code>Room</code>](/api/room)  

**Returns**: <code>Promise.&lt;boolean&gt;</code> - If bot send message successfully, it will return true. If the bot failed to send for blocking or any other reason, it will return false  



| Param | Type | Description |

| --- | --- | --- |

| textOrContactOrFile | <code>string</code> \| <code>MediaMessage</code> | Send `text` or `media file` inside Room. |

| [replyTo] | [<code>Contact</code>](/api/contact) \| [<code>Array.&lt;Contact&gt;</code>](/api/contact) | Optional parameter, send content inside Room, and mention @replyTo contact or contactList. |



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



### room.on(event, listener) ⇒ <code>this</code>

**Kind**: instance method of [<code>Room</code>](/api/room)  

**Returns**: <code>this</code> - - this for chain  



| Param | Type | Description |

| --- | --- | --- |

| event | [<code>RoomEventName</code>](#RoomEventName) | Emit WechatyEvent |

| listener | [<code>RoomEventFunction</code>](#RoomEventFunction) | Depends on the WechatyEvent |



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



### room.add(contact) ⇒ <code>Promise.&lt;number&gt;</code>

Add contact in a room



**Kind**: instance method of [<code>Room</code>](/api/room)  



| Param | Type |

| --- | --- |

| contact | [<code>Contact</code>](/api/contact) | 



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



### room.del(contact) ⇒ <code>Promise.&lt;number&gt;</code>

Delete a contact from the room

It works only when the bot is the owner of the room



**Kind**: instance method of [<code>Room</code>](/api/room)  



| Param | Type |

| --- | --- |

| contact | [<code>Contact</code>](/api/contact) | 



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



### room.topic([newTopic]) ⇒ <code>Promise.&lt;(string\|void)&gt;</code>

SET/GET topic from the room



**Kind**: instance method of [<code>Room</code>](/api/room)  



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



### room.qrcode()

Room QR Code



**Kind**: instance method of [<code>Room</code>](/api/room)  

<a name="Room+alias"></a>



### room.alias(contact) ⇒ <code>string</code> \| <code>null</code>

Return contact's roomAlias in the room, the same as roomAlias



**Kind**: instance method of [<code>Room</code>](/api/room)  

**Returns**: <code>string</code> \| <code>null</code> - - If a contact has an alias in room, return string, otherwise return null  



| Param | Type |

| --- | --- |

| contact | [<code>Contact</code>](/api/contact) | 



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



### room.roomAlias(contact) ⇒ <code>string</code> \| <code>null</code>

Same as function alias



**Kind**: instance method of [<code>Room</code>](/api/room)  



| Param | Type |

| --- | --- |

| contact | [<code>Contact</code>](/api/contact) | 



<a name="Room+has"></a>



### room.has(contact) ⇒ <code>boolean</code>

Check if the room has member `contact`, the return is a Promise and must be `await`-ed



**Kind**: instance method of [<code>Room</code>](/api/room)  

**Returns**: <code>boolean</code> - Return `true` if has contact, else return `false`.  



| Param | Type |

| --- | --- |

| contact | [<code>Contact</code>](/api/contact) | 



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



### room.memberAll(query) ⇒ [<code>Array.&lt;Contact&gt;</code>](/api/contact)

Find all contacts in a room



#### definition

- `name`                 the name-string set by user-self, should be called name, equal to `Contact.name()`

- `roomAlias`            the name-string set by user-self in the room, should be called roomAlias

- `contactAlias`         the name-string set by bot for others, should be called alias, equal to `Contact.alias()`



**Kind**: instance method of [<code>Room</code>](/api/room)  



| Param | Type | Description |

| --- | --- | --- |

| query | <code>RoomMemberQueryFilter</code> \| <code>string</code> | When use memberAll(name:string), return all matched members, including name, roomAlias, contactAlias |



<a name="Room+member"></a>



### room.member(queryArg) ⇒ [<code>Contact</code>](/api/contact) \| <code>null</code>

Find all contacts in a room, if get many, return the first one.



**Kind**: instance method of [<code>Room</code>](/api/room)  



| Param | Type | Description |

| --- | --- | --- |

| queryArg | <code>RoomMemberQueryFilter</code> \| <code>string</code> | When use member(name:string), return all matched members, including name, roomAlias, contactAlias |



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



### room.memberList() ⇒ [<code>Array.&lt;Contact&gt;</code>](/api/contact)

Get all room member from the room



**Kind**: instance method of [<code>Room</code>](/api/room)  

<a name="Room+sync"></a>



### room.sync() ⇒ <code>Promise.&lt;void&gt;</code>

Sync data for Room



**Kind**: instance method of [<code>Room</code>](/api/room)  

<a name="Room.create"></a>



### Room.create(contactList, [topic]) ⇒ [<code>Promise.&lt;Room&gt;</code>](/api/room)

Create a new room.



**Kind**: static method of [<code>Room</code>](/api/room)  



| Param | Type |

| --- | --- |

| contactList | [<code>Array.&lt;Contact&gt;</code>](/api/contact) | 

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



### Room.findAll([query]) ⇒ <code>Promise.&lt;Array.&lt;Room&gt;&gt;</code>

Find room by topic, return all the matched room



**Kind**: static method of [<code>Room</code>](/api/room)  



| Param | Type |

| --- | --- |

| [query] | <code>RoomQueryFilter</code> | 



**Example**  

```js

const roomList = await Room.findAll()                    // get the room list of the bot

const roomList = await Room.findAll({name: 'wechaty'})   // find all of the rooms with name 'wechaty'

```

<a name="Room.find"></a>



### Room.find(query) ⇒ <code>Promise.&lt;(Room\|null)&gt;</code>

Try to find a room by filter: {topic: string | RegExp}. If get many, return the first one.



**Kind**: static method of [<code>Room</code>](/api/room)  

**Returns**: <code>Promise.&lt;(Room\|null)&gt;</code> - If can find the room, return Room, or return null  



| Param | Type |

| --- | --- |

| query | <code>RoomQueryFilter</code> | 



<a name="Contact"></a>



## RoomEventName

Room Class Event Type



**Kind**: global typedef  

**Properties**



| Name | Type | Description |

| --- | --- | --- |

| join | <code>string</code> | Emit when anyone join any room. |

| topic | <code>string</code> | Get topic event, emitted when someone change room topic. |

| leave | <code>string</code> | Emit when anyone leave the room.<br>                               If someone leaves the room by themselves, wechat will not notice other people in the room, so the bot will never get the "leave" event. |



<a name="RoomEventFunction"></a>



## RoomEventFunction

Room Class Event Function



**Kind**: global typedef  

**Properties**



| Name | Type | Description |

| --- | --- | --- |

| room-join | <code>function</code> | (this: Room, inviteeList: Contact[] , inviter: Contact)  => void |

| room-topic | <code>function</code> | (this: Room, topic: string, oldTopic: string, changer: Contact) => void |

| room-leave | <code>function</code> | (this: Room, leaver: Contact) => void |



<a name="MemberQueryFilter"></a>



## MemberQueryFilter

The way to search member by Room.member()



**Kind**: global typedef  

**Properties**



| Name | Type | Description |

| --- | --- | --- |

| name | <code>string</code> | Find the contact by wechat name in a room, equal to `Contact.name()`. |

| roomAlias | <code>string</code> | Find the contact by alias set by the bot for others in a room. |

| contactAlias | <code>string</code> | Find the contact by alias set by the contact out of a room, equal to `Contact.alias()`. [More Detail](https://github.com/Chatie/wechaty/issues/365) |



<a name="ContactQueryFilter"></a>


