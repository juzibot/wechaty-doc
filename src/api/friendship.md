# Friendship
Send, receive friend request, and friend confirmation events.

1. send request
2. receive request(in friend event)
3. confirmation friendship(friend event)

[Examples/Friend-Bot](https://github.com/Chatie/wechaty/blob/master/examples/friend-bot.ts)

**Kind**: global class  

* [Friendship](/api/friendship)
    * _instance_
        * [.accept()](#Friendshipaccept) <code>Promise.&lt;void&gt;</code>
        * [.hello()](#Friendshiphello) <code>string</code>
        * [.contact()](#Friendshipcontact) [<code>Contact</code>](/api/contact)
        * [.type()](#Friendshiptype) <code>FriendshipType</code>
    * _static_
        * ~~[.send()](#Friendshipsend)~~
        * [.add(contact, hello)](#Friendshipadd) <code>Promise.&lt;void&gt;</code>

<a id="friendshipaccept"></a>

## friendship.accept()

**Return the type of**: <code>Promise.&lt;void&gt;</code>


Accept Friend Request

**Kind**: instance method of [<code>Friendship</code>](/api/friendship)  
**Example**  
```js
const bot = new Wechaty()
bot.on('friendship', async friendship => {
  try {
    console.log(`received friend event.`)
    switch (friendship.type()) {

    # 1. New Friend Request

    case Friendship.Type.Receive:
      await friendship.accept()
      break

    # 2. Friend Ship Confirmed

    case Friendship.Type.Confirm:
      console.log(`friend ship confirmed`)
      break
    }
  } catch (e) {
    console.error(e)
  }
}
.start()
```
<a id="friendshiphello"></a>

## friendship.hello()

**Return the type of**: <code>string</code>


Get verify message from

**Kind**: instance method of [<code>Friendship</code>](/api/friendship)  
**Example** *(If request content is &#x60;ding&#x60;, then accept the friendship)*  
```js
const bot = new Wechaty()
bot.on('friendship', async friendship => {
  try {
    console.log(`received friend event from ${friendship.contact().name()}`)
    if (friendship.type() === Friendship.Type.Receive && friendship.hello() === 'ding') {
      await friendship.accept()
    }
  } catch (e) {
    console.error(e)
  }
}
.start()
```
<a id="friendshipcontact"></a>

## friendship.contact()

**Return the type of**: [<code>Contact</code>](/api/contact)


Get the contact from friendship

**Kind**: instance method of [<code>Friendship</code>](/api/friendship)  
**Example**  
```js
const bot = new Wechaty()
bot.on('friendship', async friendship => {
  const contact = friendship.contact()
  const name = contact.name()
  console.log(`received friend event from ${name}`)
}
.start()
```
<a id="friendshiptype"></a>

## friendship.type()

**Return the type of**: <code>FriendshipType</code>


Return the Friendship Type
> Tips: FriendshipType is enum here. </br>
- FriendshipType.Unknown  </br>
- FriendshipType.Confirm  </br>
- FriendshipType.Receive  </br>
- FriendshipType.Verify   </br>

**Kind**: instance method of [<code>Friendship</code>](/api/friendship)  
**Example** *(If request content is &#x60;ding&#x60;, then accept the friendship)*  
```js
const bot = new Wechaty()
bot.on('friendship', async friendship => {
  try {
    if (friendship.type() === Friendship.Type.Receive && friendship.hello() === 'ding') {
      await friendship.accept()
    }
  } catch (e) {
    console.error(e)
  }
}
.start()
```
<a id="friendshipsend"></a>

## ~~Friendship.send()~~
***Deprecated***

use [Friendship#add](Friendship#add) instead

**Kind**: static method of [<code>Friendship</code>](/api/friendship)  
<a id="friendshipadd"></a>

## Friendship.add(contact, hello)

**Return the type of**: <code>Promise.&lt;void&gt;</code>


Send a Friend Request to a `contact` with message `hello`.

The best practice is to send friend request once per minute.
Remeber not to do this too frequently, or your account may be blocked.

**Kind**: static method of [<code>Friendship</code>](/api/friendship)  

| Param | Type | Description |
| --- | --- | --- |
| contact | [<code>Contact</code>](/api/contact) | Send friend request to contact |
| hello | <code>string</code> | The friend request content |

**Example**  
```js
const memberList = await room.memberList()
for (let i = 0; i < memberList.length; i++) {
  await bot.Friendship.add(member, 'Nice to meet you! I am wechaty bot!')
}
```
<a id="message"></a>
