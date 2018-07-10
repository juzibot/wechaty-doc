
# API




# Classes

<dl>
<dt>[Wechaty](/api/wechaty?id=top)</dt>
<dd><p>Main bot class.</p>
<p><a href="#wechatyinstance">The World&#39;s Shortest ChatBot Code: 6 lines of JavaScript</a></p>
<p><a href="https://github.com/lijiarui/wechaty-getting-started">Wechaty Starter Project</a></p>
</dd>
<dt>[Room](/api/room?id=top)</dt>
<dd><p>All wechat rooms(groups) will be encapsulated as a Room.</p>
<p><code>Room</code> is <code>Sayable</code>,
<a href="https://github.com/Chatie/wechaty/blob/master/examples/room-bot.ts">Examples/Room-Bot</a></p>
</dd>
<dt>[Contact](/api/contact?id=top)</dt>
<dd><p>All wechat contacts(friend) will be encapsulated as a Contact.</p>
<p><code>Contact</code> is <code>Sayable</code>,
<a href="https://github.com/Chatie/wechaty/blob/master/examples/contact-bot.ts">Examples/Contact-Bot</a></p>
</dd>
<dt>[Friendship](/api/friendship?id=top)</dt>
<dd><p>Send, receive friend request, and friend confirmation events.</p>
<ol>
<li>send request</li>
<li>receive request(in friend event)</li>
<li>confirmation friendship(friend event)</li>
</ol>
<p><a href="https://github.com/Chatie/wechaty/blob/master/examples/friend-bot.ts">Examples/Friend-Bot</a></p>
</dd>
<dt>[Message](/api/message?id=top)</dt>
<dd><p>All wechat messages will be encapsulated as a Message.</p>
<p><code>Message</code> is <code>Sayable</code>,
<a href="https://github.com/Chatie/wechaty/blob/master/examples/ding-dong-bot.ts">Examples/Ding-Dong-Bot</a></p>
</dd>
</dl>

# Typedefs

<dl>
[WechatyEventName](/api/?id=wechatyeventname)
<dd><p>Wechaty Class Event Type</p>
</dd>
[WechatyEventFunction](/api/?id=wechatyeventfunction)
<dd><p>Wechaty Class Event Function</p>
</dd>
[RoomEventName](/api/?id=roomeventname)
<dd><p>Room Class Event Type</p>
</dd>
[RoomEventFunction](/api/?id=roomeventfunction)
<dd><p>Room Class Event Function</p>
</dd>
[MemberQueryFilter](/api/?id=memberqueryfilter)
<dd><p>The way to search member by Room.member()</p>
</dd>
[ContactQueryFilter](/api/?id=contactqueryfilter)
<dd><p>The way to search Contact</p>
</dd>
</dl>

<a name="WechatyEventName"></a>

# WechatyEventName
Wechaty Class Event Type

**Kind**: global typedef  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| error | <code>string</code> | When the bot get error, there will be a Wechaty error event fired. |
| login | <code>string</code> | After the bot login full successful, the event login will be emitted, with a Contact of current logined user. |
| logout | <code>string</code> | Logout will be emitted when bot detected log out, with a Contact of the current login user. |
| heartbeat | <code>string</code> | Get bot's heartbeat. |
| friend | <code>string</code> | When someone sends you a friend request, there will be a Wechaty friend event fired. |
| message | <code>string</code> | Emit when there's a new message. |
| room-join | <code>string</code> | Emit when anyone join any room. |
| room-topic | <code>string</code> | Get topic event, emitted when someone change room topic. |
| room-leave | <code>string</code> | Emit when anyone leave the room.<br>                                    If someone leaves the room by themselves, wechat will not notice other people in the room, so the bot will never get the "leave" event. |
| scan | <code>string</code> | A scan event will be emitted when the bot needs to show you a QR Code for scanning. |

<a name="WechatyEventFunction"></a>

# WechatyEventFunction
Wechaty Class Event Function

**Kind**: global typedef  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| error | <code>function</code> | (this: Wechaty, error: Error) => void callback function |
| login | <code>function</code> | (this: Wechaty, user: ContactSelf)=> void |
| logout | <code>function</code> | (this: Wechaty, user: ContactSelf) => void |
| scan | <code>function</code> | (this: Wechaty, url: string, code: number) => void <br> <ol> <li>URL: {String} the QR code image URL</li> <li>code: {Number} the scan status code. some known status of the code list here is:</li> </ol> <ul> <li>0 initial_</li> <li>200 login confirmed</li> <li>201 scaned, wait for confirm</li> <li>408 waits for scan</li> </ul> |
| heartbeat | <code>function</code> | (this: Wechaty, data: any) => void |
| friendship | <code>function</code> | (this: Wechaty, friendship: Friendship) => void |
| message | <code>function</code> | (this: Wechaty, message: Message) => void |
| room-join | <code>function</code> | (this: Wechaty, room: Room, inviteeList: Contact[],  inviter: Contact) => void |
| room-topic | <code>function</code> | (this: Wechaty, room: Room, newTopic: string, oldTopic: string, changer: Contact) => void |
| room-leave | <code>function</code> | (this: Wechaty, room: Room, leaverList: Contact[]) => void |

<a name="RoomEventName"></a>

# RoomEventName
Room Class Event Type

**Kind**: global typedef  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| join | <code>string</code> | Emit when anyone join any room. |
| topic | <code>string</code> | Get topic event, emitted when someone change room topic. |
| leave | <code>string</code> | Emit when anyone leave the room.<br>                               If someone leaves the room by themselves, wechat will not notice other people in the room, so the bot will never get the "leave" event. |

<a name="RoomEventFunction"></a>

# RoomEventFunction
Room Class Event Function

**Kind**: global typedef  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| room-join | <code>function</code> | (this: Room, inviteeList: Contact[] , inviter: Contact)  => void |
| room-topic | <code>function</code> | (this: Room, topic: string, oldTopic: string, changer: Contact) => void |
| room-leave | <code>function</code> | (this: Room, leaver: Contact) => void |

<a name="MemberQueryFilter"></a>

# MemberQueryFilter
The way to search member by Room.member()

**Kind**: global typedef  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| name | <code>string</code> | Find the contact by wechat name in a room, equal to `Contact.name()`. |
| roomAlias | <code>string</code> | Find the contact by alias set by the bot for others in a room. |
| contactAlias | <code>string</code> | Find the contact by alias set by the contact out of a room, equal to `Contact.alias()`. [More Detail](https://githubcom/Chatie/wechaty/issues/365) |

<a name="ContactQueryFilter"></a>

# ContactQueryFilter
The way to search Contact

**Kind**: global typedef  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| name | <code>string</code> | The name-string set by user-self, should be called name |
| alias | <code>string</code> | The name-string set by bot for others, should be called alias [More Detail](https://githubcom/Chatie/wechaty/issues/365) |
