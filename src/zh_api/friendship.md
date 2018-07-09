<a name="Friendship"></a>

## Friendship
Send, receive friend request, and friend confirmation events.

1. send request
2. receive request(in friend event)
3. confirmation friendship(friend event)

[Examples/Friend-Bot](https://github.com/Chatie/wechaty/blob/master/examples/friend-bot.ts)

**Kind**: global class  

* [Friendship](#Friendship)
    * _instance_
        * [.payload](#Friendship+payload)
        * [.ready()](#Friendship+ready)
    * _static_
        * ~~[.send()](#Friendship.send)~~
        * [.add(contact, hello)](#Friendship.add)

<a name="Friendship+payload"></a>

### friendship.payload
Instance Properties

**Kind**: instance property of [<code>Friendship</code>](#Friendship)  
<a name="Friendship+ready"></a>

### friendship.ready()
no `dirty` support because Friendship has no rawPayload(yet)

**Kind**: instance method of [<code>Friendship</code>](#Friendship)  
<a name="Friendship.send"></a>

### ~~Friendship.send()~~
***Deprecated***

**Kind**: static method of [<code>Friendship</code>](#Friendship)  
<a name="Friendship.add"></a>

### Friendship.add(contact, hello)
Send a Friend Request to a `contact` with message `hello`.

**Kind**: static method of [<code>Friendship</code>](#Friendship)  

| Param |
| --- |
| contact | 
| hello | 

