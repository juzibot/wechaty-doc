# Contact
All wechat contacts(friend) will be encapsulated as a Contact.

`Contact` is `Sayable`,
[Examples/Contact-Bot](https://githubcom/Chatie/wechaty/blob/master/examples/contact-botts)

**Kind**: global class  

* [Contact](/api/contact?id=top)
    * _instance_
        * [.payload](#Contactpayload)
        * [.name()](#Contactname) <code>string</code>
        * [.alias(newAlias)](#ContactaliasnewAlias) <code>string</code> &#124; <code>null</code> &#124; <code>Promise.&lt;boolean&gt;</code>
        * ~~[.stranger()](#Contactstranger) <code>boolean</code> &#124; <code>null</code>~~
        * [.friend()](#Contactfriend) <code>boolean</code> &#124; <code>null</code>
        * ~~[.official()](#Contactofficial) <code>boolean</code> &#124; <code>null</code>~~
        * ~~[.personal()](#Contactpersonal) <code>boolean</code>~~
        * [.type()](#Contacttype)
        * [.star()](#Contactstar) <code>boolean</code> &#124; <code>null</code>
        * [.gender()](#Contactgender) <code>ContactGender.Male(2)</code> &#124; <code>Gender.Female(1)</code> &#124; <code>Gender.Unknown(0)</code>
        * [.province()](#Contactprovince) <code>string</code> &#124; <code>null</code>
        * [.city()](#Contactcity) <code>string</code> &#124; <code>null</code>
        * [.avatar()](#Contactavatar) <code>Promise.&lt;FileBox&gt;</code>
        * ~~[.refresh()](#Contactrefresh) <code>Promise.&lt;this&gt;</code>~~
        * [.sync()](#Contactsync) <code>Promise.&lt;this&gt;</code>
        * [.self()](#Contactself) <code>boolean</code>
    * _static_
        * [.find(query)](#Contactfindquery) <code>Promise.&lt;(Contact&#124;null)&gt;</code>
        * [.findAll([queryArg])](#ContactfindAllqueryArg) <code>Promise.&lt;Array.&lt;Contact&gt;&gt;</code>

<a name="Contact+payload"></a>

## contact.payload
Instance properties

**Kind**: instance property of [<code>Contact</code>](/api/contact?id=top)  
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

**Return the type of**: boolean  &#124; <code>null</code>~~
***Deprecated***

Check if contact is stranger

**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  
**Returns**: <code>boolean</code> &#124; <code>null</code> - - True for not friend of the bot, False for friend of the bot, null for unknown.  
**Example**  
```js
const isStranger = contact.stranger()
```
<a name="Contact+friend"></a>

## contact.friend()

**Return the type of**: boolean  &#124; <code>null</code>


Check if contact is friend

**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  
**Returns**: <code>boolean</code> &#124; <code>null</code> - - True for friend of the bot, False for not friend of the bot, null for unknown.  
**Example**  
```js
const isFriend = contact.friend()
```
<a name="Contact+official"></a>

## ~~contact.official()~~

**Return the type of**: boolean  &#124; <code>null</code>~~
***Deprecated***

Check if it's a offical account

**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  
**Returns**: <code>boolean</code> &#124; <code>null</code> - - True for official account, Flase for contact is not a official account, null for unknown  
**See**

- [webwxApp.js#L324](https://githubcom/Chatie/webwx-app-tracker/blob/7c59d35c6ea0cff38426a4c5c912a086c4c512b2/formatted/webwxAppjs#L3243)
- [Urinx/WeixinBot/README](https://githubcom/Urinx/WeixinBot/blob/master/READMEmd)

**Example**  
```js
const isOfficial = contact.official()
```
<a name="Contact+personal"></a>

## ~~contact.personal()~~

**Return the type of**: boolean ~~
***Deprecated***

Check if it's a personal account

**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  
**Returns**: <code>boolean</code> - - True for personal account, Flase for contact is not a personal account  
**Example**  
```js
const isPersonal = contact.personal()
```
<a name="Contact+type"></a>

## contact.type()
Return the type of the Contact

**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  
**Returns**: ContactType - Contact.Type.PERSONAL for personal account, Contact.Type.OFFICIAL for official account  
**Example**  
```js
const isOfficial = contact.type() === Contact.Type.OFFICIAL
```
<a name="Contact+star"></a>

## contact.star()

**Return the type of**: boolean  &#124; <code>null</code>


Check if the contact is star contact.

**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  
**Returns**: <code>boolean</code> &#124; <code>null</code> - - True for star friend, False for no star friend.  
**Example**  
```js
const isStar = contact.star()
```
<a name="Contact+gender"></a>

## contact.gender()

**Return the type of**: ContactGender.Male(2)  &#124; <code>Gender.Female(1)</code> &#124; <code>Gender.Unknown(0)</code>


Contact gender

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
const avatarFileName = contact.name() + `.jpg`
const fileBox = await contact.avatar()
const avatarWriteStream = createWriteStream(avatarFileName)
fileBox.pipe(avatarWriteStream)
log.info('Bot', 'Contact: %s: %s with avatar file: %s', contact.weixin(), contact.name(), avatarFileName)
```
<a name="Contact+refresh"></a>

## ~~contact.refresh()~~

**Return the type of**: Promise.&lt;this&gt; ~~
***Deprecated***

Force reload(re-ready()) data for Contact

**Kind**: instance method of [<code>Contact</code>](/api/contact?id=top)  
**Example**  
```js
await contact.refresh()
```
<a name="Contact+sync"></a>

## contact.sync()

**Return the type of**: Promise.&lt;this&gt; 


sycc data for Contact

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
const contactFindByName = await Contact.find({ name:"ruirui"} )
const contactFindByAlias = await Contact.find({ alias:"lijiarui"} )
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
const contactList = await Contact.findAll()                    // get the contact list of the bot
const contactList = await Contact.findAll({name: 'ruirui'})    // find allof the contacts whose name is 'ruirui'
const contactList = await Contact.findAll({alias: 'lijiarui'}) // find all of the contacts whose alias is 'lijiarui'
```
<a name="Friendship"></a>
