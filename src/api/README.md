
# API

[Wechaty](/api/wechaty)

Main bot class.

[Contact](/api/contact)

All wechat contacts(friend) will be encapsulated as a Contact.

[Friendship](/api/friendship)

Send, receive friend request, and friend confirmation events.

[Room](/api/room)

All wechat rooms(groups) will be encapsulated as a Room.

[Message](/api/message)

All wechat messages will be encapsulated as a Message.






## Classes



<dl>

<dt><a href="#Wechaty">Wechaty</a></dt>

<dd><p>Main bot class.</p>

<p><a href="#wechatyinstance">The World&#39;s Shortest ChatBot Code: 6 lines of JavaScript</a></p>

<p><a href="https://github.com/lijiarui/wechaty-getting-started">Wechaty Starter Project</a></p>

</dd>

<dt><a href="#Room">Room</a></dt>

<dd><p>All wechat rooms(groups) will be encapsulated as a Room.</p>

<p><code>Room</code> is <code>Sayable</code>,

<a href="https://github.com/Chatie/wechaty/blob/master/examples/room-bot.ts">Examples/Room-Bot</a></p>

</dd>

<dt><a href="#Contact">Contact</a></dt>

<dd><p>All wechat contacts(friend) will be encapsulated as a Contact.</p>

<p><code>Contact</code> is <code>Sayable</code>,

<a href="https://github.com/Chatie/wechaty/blob/master/examples/contact-bot.ts">Examples/Contact-Bot</a></p>

</dd>

<dt><a href="#Friendship">Friendship</a></dt>

<dd><p>Send, receive friend request, and friend confirmation events.</p>

<ol>

<li>send request</li>

<li>receive request(in friend event)</li>

<li>confirmation friendship(friend event)</li>

</ol>

<p><a href="https://github.com/Chatie/wechaty/blob/master/examples/friend-bot.ts">Examples/Friend-Bot</a></p>

</dd>

<dt><a href="#Message">Message</a></dt>

<dd><p>All wechat messages will be encapsulated as a Message.</p>

<p><code>Message</code> is <code>Sayable</code>,

<a href="https://github.com/Chatie/wechaty/blob/master/examples/ding-dong-bot.ts">Examples/Ding-Dong-Bot</a></p>

</dd>

</dl>



## Typedefs



<dl>

<dt><a href="#WechatyEventName">WechatyEventName</a></dt>

<dd><p>Wechaty Class Event Type</p>

</dd>

<dt><a href="#WechatyEventFunction">WechatyEventFunction</a></dt>

<dd><p>Wechaty Class Event Function</p>

</dd>

<dt><a href="#RoomEventName">RoomEventName</a></dt>

<dd><p>Room Class Event Type</p>

</dd>

<dt><a href="#RoomEventFunction">RoomEventFunction</a></dt>

<dd><p>Room Class Event Function</p>

</dd>

<dt><a href="#MemberQueryFilter">MemberQueryFilter</a></dt>

<dd><p>The way to search member by Room.member()</p>

</dd>

<dt><a href="#ContactQueryFilter">ContactQueryFilter</a></dt>

<dd><p>The way to search Contact</p>

</dd>

</dl>



<a name="Wechaty"></a>


