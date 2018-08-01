<a id="roominvitation"></a>

# RoomInvitation类
accept room invitation

**Kind**: global class  

* [RoomInvitation](/zh/api/?id=roominvitation)
    * [.accept()](#RoomInvitationaccept) <code>Promise.&lt;void&gt;</code>
    * [.inviter()](#RoomInvitationinviter) [<code>Contact</code>](/zh/api/contact)
    * [.roomTopic()](#RoomInvitationroomTopic) [<code>Contact</code>](/zh/api/contact)
    * [.date()](#RoomInvitationdate) <code>Promise.&lt;Date&gt;</code>

<a id="roominvitationaccept"></a>

## roomInvitation.accept()

**Return the type of**: <code>Promise.&lt;void&gt;</code>


Accept Room Invitation

**Kind**: instance method of [<code>RoomInvitation</code>](/zh/api/?id=roominvitation)  
**Example**  
```js
const bot = new Wechaty()
bot.on('room-invite', async roomInvitation => {
  try {
    console.log(`received room-invite event.`)
    await roomInvitation.accept()
  } catch (e) {
    console.error(e)
  }
}
.start()
```
<a id="roominvitationinviter"></a>

## roomInvitation.inviter()

**Return the type of**: [<code>Contact</code>](/zh/api/contact)


Get the inviter from room invitation

**Kind**: instance method of [<code>RoomInvitation</code>](/zh/api/?id=roominvitation)  
**Example**  
```js
const bot = new Wechaty()
bot.on('room-invite', async roomInvitation => {
  const inviter = await roomInvitation.inviter()
  const name = inviter.name()
  console.log(`received room invitation event from ${name}`)
}
.start()
```
<a id="roominvitationroomtopic"></a>

## roomInvitation.roomTopic()

**Return the type of**: [<code>Contact</code>](/zh/api/contact)


Get the room topic from room invitation

**Kind**: instance method of [<code>RoomInvitation</code>](/zh/api/?id=roominvitation)  
**Example**  
```js
const bot = new Wechaty()
bot.on('room-invite', async roomInvitation => {
  const topic = await roomInvitation.roomTopic()
  console.log(`received room invitation event from room ${topic}`)
}
.start()
```
<a id="roominvitationdate"></a>

## roomInvitation.date()

**Return the type of**: <code>Promise.&lt;Date&gt;</code>


Get the invitation time

**Kind**: instance method of [<code>RoomInvitation</code>](/zh/api/?id=roominvitation)  