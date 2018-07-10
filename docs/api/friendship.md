# Friendship
Send, receive friend request, and friend confirmation events.

1. send request
2. receive request(in friend event)
3. confirmation friendship(friend event)

[Examples/Friend-Bot](https://githubcom/Chatie/wechaty/blob/master/examples/friend-botts)

**Kind**: global class  

* [Friendship](/api/friendship?id=top)
    * _instance_
        * [.payload](#Friendshippayload)
        * [.ready()](#Friendshipready)
    * _static_
        * ~~[.send()](#Friendshipsend)~~
        * [.add(contact, hello)](#Friendshipaddcontact-hello)

<a name="Friendship+payload"></a>

## friendship.payload
Instance Properties

**Kind**: instance property of [<code>Friendship</code>](/api/friendship?id=top)  
<a name="Friendship+ready"></a>

## friendship.ready()
no `dirty` support because Friendship has no rawPayload(yet)

**Kind**: instance method of [<code>Friendship</code>](/api/friendship?id=top)  
<a name="Friendship.send"></a>

## ~~Friendship.send()~~
***Deprecated***

**Kind**: static method of [<code>Friendship</code>](/api/friendship?id=top)  
<a name="Friendship.add"></a>

## Friendship.add(contact, hello)
Send a Friend Request to a `contact` with message `hello`.

**Kind**: static method of [<code>Friendship</code>](/api/friendship?id=top)  

| Param |
| --- |
| contact | 
| hello | 

<a name="Message"></a>
