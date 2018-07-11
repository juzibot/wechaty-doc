# Friendship类
Send, receive friend request, and friend confirmation events.

1. send request
2. receive request(in friend event)
3. confirmation friendship(friend event)

[Examples/Friend-Bot](https://githubcom/Chatie/wechaty/blob/master/examples/friend-botts)

**Kind**: global class  

* [Friendship](/zh/api/friendship?id=top)
    * _instance_
        * [.accept()](#Friendshipaccept) <code>Promise.&lt;void&gt;</code>
        * [.hello()](#Friendshiphello) <code>string</code>
        * [.contact()](#Friendshipcontact) [<code>Contact</code>](/zh/api/contact?id=top)
        * [.type()](#Friendshiptype) <code>FriendshipType</code>
    * _static_
        * ~~[.send()](#Friendshipsend)~~
        * [.add(contact, hello)](#Friendshipaddcontact-hello) <code>Promise.&lt;void&gt;</code>

<a name="Friendship+accept"></a>

## friendship.accept()

**Return the type of**: <code>Promise.&lt;void&gt;</code>


Accept Friend Request

**Kind**: instance method of [<code>Friendship</code>](/zh/api/friendship?id=top)  
**Example**  
```js
const bot = new Wechaty()
bot.on('friendship', async friendship => {
  try {
    console.log(`received friend event from ${friendship.contact().name()}`)
    switch (friendship.type()) {

    # 1. New Friend Request

    case Friendship.Type.Receive:
      await friendship.accept()
      break

    # 2. Friend Ship Confirmed

    case Friendship.Type.Confirm:
      console.log(`friend ship confirmed with ${friendship.contact().name()}`)
      break
    }
  } catch (e) {
    console.error(e)
  }
}
.start()
```
<a name="Friendship+hello"></a>

## friendship.hello()

**Return the type of**: <code>string</code>


Get verify message from

**Kind**: instance method of [<code>Friendship</code>](/zh/api/friendship?id=top)  
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
<a name="Friendship+contact"></a>

## friendship.contact()

**Return the type of**: [<code>Contact</code>](/zh/api/contact?id=top)


Get the contact from friendship

**Kind**: instance method of [<code>Friendship</code>](/zh/api/friendship?id=top)  
**Example**  
```js
const bot = new Wechaty()
bot.on('friendship', async friendship => {
  console.log(`received friend event from ${friendship.contact().name()}`)
}
.start()
```
<a name="Friendship+type"></a>

## friendship.type()

**Return the type of**: <code>FriendshipType</code>


Return the Friendship Type
> Tips: FriendshipType is enum here. </br>
- FriendshipType.Unknown = 0 </br>
- FriendshipType.Confirm = 1 </br>
- FriendshipType.Receive = 2 </br>
- FriendshipType.Verify  = 3 </br>

**Kind**: instance method of [<code>Friendship</code>](/zh/api/friendship?id=top)  
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
<a name="Friendship.send"></a>

## ~~Friendship.send()~~
***Deprecated***

use [Friendship#add](Friendship#add) instead

**Kind**: static method of [<code>Friendship</code>](/zh/api/friendship?id=top)  
<a name="Friendship.add"></a>

## Friendship.add(contact, hello)

**Return the type of**: <code>Promise.&lt;void&gt;</code>


Send a Friend Request to a `contact` with message `hello`.

The best practice is to send friend request once per minute.
Remeber not to do this too frequently, or your account may be blocked.

**Kind**: static method of [<code>Friendship</code>](/zh/api/friendship?id=top)  

| Param | Type | Description |
| --- | --- | --- |
| contact | [<code>Contact</code>](/zh/api/contact?id=top) | Send friend request to contact |
| hello | <code>string</code> | The friend request content |

**Example**  
```js
const memberList = await room.memberList()
for (let i = 0; i < memberList.length; i++) {
  await bot.Friendship.send(member, 'Nice to meet you! I am wechaty bot!')
}
```
<a name="Message"></a>
