<a id="contactself"></a>

# ContactSelf类
Bot itself will be encapsulated as a ContactSelf.

> Tips: this class is extends Contact

**Kind**: global class  

* [ContactSelf](/zh/api/contact_self)
    * [.avatar([file])](#ContactSelfavatar) <code>Promise.&lt;(void&#124;FileBox)&gt;</code>
    * [.qrcode()](#ContactSelfqrcode) <code>Promise.&lt;string&gt;</code>

<a id="contactselfavatar"></a>

## contactSelf.avatar([file])

**Return the type of**: <code>Promise.&lt;(void&#124;FileBox)&gt;</code>


GET / SET bot avatar

**Kind**: instance method of [<code>ContactSelf</code>](/zh/api/contact_self)  

| Param | Type |
| --- | --- |
| [file] | <code>FileBox</code> | 

**Example** *( GET the avatar for bot, return {Promise&lt;FileBox&gt;})*  
```js
// Save avatar to local file like `1-name.jpg`

bot.on('login', (user: ContactSelf) => {
  console.log(`user ${user} login`)
  const file = await user.avatar()
  const name = file.name
  await file.toFile(name, true)
  console.log(`Save bot avatar: ${contact.name()} with avatar file: ${name}`)
})
```
**Example** *(SET the avatar for a bot)*  
```js
import { FileBox }  from 'file-box'
bot.on('login', (user: ContactSelf) => {
  console.log(`user ${user} login`)
  const fileBox = FileBox.fromUrl('https://chatie.io/wechaty/images/bot-qr-code.png')
  await user.avatar(fileBox)
  console.log(`Change bot avatar successfully!`)
})
```
<a id="contactselfqrcode"></a>

## contactSelf.qrcode()

**Return the type of**: <code>Promise.&lt;string&gt;</code>


Get bot qrcode

**Kind**: instance method of [<code>ContactSelf</code>](/zh/api/contact_self)  
**Example**  
```js
import { generate } from 'qrcode-terminal'
bot.on('login', (user: ContactSelf) => {
  console.log(`user ${user} login`)
  const qrcode = await user.qrcode()
  console.log(`Following is the bot qrcode!`)
  generate(qrcode, { small: true })
})
```