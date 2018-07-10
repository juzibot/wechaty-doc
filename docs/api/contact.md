# Contact
All wechat contacts(friend) will be encapsulated as a Contact.

[Examples/Contact-Bot](https://githubcom/Chatie/wechaty/blob/master/examples/contact-botts)

**Kind**: global class  

* [Contact](/api/contact?id=top)
    * _instance_
        * [.say(textOrContactOrFile)](#ContactsaytextOrContactOrFile) <code>Promise.&lt;void&gt;</code>
        * [.name()](#Contactname) <code>string</code>
        * [.alias(newAlias)](#ContactaliasnewAlias) <code>string</code> &#124; <code>null</code> &#124; <code>Promise.&lt;boolean&gt;</code>
        * ~~[.stranger()](#Contactstranger)~~
        * [.friend()](#Contactfriend) <code>boolean</code> &#124; <code>null</code>
        * ~~[.official()](#Contactofficial)~~
        * ~~[.personal()](#Contactpersonal)~~
        * [.type()](#Contacttype) <code>ContactType.Unknown</code> &#124; <code>ContactType.Personal</code> &#124; <code>ContactType.Official</code>
        * [.gender()](#Contactgender) <code>ContactGender.Unknown</code> &#124; <code>ContactGender.Male</code> &#124; <code>ContactGender.Female</code>
        * [.province()](#Contactprovince) <code>string</code> &#124; <code>null</code>
        * [.city()](#Contactcity) <code>string</code> &#124; <code>null</code>
        * [.avatar()](#Contactavatar) <code>Promise.&lt;FileBox&gt;</code>
        * ~~[.refresh()](#Contactrefresh)~~
        * [.sync()](#Contactsync) <code>Promise.&lt;this&gt;</code>
        * [.self()](#Contactself) <code>boolean</code>
    * _static_
        * [.load(id)](#Contactloadid) [<code>Contact</code>](/api/contact?id=top)
        * [.find(query)](#Contactfindquery) <code>Promise.&lt;(Contact&#124;null)&gt;</code>
        * [.findAll([queryArg])](#ContactfindAllqueryArg) <code>Promise.&lt;Array.&lt;Contact&gt;&gt;</code>

<a name="Contact+say"></a>

## contact.say(textOrContactOrFile)

**Return the type of**: Promise.&lt;void&gt; 


**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  

| Param | Type | Description |
| --- | --- | --- |
| textOrContactOrFile | <code>string</code> &#124; [<code>Contact</code>](/api/contact?id=top) &#124; <code>FileBox</code> | send text, Contact, or file to contact. </br> You can use [FileBox](https://wwwnpmjscom/package/file-box) to send file |

**Example**  
```js
const bot = new Wechaty()
await bot.start()
const contact = await bot.Contact.find({name: 'lijiarui'})  // change 'lijiarui' to any of your contact name in wechat

# 1. send text to contact

await contact.say('welcome to wechaty!')

# 2. send media file to contact

import { FileBox }  from 'file-box'
const fileBox1 = FileBox.fromUrl('https://chatie.io/wechaty/images/bot-qr-code.png')
const fileBox2 = FileBox.fromLocal('/tmp/text.txt')
await contact.say(fileBox1)
await contact.say(fileBox2)

# 3. send contact card to contact

const contactCard = bot.Contact.load('contactId')
await contact.say(contactCard)
```
<a name="Contact+name"></a>

## contact.name()

**Return the type of**: string 


Get the name from a contact

**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  
**Example**  
```js
const name = contact.name()
```
<a name="Contact+alias"></a>

## contact.alias(newAlias)

**Return the type of**: string  &#124; <code>null</code> &#124; <code>Promise.&lt;boolean&gt;</code>


GET / SET / DELETE the alias for a contact

Tests show it will failed if set alias too frequently(60 times in one minute).

**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  

| Param | Type |
| --- | --- |
| newAlias | <code>none</code> &#124; <code>string</code> &#124; <code>null</code> | 

**Example** *( GET the alias for a contact, return {(string | null)})*  
```js
const alias = contact.alias()
if (alias === null) {
  console.log('You have not yet set any alias for contact ' + contact.name())
} else {
  console.log('You have already set an alias for contact ' + contact.name() + ':' + alias)
}
```
**Example** *(SET the alias for a contact)*  
```js
try {
  await contact.alias('lijiarui')
  console.log(`change ${contact.name()}'s alias successfully!`)
} catch (e) {
  console.log(`failed to change ${contact.name()} alias!`)
}
```
**Example** *(DELETE the alias for a contact)*  
```js
try {
  const oldAlias = await contact.alias(null)
  console.log(`delete ${contact.name()}'s alias successfully!`)
  console.log('old alias is ${oldAlias}`)
} catch (e) {
  console.log(`failed to delete ${contact.name()}'s alias!`)
}
```
<a name="Contact+stranger"></a>

## ~~contact.stranger()~~
***Deprecated***

Should use [friend](#Contactfriend) instead

**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  
<a name="Contact+friend"></a>

## contact.friend()

**Return the type of**: boolean  &#124; <code>null</code>


Check if contact is friend

**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  
**Returns**: <code>boolean</code> &#124; <code>null</code> - <br>True for friend of the bot <br>
False for not friend of the bot, null for unknown.  
**Example**  
```js
const isFriend = contact.friend()
```
<a name="Contact+official"></a>

## ~~contact.official()~~
***Deprecated***

Check if it's a offical account, should use [type](#Contacttype) instead

**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  
<a name="Contact+personal"></a>

## ~~contact.personal()~~
***Deprecated***

Check if it's a personal account, should use [type](#Contacttype) instead

**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  
<a name="Contact+type"></a>

## contact.type()

**Return the type of**: ContactType.Unknown  &#124; <code>ContactType.Personal</code> &#124; <code>ContactType.Official</code>


Return the type of the Contact
> Tips: ContactType is enum here.</br>
- ContactType.Unknown  = 0</br>
- ContactType.Personal = 1</br>
- ContactType.Official = 2</br>

**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  
**Example**  
```js
const bot = new Wechaty()
await bot.start()
const isOfficial = contact.type() === bot.Contact.Type.OFFICIAL
```
<a name="Contact+gender"></a>

## contact.gender()

**Return the type of**: ContactGender.Unknown  &#124; <code>ContactGender.Male</code> &#124; <code>ContactGender.Female</code>


Contact gender
> Tips: ContactGender is enum here. </br>
- ContactGender.Unknown = 0</br>
- ContactGender.Male = 1</br>
- ContactGender.Female = 2</br>

**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  
**Example**  
```js
const gender = contact.gender()
```
<a name="Contact+province"></a>

## contact.province()

**Return the type of**: string  &#124; <code>null</code>


Get the region 'province' from a contact

**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  
**Example**  
```js
const province = contact.province()
```
<a name="Contact+city"></a>

## contact.city()

**Return the type of**: string  &#124; <code>null</code>


Get the region 'city' from a contact

**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  
**Example**  
```js
const city = contact.city()
```
<a name="Contact+avatar"></a>

## contact.avatar()

**Return the type of**: Promise.&lt;FileBox&gt; 


Get avatar picture file stream

**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  
**Example**  
```js
# Save avatar to local file like `1-name.jpg`

const file = await contact.avatar()
const name = file.name
await file.toFile(name, true)
console.log(`Contact: ${contact.name()} with avatar file: ${name}`)
```
<a name="Contact+refresh"></a>

## ~~contact.refresh()~~
***Deprecated***

Force reload(re-ready()) data for Contact, use [sync](#Contactsync) instead

**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  
<a name="Contact+sync"></a>

## contact.sync()

**Return the type of**: Promise.&lt;this&gt; 


Force reload(re-ready()) data for Contact,

**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  
**Example**  
```js
await contact.sync()
```
<a name="Contact+self"></a>

## contact.self()

**Return the type of**: boolean 


Check if contact is self

**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  
**Returns**: <code>boolean</code> - True for contact is self, False for contact is others  
**Example**  
```js
const isSelf = contact.self()
```
<a name="Contact.load"></a>

## Contact.load(id)

**Return the type of**: [Contact](/api/contact?id=top) 


Get Contact by id

**Kind**: static method of [<code>Contact</code>](/api/contact?id=top)  

| Param | Type |
| --- | --- |
| id | <code>string</code> | 

**Example**  
```js
const bot = new Wechaty()
await bot.start()
const contact = bot.Contact.load('contactId')
```
<a name="Contact.find"></a>

## Contact.find(query)

**Return the type of**: Promise.&lt;(Contact&#124;null)&gt; 


Try to find a contact by filter: {name: string | RegExp} / {alias: string | RegExp}

Find contact by name or alias, if the result more than one, return the first one.

**Kind**: static method of [<code>Contact</code>](/api/contact?id=top)  
**Returns**: <code>Promise.&lt;(Contact&#124;null)&gt;</code> - If can find the contact, return Contact, or return null  

| Param | Type |
| --- | --- |
| query | [<code>ContactQueryFilter</code>](/api/?id=contactqueryfilter) | 

**Example**  
```js
const bot = new Wechaty()
await bot.start()
const contactFindByName = await bot.Contact.find({ name:"ruirui"} )
const contactFindByAlias = await bot.Contact.find({ alias:"lijiarui"} )
```
<a name="Contact.findAll"></a>

## Contact.findAll([queryArg])

**Return the type of**: Promise.&lt;Array.&lt;Contact&gt;&gt; 


Find contact by `name` or `alias`

If use Contact.findAll() get the contact list of the bot.

### definition
- `name`   the name-string set by user-self, should be called name
- `alias`  the name-string set by bot for others, should be called alias

**Kind**: static method of [<code>Contact</code>](/api/contact?id=top)  

| Param | Type |
| --- | --- |
| [queryArg] | [<code>ContactQueryFilter</code>](/api/?id=contactqueryfilter) | 

**Example**  
```js
const bot = new Wechaty()
await bot.start()
const contactList = await bot.Contact.findAll()                    // get the contact list of the bot
const contactList = await bot.Contact.findAll({name: 'ruirui'})    // find allof the contacts whose name is 'ruirui'
const contactList = await bot.Contact.findAll({alias: 'lijiarui'}) // find all of the contacts whose alias is 'lijiarui'
```
<a name="Friendship"></a>
