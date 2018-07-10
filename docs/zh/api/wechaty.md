<a name="Wechaty"></a>

# Wechaty类
Main bot class.

[The World's Shortest ChatBot Code: 6 lines of JavaScript](#wechatyinstance)

[Wechaty Starter Project](https://githubcom/lijiarui/wechaty-getting-started)

**Kind**: global class  

* [Wechaty](/zh/api/wechaty?id=top)
    * _instance_
        * [.Contact](#WechatyContact)
            * [.wechaty](#WechatyContactwechaty)
            * [.puppet](#WechatyContactpuppet)
        * [.version([forceNpm])](#WechatyversionforceNpm) <code>string</code>
        * [.on(event, listener)](#Wechatyonevent-listener) [<code>Wechaty</code>](/zh/api/wechaty?id=top)
        * [.start()](#Wechatystart) <code>Promise.&lt;void&gt;</code>
        * [.stop()](#Wechatystop) <code>Promise.&lt;void&gt;</code>
        * [.logout()](#Wechatylogout) <code>Promise.&lt;void&gt;</code>
        * [.logonoff()](#Wechatylogonoff) <code>boolean</code>
        * ~~[.self()](#Wechatyself)~~
        * [.userSelf()](#WechatyuserSelf) [<code>Contact</code>](/zh/api/contact?id=top)
        * [.say(textOrContactOrFile)](#WechatysaytextOrContactOrFile) <code>Promise.&lt;boolean&gt;</code>
    * _static_
        * [.instance()](#Wechatyinstance)

<a name="Wechaty+Contact"></a>

## wechaty.Contact
Clone Classes for this bot and attach the `puppet` to the Class

  https://stackoverflow.com/questions/36886082/abstract-constructor-type-in-typescript
  https://github.com/Microsoft/TypeScript/issues/5843#issuecomment-290972055
  https://github.com/Microsoft/TypeScript/issues/19197

**Kind**: instance property of [<code>Wechaty</code>](/zh/api/wechaty?id=top)  

* [.Contact](#WechatyContact)
    * [.wechaty](#WechatyContactwechaty)
    * [.puppet](#WechatyContactpuppet)

<a name="Wechaty+Contact.wechaty"></a>

### Contact.wechaty
1. Set Wechaty

**Kind**: static property of [<code>Contact</code>](#WechatyContact)  
<a name="Wechaty+Contact.puppet"></a>

### Contact.puppet
2. Set Puppet

**Kind**: static property of [<code>Contact</code>](#WechatyContact)  
<a name="Wechaty+version"></a>

## wechaty.version([forceNpm])

**Return the type of**: string 


Return version of Wechaty

**Kind**: instance method of [<code>Wechaty</code>](/zh/api/wechaty?id=top)  
**Returns**: <code>string</code> - - the version number  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| [forceNpm] | <code>boolean</code> | <code>false</code> | if set to true, will only return the version in package.json.                                      otherwise will return git commit hash if .git exists. |

**Example**  
```js
console.log(Wechaty.instance().version())       // return '#git[af39df]'
console.log(Wechaty.instance().version(true))   // return '0.7.9'
```
<a name="Wechaty+on"></a>

## wechaty.on(event, listener)

**Return the type of**: [Wechaty](/zh/api/wechaty?id=top) 


**Kind**: instance method of [<code>Wechaty</code>](/zh/api/wechaty?id=top)  
**Returns**: [<code>Wechaty</code>](/zh/api/wechaty?id=top) - - this for chain

More Example Gist: [Examples/Friend-Bot](https://githubcom/Chatie/wechaty/blob/master/examples/friend-botts)  

| Param | Type | Description |
| --- | --- | --- |
| event | [<code>WechatyEventName</code>](/zh/api/?id=wechatyeventname) | Emit WechatyEvent |
| listener | [<code>WechatyEventFunction</code>](/zh/api/?id=wechatyeventfunction) | Depends on the WechatyEvent |

**Example** *(Event:scan )*  
```js
wechaty.on('scan', (url: string, code: number) => {
  console.log(`[${code}] Scan ${url} to login.` )
})
```
**Example** *(Event:login )*  
```js
bot.on('login', (user: ContactSelf) => {
  console.log(`user ${user} login`)
})
```
**Example** *(Event:logout )*  
```js
bot.on('logout', (user: ContactSelf) => {
  console.log(`user ${user} logout`)
})
```
**Example** *(Event:message )*  
```js
wechaty.on('message', (message: Message) => {
  console.log(`message ${message} received`)
})
```
**Example** *(Event:friendship )*  
```js
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
bot.on('room-join', (room: Room, inviteeList: Contact[], inviter: Contact) => {
  const nameList = inviteeList.map(c => c.name()).join(',')
  console.log(`Room ${room.topic()} got new member ${nameList}, invited by ${inviter}`)
})
```
**Example** *(Event:room-leave )*  
```js
bot.on('room-leave', (room: Room, leaverList: Contact[]) => {
  const nameList = leaverList.map(c => c.name()).join(',')
  console.log(`Room ${room.topic()} lost member ${nameList}`)
})
```
**Example** *(Event:room-topic )*  
```js
bot.on('room-topic', (room: Room, topic: string, oldTopic: string, changer: Contact) => {
  console.log(`Room ${room.topic()} topic changed from ${oldTopic} to ${topic} by ${changer.name()}`)
})
```
<a name="Wechaty+start"></a>

## wechaty.start()

**Return the type of**: Promise.&lt;void&gt; 


Start the bot, return Promise.

**Kind**: instance method of [<code>Wechaty</code>](/zh/api/wechaty?id=top)  
**Example**  
```js
await bot.start()
// do other stuff with bot here
```
<a name="Wechaty+stop"></a>

## wechaty.stop()

**Return the type of**: Promise.&lt;void&gt; 


Stop the bot

**Kind**: instance method of [<code>Wechaty</code>](/zh/api/wechaty?id=top)  
**Example**  
```js
await bot.stop()
```
<a name="Wechaty+logout"></a>

## wechaty.logout()

**Return the type of**: Promise.&lt;void&gt; 


Logout the bot

**Kind**: instance method of [<code>Wechaty</code>](/zh/api/wechaty?id=top)  
**Example**  
```js
await bot.logout()
```
<a name="Wechaty+logonoff"></a>

## wechaty.logonoff()

**Return the type of**: boolean 


Get the logon / logoff state

**Kind**: instance method of [<code>Wechaty</code>](/zh/api/wechaty?id=top)  
**Example**  
```js
if (bot.logonoff()) {
  console.log('Bot logined')
} else {
  console.log('Bot not logined')
}
```
<a name="Wechaty+self"></a>

## ~~wechaty.self()~~
***Deprecated***

**Kind**: instance method of [<code>Wechaty</code>](/zh/api/wechaty?id=top)  
<a name="Wechaty+userSelf"></a>

## wechaty.userSelf()

**Return the type of**: [Contact](/zh/api/contact?id=top) 


Get current user

**Kind**: instance method of [<code>Wechaty</code>](/zh/api/wechaty?id=top)  
**Example**  
```js
const contact = bot.userSelf()
console.log(`Bot is ${contact.name()}`)
```
<a name="Wechaty+say"></a>

## wechaty.say(textOrContactOrFile)

**Return the type of**: Promise.&lt;boolean&gt; 


Send message to userSelf

**Kind**: instance method of [<code>Wechaty</code>](/zh/api/wechaty?id=top)  

| Param | Type |
| --- | --- |
| textOrContactOrFile | <code>string</code> | 

<a name="Wechaty.instance"></a>

## Wechaty.instance()
get the singleton instance of Wechaty

**Kind**: static method of [<code>Wechaty</code>](/zh/api/wechaty?id=top)  
**Example** *(The World&#x27;s Shortest ChatBot Code: 6 lines of JavaScript)*  
```js
const { Wechaty } = require('wechaty')

Wechaty.instance() // Singleton
.on('scan', (url, code) => console.log(`Scan QR Code to login: ${code}\n${url}`))
.on('login',       user => console.log(`User ${user} logined`))
.on('message',  message => console.log(`Message: ${message}`))
.init()
```
<a name="Room"></a>
