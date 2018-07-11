# Message类
All wechat messages will be encapsulated as a Message.

[Examples/Ding-Dong-Bot](https://githubcom/Chatie/wechaty/blob/master/examples/ding-dong-botts)

**Kind**: global class  

* [Message](/zh/api/message?id=top)
    * [.from()](#Messagefrom) [<code>Contact</code>](/zh/api/contact?id=top)
    * [.to()](#Messageto) [<code>Contact</code>](/zh/api/contact?id=top) &#124; <code>null</code>
    * [.room()](#Messageroom) [<code>Room</code>](/zh/api/room?id=top) &#124; <code>null</code>
    * ~~[.content()](#Messagecontent)~~
    * [.text()](#Messagetext) <code>string</code>
    * [.say(textOrContactOrFile, [mention])](#MessagesaytextOrContactOrFile-mention) <code>Promise.&lt;void&gt;</code>
    * [.type()](#Messagetype) <code>MessageType</code>
    * [.self()](#Messageself) <code>boolean</code>
    * [.mention()](#Messagemention) <code>Promise.&lt;Array.&lt;Contact&gt;&gt;</code>
    * ~~[.mentioned()](#Messagementioned)~~
    * [.forward(to)](#Messageforwardto) <code>Promise.&lt;void&gt;</code>
    * [.age()](#Messageage) <code>number</code>
    * ~~[.file()](#Messagefile)~~
    * [.toFileBox()](#MessagetoFileBox) <code>Promise.&lt;FileBox&gt;</code>
    * [.toContact()](#MessagetoContact) <code>Promise.&lt;FileBox&gt;</code>

<a name="Message+from"></a>

## message.from()

**Return the type of**: [<code>Contact</code>](/zh/api/contact?id=top)


Get the sender from a message.

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
**Example**  
```js
const bot = new Wechaty()
bot
.on('message', async m => {
  const contact = msg.from()
  const text = msg.text()
  const room = msg.room()
  if (room) {
    const topic = await room.topic()
    console.log(`Room: ${topic} Contact: ${contact.name()} Text: ${text}`)
  } else {
    console.log(`Contact: ${contact.name()} Text: ${text}`)
  }
})
.start()
```
<a name="Message+to"></a>

## message.to()

**Return the type of**: [<code>Contact</code>](/zh/api/contact?id=top) &#124; <code>null</code>


Get the destination of the message
Message.to() will return null if a message is in a room, use Message.room() to get the room.

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
<a name="Message+room"></a>

## message.room()

**Return the type of**: [<code>Room</code>](/zh/api/room?id=top) &#124; <code>null</code>


Get the room from the message.
If the message is not in a room, then will return `null`

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
**Example**  
```js
const bot = new Wechaty()
bot
.on('message', async m => {
  const contact = msg.from()
  const text = msg.text()
  const room = msg.room()
  if (room) {
    const topic = await room.topic()
    console.log(`Room: ${topic} Contact: ${contact.name()} Text: ${text}`)
  } else {
    console.log(`Contact: ${contact.name()} Text: ${text}`)
  }
})
.start()
```
<a name="Message+content"></a>

## ~~message.content()~~
***Deprecated***

use [text](#Messagetext) instead

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
<a name="Message+text"></a>

## message.text()

**Return the type of**: <code>string</code>


Get the text content of the message

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
**Example**  
```js
const bot = new Wechaty()
bot
.on('message', async m => {
  const contact = msg.from()
  const text = msg.text()
  const room = msg.room()
  if (room) {
    const topic = await room.topic()
    console.log(`Room: ${topic} Contact: ${contact.name()} Text: ${text}`)
  } else {
    console.log(`Contact: ${contact.name()} Text: ${text}`)
  }
})
.start()
```
<a name="Message+say"></a>

## message.say(textOrContactOrFile, [mention])

**Return the type of**: <code>Promise.&lt;void&gt;</code>


Reply a Text or Media File message to the sender.

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
**See**: [Examples/ding-dong-bot](https://githubcom/Chatie/wechaty/blob/master/examples/ding-dong-botts)  

| Param | Type | Description |
| --- | --- | --- |
| textOrContactOrFile | <code>string</code> &#124; [<code>Contact</code>](/zh/api/contact?id=top) &#124; <code>FileBox</code> | send text, Contact, or file to bot. </br> You can use [FileBox](https://wwwnpmjscom/package/file-box) to send file |
| [mention] | [<code>Contact</code>](/zh/api/contact?id=top) &#124; [<code>Array.&lt;Contact&gt;</code>](/zh/api/contact?id=top) |  |

**Example**  
```js
import { FileBox }  from 'file-box'
const bot = new Wechaty()
bot
.on('message', async m => {

# 1. send Image

  if (/^ding$/i.test(m.text())) {
    const fileBox = FileBox.fromUrl('https://chatie.io/wechaty/images/bot-qr-code.png')
    await msg.say(fileBox)
  }

# 2. send Text

  if (/^dong$/i.test(m.text())) {
    await msg.say('dingdingding')
  }

# 3. send Contact

  if (/^lijiarui$/i.test(m.text())) {
    const contactCard = await bot.Contact.find({name: 'lijiarui'})
    await msg.say(contactCard)
  }

})
.start()
```
<a name="Message+type"></a>

## message.type()

**Return the type of**: <code>MessageType</code>


Get the type from the message.
> Tips: MessageType is Enum here. </br>
- MessageType.Unknown   = 0, </br>
- MessageType.Attachment = 1, </br>
- MessageType.Audio      = 2, </br>
- MessageType.Contact    = 3, </br>
- MessageType.Emoticon   = 4, </br>
- MessageType.Image      = 5, </br>
- MessageType.Text       = 6, </br>
- MessageType.Video      = 7, </br>

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
**Example**  
```js
const bot = new Wechaty()
if (message.type() === bot.Message.Type.Text) {
  console.log('This is a text message')
}
```
<a name="Message+self"></a>

## message.self()

**Return the type of**: <code>boolean</code>


Check if a message is sent by self.

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
**Returns**: <code>boolean</code> - - Return `true` for send from self, `false` for send from others.  
**Example**  
```js
if (message.self()) {
 console.log('this message is sent by myself!')
}
```
<a name="Message+mention"></a>

## message.mention()

**Return the type of**: <code>Promise.&lt;Array.&lt;Contact&gt;&gt;</code>


Get message mentioned contactList.

Message event table as follows

|                                                                            | Web  |  Mac PC Client | iOS Mobile |  android Mobile |
| :---                                                                       | :--: |     :----:     |   :---:    |     :---:       |
| [You were mentioned] tip ([有人@我]的提示)                                   |  ✘   |        √       |     √      |       √         |
| Identify magic code (8197) by copy & paste in mobile                       |  ✘   |        √       |     √      |       ✘         |
| Identify magic code (8197) by programming                                  |  ✘   |        ✘       |     ✘      |       ✘         |
| Identify two contacts with the same roomAlias by [You were  mentioned] tip |  ✘   |        ✘       |     √      |       √         |

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
**Returns**: <code>Promise.&lt;Array.&lt;Contact&gt;&gt;</code> - - Return message mentioned contactList  
**Example**  
```js
const contactList = await message.mentioned()
console.log(contactList)
```
<a name="Message+mentioned"></a>

## ~~message.mentioned()~~
***Deprecated***

should use [mention](#Messagemention) instead

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
<a name="Message+forward"></a>

## message.forward(to)

**Return the type of**: <code>Promise.&lt;void&gt;</code>


Forward the received message.

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  

| Param | Type | Description |
| --- | --- | --- |
| to | <code>Sayable</code> &#124; <code>Array.&lt;Sayable&gt;</code> | Room or Contact The recipient of the message, the room, or the contact |

**Example**  
```js
const bot = new Wechaty()
bot
.on('message', async m => {
  const room = await bot.Room.find({topic: 'wechaty'})
  if (room) {
    await m.forward(room)
    console.log('forward this message to wechaty room!')
  }
})
.start()
```
<a name="Message+age"></a>

## message.age()

**Return the type of**: <code>number</code>


Message Age:
in seconds.
TODO

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
<a name="Message+file"></a>

## ~~message.file()~~
***Deprecated***

use [toFileBox](#MessagetoFileBox) instead

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
<a name="Message+toFileBox"></a>

## message.toFileBox()

**Return the type of**: <code>Promise.&lt;FileBox&gt;</code>


Get Media File of the Message

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
<a name="Message+toContact"></a>

## message.toContact()

**Return the type of**: <code>Promise.&lt;FileBox&gt;</code>


Get Share Card of the Message
TODO

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  