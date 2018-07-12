<a id="wechaty"></a>

# Wechaty类
Main bot class.

A `Bot` is a wechat client depends on which puppet you use.
It may equals
- web-wechat, when you use: [puppet-puppeteer](https://github.com/chatie/wechaty-puppet-puppeteer)/[puppet-wechat4u](https://github.com/chatie/wechaty-puppet-wechat4u)
- ipad-wechat, when you use: [puppet-padchat](https://github.com/lijiarui/wechaty-puppet-padchat)
- ios-wechat, when you use: puppet-ioscat

See more:
- [What is a Puppet in Wechaty](https://github.com/Chatie/wechaty-getting-started/wiki/FAQ-EN#31-what-is-a-puppet-in-wechaty)

> If you want to know how to send message, see [Message](/zh/api/message) <br>
> If you want to know how to get contact, see [Contact](/zh/api/contact)

**Kind**: global class  

* [Wechaty](/zh/api/wechaty)
    * [new Wechaty([options])](#new_Wechaty_new)
    * _instance_
        * [.on(event, listener)](#Wechatyon) [<code>Wechaty</code>](/zh/api/wechaty)
        * ~~[.init()](#Wechatyinit)~~
        * [.start()](#Wechatystart) <code>Promise.&lt;void&gt;</code>
        * [.stop()](#Wechatystop) <code>Promise.&lt;void&gt;</code>
        * [.logout()](#Wechatylogout) <code>Promise.&lt;void&gt;</code>
        * [.logonoff()](#Wechatylogonoff) <code>boolean</code>
        * ~~[.self()](#Wechatyself)~~
        * [.userSelf()](#WechatyuserSelf) [<code>Contact</code>](/zh/api/contact)
        * [.say(textOrContactOrFile)](#Wechatysay) <code>Promise.&lt;void&gt;</code>
        * [.version([forceNpm])](#Wechatyversion) <code>string</code>
    * _static_
        * [.instance([options])](#Wechatyinstance)

<a id="new_wechaty_new"></a>

## new Wechaty([options])
Creates an instance of Wechaty.


| Param | Type | Default |
| --- | --- | --- |
| [options] | [<code>WechatyOptions</code>](/zh/api/?id=wechatyoptions) | <code>{}</code> | 

**Example** *(The World&#x27;s Shortest ChatBot Code: 6 lines of JavaScript)*  
```js
const { Wechaty } = require('wechaty')
const bot = new Wechaty()
bot.on('scan',    (qrcode, status) => console.log(['https://api.qrserver.com/v1/create-qr-code/?data=',encodeURIComponent(qrcode),'&size=220x220&margin=20',].join('')))
bot.on('login',   user => console.log(`User ${user} logined`))
bot.on('message', message => console.log(`Message: ${message}`))
bot.start()
```
<a id="wechatyon"></a>

## wechaty.on(event, listener)

**Return the type of**: [<code>Wechaty</code>](/zh/api/wechaty)


When the bot get message, it will emit the following Event.

You can do anything you want when in these events functions.
The main Event name as follows:
- **scan**: Emit when the bot needs to show you a QR Code for scanning. After scan the qrcode, you can login
- **login**: Emit when bot login full successful.
- **logout**: Emit when bot detected log out.
- **message**: Emit when there's a new message.

see more in [WechatyEventName](/zh/api/?id=wechatyeventname)

**Kind**: instance method of [<code>Wechaty</code>](/zh/api/wechaty)  
**Returns**: [<code>Wechaty</code>](/zh/api/wechaty) - - this for chain  

| Param | Type | Description |
| --- | --- | --- |
| event | [<code>WechatyEventName</code>](/zh/api/?id=wechatyeventname) | Emit WechatyEvent |
| listener | [<code>WechatyEventFunction</code>](/zh/api/?id=wechatyeventfunction) | Depends on the WechatyEvent |

**Example** *(Event:scan)*  
```js
# Scan Event will emit when the bot needs to show you a QR Code for scanning

bot.on('scan', (url: string, code: number) => {
  console.log(`[${code}] Scan ${url} to login.` )
})
```
**Example** *(Event:login )*  
```js
# Login Event will emit when bot login full successful.

bot.on('login', (user: ContactSelf) => {
  console.log(`user ${user} login`)
})
```
**Example** *(Event:logout )*  
```js
# Logout Event will emit when bot detected log out.

bot.on('logout', (user: ContactSelf) => {
  console.log(`user ${user} logout`)
})
```
**Example** *(Event:message )*  
```js
# Message Event will emit when there's a new message.

wechaty.on('message', (message: Message) => {
  console.log(`message ${message} received`)
})
```
**Example** *(Event:friendship )*  
```js
# Friendship Event will emit when got a new friend request, or friendship is confirmed.

bot.on('friendship', (friendship: Friendship) => {
  if(friendship.type() === Friendship.Type.RECEIVE){ // 1. receive new friendship request from new contact
    const contact = friendship.contact()
    let result = await friendship.accept()
      if(result){
        console.log(`Request from ${contact.name()} is accept succesfully!`)
      } else{
        console.log(`Request from ${contact.name()} failed to accept!`)
      }
	  } else if (friendship.type() === Friendship.Type.CONFIRM) { // 2. confirm friendship
      console.log(`new friendship confirmed with ${contact.name()}`)
   }
 })
```
**Example** *(Event:room-join )*  
```js
# room-join Event will emit when someone join the room.

bot.on('room-join', (room: Room, inviteeList: Contact[], inviter: Contact) => {
  const nameList = inviteeList.map(c => c.name()).join(',')
  console.log(`Room ${room.topic()} got new member ${nameList}, invited by ${inviter}`)
})
```
**Example** *(Event:room-leave )*  
```js
# room-leave Event will emit when someone leave the room.

bot.on('room-leave', (room: Room, leaverList: Contact[]) => {
  const nameList = leaverList.map(c => c.name()).join(',')
  console.log(`Room ${room.topic()} lost member ${nameList}`)
})
```
**Example** *(Event:room-topic )*  
```js
# room-topic Event will emit when someone change the room's topic.

bot.on('room-topic', (room: Room, topic: string, oldTopic: string, changer: Contact) => {
  console.log(`Room ${room.topic()} topic changed from ${oldTopic} to ${topic} by ${changer.name()}`)
})
```
**Example** *(Event:error )*  
```js
# error Event will emit when there's an error occurred.

bot.on('error', (error) => {
  console.error(error)
})
```
<a id="wechatyinit"></a>

## ~~wechaty.init()~~
***Deprecated***

**Kind**: instance method of [<code>Wechaty</code>](/zh/api/wechaty)  
<a id="wechatystart"></a>

## wechaty.start()

**Return the type of**: <code>Promise.&lt;void&gt;</code>


When you start the bot, bot will begin to login, need you wechat scan qrcode to login

**Kind**: instance method of [<code>Wechaty</code>](/zh/api/wechaty)  
**Example**  
```js
await bot.start()
// do other stuff with bot here
```
<a id="wechatystop"></a>

## wechaty.stop()

**Return the type of**: <code>Promise.&lt;void&gt;</code>


Stop the bot

**Kind**: instance method of [<code>Wechaty</code>](/zh/api/wechaty)  
**Example**  
```js
await bot.stop()
```
<a id="wechatylogout"></a>

## wechaty.logout()

**Return the type of**: <code>Promise.&lt;void&gt;</code>


Logout the bot

**Kind**: instance method of [<code>Wechaty</code>](/zh/api/wechaty)  
**Example**  
```js
await bot.logout()
```
<a id="wechatylogonoff"></a>

## wechaty.logonoff()

**Return the type of**: <code>boolean</code>


Get the logon / logoff state

**Kind**: instance method of [<code>Wechaty</code>](/zh/api/wechaty)  
**Example**  
```js
if (bot.logonoff()) {
  console.log('Bot logined')
} else {
  console.log('Bot not logined')
}
```
<a id="wechatyself"></a>

## ~~wechaty.self()~~
***Deprecated***

Should use [userSelf](#WechatyuserSelf) instead

**Kind**: instance method of [<code>Wechaty</code>](/zh/api/wechaty)  
<a id="wechatyuserself"></a>

## wechaty.userSelf()

**Return the type of**: [<code>Contact</code>](/zh/api/contact)


Get current user

**Kind**: instance method of [<code>Wechaty</code>](/zh/api/wechaty)  
**Example**  
```js
const contact = bot.userSelf()
console.log(`Bot is ${contact.name()}`)
```
<a id="wechatysay"></a>

## wechaty.say(textOrContactOrFile)

**Return the type of**: <code>Promise.&lt;void&gt;</code>


Send message to userSelf, in other words, bot send message to itself.

**Kind**: instance method of [<code>Wechaty</code>](/zh/api/wechaty)  

| Param | Type | Description |
| --- | --- | --- |
| textOrContactOrFile | <code>string</code> &#124; [<code>Contact</code>](/zh/api/contact) &#124; <code>FileBox</code> | send text, Contact, or file to bot. </br> You can use [FileBox](https://www.npmjs.com/package/file-box) to send file |

**Example**  
```js
const bot = new Wechaty()
await bot.start()
// after logged in

# 1. send text to bot itself
await bot.say('hello!')

# 2. send Contact to bot itself
const contact = bot.Contact.load('contactId')
await bot.say(contact)

# 3. send Image to bot itself from remote url
import { FileBox }  from 'file-box'
const fileBox = FileBox.fromUrl('https://chatie.io/wechaty/images/bot-qr-code.png')
await bot.say(fileBox)

# 4. send Image to bot itself from local file
import { FileBox }  from 'file-box'
const fileBox = FileBox.fromLocal('/tmp/text.jpg')
await bot.say(fileBox)
```
<a id="wechatyversion"></a>

## wechaty.version([forceNpm])

**Return the type of**: <code>string</code>


Return version of Wechaty

**Kind**: instance method of [<code>Wechaty</code>](/zh/api/wechaty)  
**Returns**: <code>string</code> - - the version number  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| [forceNpm] | <code>boolean</code> | <code>false</code> | If set to true, will only return the version in package.json. </br>                                      Otherwise will return git commit hash if .git exists. |

**Example**  
```js
console.log(Wechaty.instance().version())       // return '#git[af39df]'
console.log(Wechaty.instance().version(true))   // return '0.7.9'
```
<a id="wechatyinstance"></a>

## Wechaty.instance([options])
get the singleton instance of Wechaty

**Kind**: static method of [<code>Wechaty</code>](/zh/api/wechaty)  

| Param | Type | Default |
| --- | --- | --- |
| [options] | [<code>WechatyOptions</code>](/zh/api/?id=wechatyoptions) | <code>{}</code> | 

**Example** *(The World&#x27;s Shortest ChatBot Code: 6 lines of JavaScript)*  
```js
const { Wechaty } = require('wechaty')

Wechaty.instance() // Singleton
.on('scan', (url, code) => console.log(`Scan QR Code to login: ${code}\n${url}`))
.on('login',       user => console.log(`User ${user} logined`))
.on('message',  message => console.log(`Message: ${message}`))
.init()
```
<a id="room"></a>
