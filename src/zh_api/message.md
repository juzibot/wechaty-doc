# Message类
All wechat messages will be encapsulated as a Message.

`Message` is `Sayable`,
[Examples/Ding-Dong-Bot](https://githubcom/Chatie/wechaty/blob/master/examples/ding-dong-botts)

**Kind**: global class  

* [Message](/zh/api/message?id=top)
    * _instance_
        * [.payload](#Messagepayload)
        * [.from()](#Messagefrom) [<code>Contact</code>](/zh/api/contact?id=top)
        * [.to()](#Messageto) [<code>Contact</code>](/zh/api/contact?id=top) &#124; <code>null</code>
        * [.room()](#Messageroom) [<code>Room</code>](/zh/api/room?id=top) &#124; <code>null</code>
        * ~~[.content()](#Messagecontent)~~
        * [.text()](#Messagetext) <code>string</code>
        * [.say(textOrContactOrFile, [mention])](#MessagesaytextOrContactOrFile-mention) <code>Promise.&lt;void&gt;</code>
        * ~~[.file()](#Messagefile)~~
        * [.type()](#Messagetype) <code>WebMsgType</code>
        * [.self()](#Messageself) <code>boolean</code>
        * [.mention()](#Messagemention) [<code>Array.&lt;Contact&gt;</code>](/zh/api/contact?id=top)
        * [.mentioned()](#Messagementioned)
        * [.forward(to)](#Messageforwardto) <code>Promise.&lt;void&gt;</code>
        * [.age()](#Messageage)
    * _static_
        * [.Type](#MessageType)
        * [.find()](#Messagefind)
        * [.findAll()](#MessagefindAll)
        * [.create()](#Messagecreate)

<a name="Message+payload"></a>

## message.payload
Instance Properties

**Kind**: instance property of [<code>Message</code>](/zh/api/message?id=top)  
<a name="Message+from"></a>

## message.from()

**Return the type of**: [Contact](/zh/api/contact?id=top) 


Get the sender from a message.

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
<a name="Message+to"></a>

## message.to()

**Return the type of**: [Contact](/zh/api/contact?id=top)  &#124; <code>null</code>


Get the destination of the message
Message.to() will return null if a message is in a room, use Message.room() to get the room.

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
<a name="Message+room"></a>

## message.room()

**Return the type of**: [Room](/zh/api/room?id=top)  &#124; <code>null</code>


Get the room from the message.
If the message is not in a room, then will return `null`

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
<a name="Message+content"></a>

## ~~message.content()~~
***Deprecated***

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
<a name="Message+text"></a>

## message.text()

**Return the type of**: string 


Get the text content of the message

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
<a name="Message+say"></a>

## message.say(textOrContactOrFile, [mention])

**Return the type of**: Promise.&lt;void&gt; 


Reply a Text or Media File message to the sender.

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
**See**: [Examples/ding-dong-bot](https://githubcom/Chatie/wechaty/blob/master/examples/ding-dong-botts)  

| Param | Type |
| --- | --- |
| textOrContactOrFile | <code>string</code> &#124; <code>FileBox</code> | 
| [mention] | [<code>Contact</code>](/zh/api/contact?id=top) &#124; [<code>Array.&lt;Contact&gt;</code>](/zh/api/contact?id=top) | 

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

## ~~message.file()~~
***Deprecated***

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
<a name="Message+type"></a>

## message.type()

**Return the type of**: WebMsgType 


Get the type from the message.

If type is equal to `MsgType.RECALLED`, [Message#id](Message#id) is the msgId of the recalled message.

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
**See**: [MsgType](MsgType)  
<a name="Message+self"></a>

## message.self()

**Return the type of**: boolean 


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

**Return the type of**: [Array.&lt;Contact&gt;](/zh/api/contact?id=top) 


Get message mentioned contactList.

Message event table as follows

|                                                                            | Web  |  Mac PC Client | iOS Mobile |  android Mobile |
| :---                                                                       | :--: |     :----:     |   :---:    |     :---:       |
| [You were mentioned] tip ([有人@我]的提示)                                   |  ✘   |        √       |     √      |       √         |
| Identify magic code (8197) by copy & paste in mobile                       |  ✘   |        √       |     √      |       ✘         |
| Identify magic code (8197) by programming                                  |  ✘   |        ✘       |     ✘      |       ✘         |
| Identify two contacts with the same roomAlias by [You were  mentioned] tip |  ✘   |        ✘       |     √      |       √         |

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
**Returns**: [<code>Array.&lt;Contact&gt;</code>](/zh/api/contact?id=top) - - Return message mentioned contactList  
**Example**  
```js
const contactList = message.mentioned()
console.log(contactList)
```
<a name="Message+mentioned"></a>

## message.mentioned()
**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
**Deprecated:**: use mention() instead  
<a name="Message+forward"></a>

## message.forward(to)

**Return the type of**: Promise.&lt;void&gt; 


Forward the received message.

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  

| Param | Type | Description |
| --- | --- | --- |
| to | <code>Sayable</code> &#124; <code>Array.&lt;Sayable&gt;</code> | Room or Contact The recipient of the message, the room, or the contact |

<a name="Message+age"></a>

## message.age()
Message Age:
 in seconds.

**Kind**: instance method of [<code>Message</code>](/zh/api/message?id=top)  
<a name="Message.Type"></a>

## Message.Type
Static Properties

**Kind**: static property of [<code>Message</code>](/zh/api/message?id=top)  
<a name="Message.find"></a>

## Message.find()
**Kind**: static method of [<code>Message</code>](/zh/api/message?id=top)  
**Todo**

- [ ] add function

<a name="Message.findAll"></a>

## Message.findAll()
**Kind**: static method of [<code>Message</code>](/zh/api/message?id=top)  
**Todo**

- [ ] add function

<a name="Message.create"></a>

## Message.create()
Create a Mobile Terminated Message

"mobile originated" or "mobile terminated"
https://www.tatango.com/resources/video-lessons/video-mo-mt-sms-messaging/

**Kind**: static method of [<code>Message</code>](/zh/api/message?id=top)  