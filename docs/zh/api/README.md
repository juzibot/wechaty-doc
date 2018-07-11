
# API文档




<h2>Classes</h2>

<dl>
<dt>[Wechaty](/zh/api/wechaty)</dt>
<dd><p>Main bot class.</p>
<p>A <code>Bot</code> is a wechat client depends on which puppet you use.
It may equals</p>
<ul>
<li>web-wechat, when you use: <a href="https://github.com/chatie/wechaty-puppet-puppeteer">puppet-puppeteer</a>/<a href="https://github.com/chatie/wechaty-puppet-wechat4u">puppet-wechat4u</a></li>
<li>ipad-wechat, when you use: <a href="https://github.com/lijiarui/wechaty-puppet-padchat">puppet-padchat</a></li>
<li>ios-wechat, when you use: puppet-ioscat</li>
</ul>
<p>See more:</p>
<ul>
<li><a href="https://github.com/Chatie/wechaty-getting-started/wiki/FAQ-EN#31-what-is-a-puppet-in-wechaty">What is a Puppet in Wechaty</a></li>
</ul>
<blockquote>
<p>If you want to know how to send message, see [Message](/zh/api/message)
If you want to know how to get contact, see [Contact](/zh/api/contact)</p>
</blockquote>
</dd>
<dt>[Room](/zh/api/room)</dt>
<dd><p>All wechat rooms(groups) will be encapsulated as a Room.</p>
<p><a href="https://github.com/Chatie/wechaty/blob/master/examples/room-bot.ts">Examples/Room-Bot</a></p>
</dd>
<dt>[Contact](/zh/api/contact)</dt>
<dd><p>All wechat contacts(friend) will be encapsulated as a Contact.</p>
<p><a href="https://github.com/Chatie/wechaty/blob/master/examples/contact-bot.ts">Examples/Contact-Bot</a></p>
</dd>
<dt>[Friendship](/zh/api/friendship)</dt>
<dd><p>Send, receive friend request, and friend confirmation events.</p>
<ol>
<li>send request</li>
<li>receive request(in friend event)</li>
<li>confirmation friendship(friend event)</li>
</ol>
<p><a href="https://github.com/Chatie/wechaty/blob/master/examples/friend-bot.ts">Examples/Friend-Bot</a></p>
</dd>
<dt>[Message](/zh/api/message)</dt>
<dd><p>All wechat messages will be encapsulated as a Message.</p>
<p><a href="https://github.com/Chatie/wechaty/blob/master/examples/ding-dong-bot.ts">Examples/Ding-Dong-Bot</a></p>
</dd>
</dl>

<h2>Typedefs</h2>

<dl>
[PuppetName](/zh/api/?id=puppetname)
<dd><p>The term <a href="https://github.com/Chatie/wechaty/wiki/Puppet">Puppet</a> in Wechaty is an Abstract Class for implementing protocol plugins.
The plugins are the component that helps Wechaty to control the Wechat(that&#39;s the reason we call it puppet).
The plugins are named XXXPuppet, for example:</p>
<ul>
<li><a href="https://github.com/Chatie/wechaty-puppet-puppeteer">PuppetPuppeteer</a>:</li>
<li><a href="https://github.com/lijiarui/wechaty-puppet-padchat">PuppetPadchat</a></li>
</ul>
</dd>
[WechatyOptions](/zh/api/?id=wechatyoptions)
<dd><p>The option parameter to create a wechaty instance</p>
</dd>
[WechatyEventName](/zh/api/?id=wechatyeventname)
<dd><p>Wechaty Class Event Type</p>
</dd>
[WechatyEventFunction](/zh/api/?id=wechatyeventfunction)
<dd><p>Wechaty Class Event Function</p>
</dd>
[RoomQueryFilter](/zh/api/?id=roomqueryfilter)
<dd><p>The filter to find the room:  {topic: string | RegExp}</p>
</dd>
[RoomEventName](/zh/api/?id=roomeventname)
<dd><p>Room Class Event Type</p>
</dd>
[RoomEventFunction](/zh/api/?id=roomeventfunction)
<dd><p>Room Class Event Function</p>
</dd>
[RoomMemberQueryFilter](/zh/api/?id=roommemberqueryfilter)
<dd><p>The way to search member by Room.member()</p>
</dd>
[ContactQueryFilter](/zh/api/?id=contactqueryfilter)
<dd><p>The way to search Contact</p>
</dd>
</dl>

<a id="puppetname"></a>

<div id="puppetname"></div><h4>PuppetName</h4>
The term [Puppet](https://github.com/Chatie/wechaty/wiki/Puppet) in Wechaty is an Abstract Class for implementing protocol plugins.
The plugins are the component that helps Wechaty to control the Wechat(that's the reason we call it puppet).
The plugins are named XXXPuppet, for example:
- [PuppetPuppeteer](https://github.com/Chatie/wechaty-puppet-puppeteer):
- [PuppetPadchat](https://github.com/lijiarui/wechaty-puppet-padchat)

**Kind**: global typedef  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| wechat4u | <code>string</code> | The default puppet, using the [wechat4u](https://github.com/nodeWechat/wechat4u) to control the [WeChat Web API](https://wx.qq.com/) via a chrome browser. |
| padchat | <code>string</code> | - Using the WebSocket protocol to connect with a Protocol Server for controlling the iPad Wechat program. |
| puppeteer | <code>string</code> | - Using the [google puppeteer](https://github.com/GoogleChrome/puppeteer) to control the [WeChat Web API](https://wx.qq.com/) via a chrome browser. |
| mock | <code>string</code> | - Using the mock data to mock wechat operation, just for test. |

<a id="wechatyoptions"></a>

<div id="wechatyoptions"></div><h4>WechatyOptions</h4>
The option parameter to create a wechaty instance

**Kind**: global typedef  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| profile | <code>string</code> | Wechaty Name. </br>          When you set this: </br>          `new Wechaty({profile: 'wechatyName'}) ` </br>          it will generate a file called `wechatyName.memory-card.json`. </br>          This file stores the bot's login information. </br>          If the file is valid, the bot can auto login so you don't need to scan the qrcode to login again. </br>          Also, you can set the environment variable for `WECHATY_PROFILE` to set this value when you start. </br>          eg:  `WECHATY_PROFILE="your-cute-bot-name" node bot.js` |
| puppet | [<code>PuppetName</code>](/zh/api/?id=puppetname) &#124; <code>Puppet</code> | Puppet name or instance |
| puppetOptions | <code>Partial.&lt;PuppetOptions&gt;</code> | Puppet TOKEN |
| ioToken | <code>string</code> | Io TOKEN |

<a id="wechatyeventname"></a>

<div id="wechatyeventname"></div><h4>WechatyEventName</h4>
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
| scan | <code>string</code> | A scan event will be emitted when the bot needs to show you a QR Code for scanning. </br>                                    It is recommend to install qrcode-terminal(run `npm install qrcode-terminal`) in order to show qrcode in the terminal. |

<a id="wechatyeventfunction"></a>

<div id="wechatyeventfunction"></div><h4>WechatyEventFunction</h4>
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

<a id="roomqueryfilter"></a>

<div id="roomqueryfilter"></div><h4>RoomQueryFilter</h4>
The filter to find the room:  {topic: string | RegExp}

**Kind**: global typedef  
**Properties**

| Name | Type |
| --- | --- |
| topic | <code>string</code> | 

<a id="roomeventname"></a>

<div id="roomeventname"></div><h4>RoomEventName</h4>
Room Class Event Type

**Kind**: global typedef  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| join | <code>string</code> | Emit when anyone join any room. |
| topic | <code>string</code> | Get topic event, emitted when someone change room topic. |
| leave | <code>string</code> | Emit when anyone leave the room.<br>                               If someone leaves the room by themselves, wechat will not notice other people in the room, so the bot will never get the "leave" event. |

<a id="roomeventfunction"></a>

<div id="roomeventfunction"></div><h4>RoomEventFunction</h4>
Room Class Event Function

**Kind**: global typedef  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| room-join | <code>function</code> | (this: Room, inviteeList: Contact[] , inviter: Contact)  => void |
| room-topic | <code>function</code> | (this: Room, topic: string, oldTopic: string, changer: Contact) => void |
| room-leave | <code>function</code> | (this: Room, leaver: Contact) => void |

<a id="roommemberqueryfilter"></a>

<div id="roommemberqueryfilter"></div><h4>RoomMemberQueryFilter</h4>
The way to search member by Room.member()

**Kind**: global typedef  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| name | <code>string</code> | Find the contact by wechat name in a room, equal to `Contact.name()`. |
| roomAlias | <code>string</code> | Find the contact by alias set by the bot for others in a room. |
| contactAlias | <code>string</code> | Find the contact by alias set by the contact out of a room, equal to `Contact.alias()`. [More Detail](https://github.com/Chatie/wechaty/issues/365) |

<a id="contactqueryfilter"></a>

<div id="contactqueryfilter"></div><h4>ContactQueryFilter</h4>
The way to search Contact

**Kind**: global typedef  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| name | <code>string</code> | The name-string set by user-self, should be called name |
| alias | <code>string</code> | The name-string set by bot for others, should be called alias [More Detail](https://github.com/Chatie/wechaty/issues/365) |
