<a name="Message"></a>

## Messagey类
All wechat messages will be encapsulated as a Message.

`Message` is `Sayable`,
[Examples/Ding-Dong-Bot](https://github.com/Chatie/wechaty/blob/master/examples/ding-dong-bot.ts)

**Kind**: global class  

* [Message](#Message)
    * _instance_
        * [.payload](#Message+payload)
        * [.from()](#Message+from) ⇒ <code>Contact</code>
        * [.to()](#Message+to) ⇒ <code>Contact</code> \| <code>null</code>
        * [.room()](#Message+room) ⇒ <code>Room</code> \| <code>null</code>
        * ~~[.content()](#Message+content)~~
        * [.text()](#Message+text) ⇒ <code>string</code>
        * [.say(textOrContactOrFile, [mention])](#Message+say) ⇒ <code>Promise.&lt;void&gt;</code>
        * ~~[.file()](#Message+file)~~
        * [.type()](#Message+type) ⇒ <code>WebMsgType</code>
        * [.self()](#Message+self) ⇒ <code>boolean</code>
        * [.mention()](#Message+mention) ⇒ <code>Array.&lt;Contact&gt;</code>
        * [.mentioned()](#Message+mentioned)
        * [.forward(to)](#Message+forward) ⇒ <code>Promise.&lt;void&gt;</code>
        * [.age()](#Message+age)
    * _static_
        * [.Type](#Message.Type)
        * [.find()](#Message.find)
        * [.findAll()](#Message.findAll)
        * [.create()](#Message.create)

<a name="Message+payload"></a>

### message.payload
Instance Properties

**Kind**: instance property of [<code>Message</code>](#Message)  
<a name="Message+from"></a>

### message.from() ⇒ <code>Contact</code>
Get the sender from a message.

**Kind**: instance method of [<code>Message</code>](#Message)  
<a name="Message+to"></a>

### message.to() ⇒ <code>Contact</code> \| <code>null</code>
Get the destination of the message
Message.to() will return null if a message is in a room, use Message.room() to get the room.

**Kind**: instance method of [<code>Message</code>](#Message)  
<a name="Message+room"></a>

### message.room() ⇒ <code>Room</code> \| <code>null</code>
Get the room from the message.
If the message is not in a room, then will return `null`

**Kind**: instance method of [<code>Message</code>](#Message)  
<a name="Message+content"></a>

### ~~message.content()~~
***Deprecated***

**Kind**: instance method of [<code>Message</code>](#Message)  
<a name="Message+text"></a>

### message.text() ⇒ <code>string</code>
Get the text content of the message

**Kind**: instance method of [<code>Message</code>](#Message)  
<a name="Message+say"></a>

### message.say(textOrContactOrFile, [mention]) ⇒ <code>Promise.&lt;void&gt;</code>
Reply a Text or Media File message to the sender.

**Kind**: instance method of [<code>Message</code>](#Message)  
**See**: [Examples/ding-dong-bot](https://github.com/Chatie/wechaty/blob/master/examples/ding-dong-bot.ts)  

| Param | Type |
| --- | --- |
| textOrContactOrFile | <code>string</code> \| <code>FileBox</code> | 
| [mention] | <code>Contact</code> \| <code>Array.&lt;Contact&gt;</code> | 

**Example**  
```js
const bot = new Wechaty()
bot
.on('message', async m => {
  if (/^ding$/i.test(m.text())) {
    await m.say('hello world')
    console.log('Bot REPLY: hello world')
    await m.say(new bot.Message(__dirname + '/wechaty.png'))
    console.log('Bot REPLY: Image')
  }
})
```
<a name="Message+file"></a>

### ~~message.file()~~
***Deprecated***

**Kind**: instance method of [<code>Message</code>](#Message)  
<a name="Message+type"></a>

### message.type() ⇒ <code>WebMsgType</code>
Get the type from the message.

If type is equal to `MsgType.RECALLED`, [Message#id](Message#id) is the msgId of the recalled message.

**Kind**: instance method of [<code>Message</code>](#Message)  
**See**: [MsgType](MsgType)  
<a name="Message+self"></a>

### message.self() ⇒ <code>boolean</code>
Check if a message is sent by self.

**Kind**: instance method of [<code>Message</code>](#Message)  
**Returns**: <code>boolean</code> - - Return `true` for send from self, `false` for send from others.  
**Example**  
```js
if (message.self()) {
 console.log('this message is sent by myself!')
}
```
<a name="Message+mention"></a>

### message.mention() ⇒ <code>Array.&lt;Contact&gt;</code>
Get message mentioned contactList.

Message event table as follows

|                                                                            | Web  |  Mac PC Client | iOS Mobile |  android Mobile |
| :---                                                                       | :--: |     :----:     |   :---:    |     :---:       |
| [You were mentioned] tip ([有人@我]的提示)                                   |  ✘   |        √       |     √      |       √         |
| Identify magic code (8197) by copy & paste in mobile                       |  ✘   |        √       |     √      |       ✘         |
| Identify magic code (8197) by programming                                  |  ✘   |        ✘       |     ✘      |       ✘         |
| Identify two contacts with the same roomAlias by [You were  mentioned] tip |  ✘   |        ✘       |     √      |       √         |

**Kind**: instance method of [<code>Message</code>](#Message)  
**Returns**: <code>Array.&lt;Contact&gt;</code> - - Return message mentioned contactList  
**Example**  
```js
const contactList = message.mentioned()
console.log(contactList)
```
<a name="Message+mentioned"></a>

### message.mentioned()
**Kind**: instance method of [<code>Message</code>](#Message)  
**Deprecated:**: use mention() instead  
<a name="Message+forward"></a>

### message.forward(to) ⇒ <code>Promise.&lt;void&gt;</code>
Forward the received message.

**Kind**: instance method of [<code>Message</code>](#Message)  

| Param | Type | Description |
| --- | --- | --- |
| to | <code>Sayable</code> \| <code>Array.&lt;Sayable&gt;</code> | Room or Contact The recipient of the message, the room, or the contact |

<a name="Message+age"></a>

### message.age()
Message Age:
 in seconds.

**Kind**: instance method of [<code>Message</code>](#Message)  
<a name="Message.Type"></a>

### Messagey类.Type
Static Properties

**Kind**: static property of [<code>Message</code>](#Message)  
<a name="Message.find"></a>

### Messagey类.find()
**Kind**: static method of [<code>Message</code>](#Message)  
**Todo**

- [ ] add function

<a name="Message.findAll"></a>

### Messagey类.findAll()
**Kind**: static method of [<code>Message</code>](#Message)  
**Todo**

- [ ] add function

<a name="Message.create"></a>

### Messagey类.create()
Create a Mobile Terminated Message

"mobile originated" or "mobile terminated"
https://www.tatango.com/resources/video-lessons/video-mo-mt-sms-messaging/

**Kind**: static method of [<code>Message</code>](#Message)  
