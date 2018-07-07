# 入门

## Wechaty 是什么
[![Powered by Wechaty](https://img.shields.io/badge/Powered%20By-Wechaty-blue.svg)](https://github.com/chatie/wechaty)
[![English Version](https://img.shields.io/badge/-English%20Version-blue.svg)](README.md)

[Wechaty](https://github.com/Chatie/wechaty/) 是一个开源的的 **个人号** 微信机器人接口，是一个使用Typescript 构建的Node.js 应用。支持多种微信接入方案，包括网页，ipad，ios，windows， android 等。同时支持Linux, OSX, Win32 和 Docker 等多个平台。

只需要6行代码，你就可以 **通过个人号** 搭建一个 **微信机器人功能** ，用来自动管理微信消息。

更多功能包括：
- 消息处理：关键词回复
- 群管理：自动入群，拉人，踢人
- 自动处理好友请求
- 智能对话：通过简单配置，即可加入智能对话系统，完成指定任务
- ... 请自行开脑洞

详情请看[Wechaty](https://github.com/chatie/wechaty)项目。这个项目是 wechaty 初学者的入门教程。

## 快速开始

### 1. 下载代码
```sh
git clone https://github.com/lijiarui/wechaty-getting-started.git
cd wechaty-getting-started
```

### 2. 安装依赖
> 注意: Wechaty 需要 Node.js 的版本 >= 9, 建议运行 `node -v` 进行确认

```sh
npm install
```

如果安装速度很慢，建议[设置中国代理npm源](https://github.com/Chatie/wechaty/wiki/NPM#use-npm-in-china)

### 3. 运行机器人
```sh
node examples/starter-bot.js
```

运行成功后可以看到如下截图:

![demo-png](https://chatie.io/wechaty-getting-started/demo.png)

截图展示二维码，扫码登陆后，这个微信号就会变成机器人，并在命令行显示机器人登陆信息： `Contact<李佳芮>login`       
之后，你就可以在命令行看到这个微信收到的所有消息了。

## Demo 展示
![Wechaty Developers' Home](https://chatie.io/wechaty-getting-started/bot-qr-code.png)

回复 'wechaty' 加入 Wechaty 开发者群。
> 群内均为wechaty 的开发者，如果仅是为了测试功能，请测试后自动退群。为了避免广告及不看文档用户，群主及机器人会T人，不喜勿加。群内发言之前请先阅读文档，谢谢！

## 注意事项
从2017年6月下旬开始，使用基于web版微信接入方案存在大概率的被限制登陆的可能性。 主要表现为：无法登陆Web 微信，但不影响手机等其他平台。
验证是否被限制登陆： https://wx.qq.com 上扫码查看是否能登陆。
更多内容详见： 
- [Can not login with error message: 当前登录环境异常。为了你的帐号安全，暂时不能登录web微信。](https://github.com/Chatie/wechaty/issues/603)
- [[RUMOR] wechat will close webapi for wechat](https://github.com/Chatie/wechaty/issues/990)
- [New account login issue](https://github.com/Chatie/wechaty/issues/872)
- [wechaty-puppet-puppeteer](https://github.com/chatie/wechaty-puppet-puppeteer)

**解决方案：我们提供了非web 版本的解决方案，正在进行alpha 测试，[点击申请测试token](https://github.com/Chatie/wechaty/issues/1296)，技术细节及实现请查看[wechaty-puppet-padchat](https://github.com/lijiarui/wechaty-puppet-padchat)**

# 进阶学习

## 1. Wechaty 视频教学课程

<div align="center">
<a target="_blank" href="https://blog.chatie.io/getting-started-wechaty/"><img src="https://cloud.githubusercontent.com/assets/1361891/21722581/3ec957d0-d468-11e6-8888-a91c236e0ba2.jpg" border=0 width="60%"></a>
</div>

请观看这个1分钟的教学视频，帮助你快速了解如何使用wechaty

## 2. DOCKER 运行
[![Docker Pulls](https://img.shields.io/docker/pulls/zixia/wechaty.svg?maxAge=2592000)](https://hub.docker.com/r/zixia/wechaty/) 
[![Docker Stars](https://img.shields.io/docker/stars/zixia/wechaty.svg?maxAge=2592000)](https://hub.docker.com/r/zixia/wechaty/) 
[![Docker Layers](https://images.microbadger.com/badges/image/zixia/wechaty.svg)](https://microbadger.com/#/images/zixia/wechaty)

The **best practice** to use Wechaty is running with docker, because it's not only the most easy way to get started, but also protects you from the troubles of dependency problems. 

> Wechaty Docker supports both JavaScript and TypeScript. To use TypeScript just write in TypeScript and save with extension name .ts, no need to compile because we use ts-node to run it.

### 2.1 JavaScript:
```shell
# for JavaScript
docker run -ti --rm --volume="$(pwd)":/bot zixia/wechaty mybot.js
```

### 2.2 TypeScript
```shell
# for TypeScript
docker run -ti --rm --volume="$(pwd)":/bot zixia/wechaty mybot.ts
```

了解Wechaty Docker 更多信息: [Wiki: Docker](https://github.com/chatie/wechaty/wiki/Docker)

## 3. NPM 运行
[![NPM Version](https://badge.fury.io/js/wechaty.svg)](https://badge.fury.io/js/wechaty)
[![Downloads][downloads-image]][downloads-url]
[![Greenkeeper badge](https://badges.greenkeeper.io/Chatie/wechaty.svg)](https://greenkeeper.io/)

```shell
npm init
npm install wechaty

# create your first mybot.js file, you can copy/paste from the above "The World's Shortest ChatBot Code: 6 lines of JavaScript"
# then:
node mybot.js
```

了解更多 NPM 信息见: [Wiki:NPM](https://github.com/chatie/wechaty/wiki/NPM)

## 4. 示例代码
下面的表格解释了examples目录下各个代码的功能

| 文件名称        | 描述 |
| ---                 | ---         |
| contact-bot.js      | 展示微信号下所有联系的人微信ID和昵称。|
| ding-dong-bot.js    | 自动回复消息 |
| friend-bot.js       | 自动通过好友请求 |
| media-file-bot.js   | 将消息中的文件、图片、视频等非文本信息存到本地。 |
| room-bot.js         | 微信群管理。 |
| tuling123-bot.ts    | 接入tuling123 机器人，可以回答任何消息。 |

[点击这里查看 更多Wechaty 官方 示例代码](https://github.com/Chatie/wechaty/tree/master/examples)

# 接口文档
见[下面](https://qhduan.github.io/wechaty-doc/#/zh?id=api)

# 常见问题 FAQ

## 常见问题 FAQ

### 1. 我的微信号无法登陆
从2017年6月下旬开始，使用基于web版微信接入方案存在大概率的被限制登陆的可能性。 主要表现为：无法登陆Web 微信，但不影响手机等其他平台。
验证是否被限制登陆： https://wx.qq.com 上扫码查看是否能登陆。
更多内容详见： 
- [Can not login with error message: 当前登录环境异常。为了你的帐号安全，暂时不能登录web微信。](https://github.com/Chatie/wechaty/issues/603)
- [[RUMOR] wechat will close webapi for wechat](https://github.com/Chatie/wechaty/issues/990)
- [New account login issue](https://github.com/Chatie/wechaty/issues/872)
- [wechaty-puppet-puppeteer](https://github.com/chatie/wechaty-puppet-puppeteer)

**解决方案：我们提供了非web 版本的解决方案，正在进行alpha 测试，[点击申请测试token](https://github.com/Chatie/wechaty/issues/1296)，技术细节及实现请查看[wechaty-puppet-padchat](https://github.com/lijiarui/wechaty-puppet-padchat)**

### 2. 每次登陆都要扫码么？
默认情况下，系统可以自动登陆，信息保存在 *.memory-card.json 中

### 3. 支持 红包、转账、朋友圈… 吗？
以下功能目前 均不支持

支付相关 - 红包、转账、收款 等都不支持
在群聊中@他人 - 是的，Web 微信中被人@后也不会提醒
发送名片
发送分享链接
发送语音消息 - 后续会支持
朋友圈相关 - 后续会支持

### 4. wechaty 是否可以发行卡片消息，然后点击跳转到网页
现阶段还不可以，后续会在非web 解决方案中陆续支持

相关Issue：
- [Add support for send url rich media message](https://github.com/Chatie/wechaty/issues/718)
- [can wechaty send share card msg](https://github.com/Chatie/wechaty/issues/824)

### 5. wechaty 是支持个人号还是公众号？
现阶段，wechaty 只支持个人号

相关Issue:
- [Using wechaty to start a wechatOA account](https://github.com/Chatie/wechaty/issues/1016)

### 6. wechaty & 队列的最佳实践
为了防止微信封号，wechaty 内置了队列，详细可见：[rx-queue](https://github.com/zixia/rx-queue)

### 7. wechaty 和 wechat4u 项目，有什么区别？
wechaty 可以实现多个微信接入的方案，对外提供统一的接口，包括web，ipad，ios等等，其中[wechat4u](https://github.com/nodeWechat/wechat4u) 是[SPACELAN](https://github.com/spacelan)写的基于web 实现微信接入的，wechaty 可以实现用wechaty 的接口，调用wechat4u的api。

> 这么理解：wechat4u有的，wechaty都有，反之不一定有，对么？

这个也不是完全确定的，因为wechaty 只是基于wechaty 暴露出来的接口为wechat4u 进行了封装


更多详见 [FAQ-ZH](https://github.com/Chatie/wechaty-getting-started/wiki/FAQ-ZH)

# 其他

## CHANGELOG

### [v0.16.0](https://github.com/chatie/wechaty/tree/v0.16.0) (2018-06-21)
[Full Changelog](https://github.com/chatie/wechaty/compare/v0.14.0...v0.16.0)

**Implemented enhancements:**

- Unable to start multiple instances with padchat puppet [\#1367](https://github.com/Chatie/wechaty/issues/1367)
- Prevent the Floating Promise in the Async/Await Code [\#1346](https://github.com/Chatie/wechaty/issues/1346)
- BREAKING CHANGES v0.16: FriendRequest class will be replaced with Friendship [\#1312](https://github.com/Chatie/wechaty/issues/1312)
- feat: PuppetPadchat can set avatar for userself support. [\#1298](https://github.com/Chatie/wechaty/issues/1298)
- BREAKING CHANGE: v0.16 `Room.topic\(\)` change from Sycn to Async [\#1295](https://github.com/Chatie/wechaty/issues/1295)
- BREAKING CHANGE: v0.16 `Room.alias\(contact\)` change from Sycn to Async [\#1293](https://github.com/Chatie/wechaty/issues/1293)
- BREAKING CHANGE: v0.16 `Room.memberList\(\)` change from Sycn to Async [\#1290](https://github.com/Chatie/wechaty/issues/1290)
- BREAKING CHANGE: v0.16 `Room.has\(contact\)` change from Sycn to Async [\#1289](https://github.com/Chatie/wechaty/issues/1289)
- BREAKING CHANGE: v0.16 `scan` event args will be different! [\#1262](https://github.com/Chatie/wechaty/issues/1262)
- BREAKING CHANGE: v0.16 `Message.mention\(\)` change from `sync` to `async` [\#1259](https://github.com/Chatie/wechaty/issues/1259)
- BREAKING CHANGES: v0.16 `Room.member\(\)` from `sync` to `async` [\#1258](https://github.com/Chatie/wechaty/issues/1258)
- Promote `Profile` class to a solo NPM module: `MemoryCard` [\#1257](https://github.com/Chatie/wechaty/issues/1257)
- rewrite roomFindAll\(\)  [\#1255](https://github.com/Chatie/wechaty/issues/1255)
- function friendRequestAccept [\#1254](https://github.com/Chatie/wechaty/issues/1254)
-  read messageRawPayload by id [\#1253](https://github.com/Chatie/wechaty/issues/1253)
- function friendRequestSend [\#1252](https://github.com/Chatie/wechaty/issues/1252)
- rewrite contactFindAll\(\) [\#1251](https://github.com/Chatie/wechaty/issues/1251)
- Upgrade Docker Base Image from Ubuntu 17.10 to 18.04 [\#1239](https://github.com/Chatie/wechaty/issues/1239)
- NPM Switch: `promise-retry` to replace `retry-promise` [\#1235](https://github.com/Chatie/wechaty/issues/1235)
- Add unit test to puppet accessory [\#1219](https://github.com/Chatie/wechaty/issues/1219)
- Use browser implementation of Node.js' stream library [\#1201](https://github.com/Chatie/wechaty/issues/1201)
- feat: Add `for await \(const contact of room\) {}` support by ES6 iterators override [\#1198](https://github.com/Chatie/wechaty/issues/1198)
- BREAKING CHANGE: v0.16 on\('friend`\) arguments changed! [\#1196](https://github.com/Chatie/wechaty/issues/1196)
- TypeScript Strict Mode: set `noImplicitAny` to `true` [\#1180](https://github.com/Chatie/wechaty/issues/1180)
- Generic for Return Child Class Type in Abstract Class Implementation [\#1178](https://github.com/Chatie/wechaty/issues/1178)
- BREAKING CHANGE: v0.16 Message.ext\(\) return '.ext' instead of 'ext' before [\#1168](https://github.com/Chatie/wechaty/issues/1168)
- Encapsulated `Contact`, `Messag`, `FriendRequest`, and `Room` into `PuppetWeb` [\#1166](https://github.com/Chatie/wechaty/issues/1166)
- BREAKING CHANGE: v0.16 will remove `MediaMessage` class [\#1164](https://github.com/Chatie/wechaty/issues/1164)
- BREAKING CHANGE: v0.16 will replace `Message.content\(\)` with `Message.text\(\)` [\#1163](https://github.com/Chatie/wechaty/issues/1163)
- Continious Deploy to NPM with @next tag when the MINOR version number is odd\(in developing branch\) [\#1158](https://github.com/Chatie/wechaty/issues/1158)
- BREAKING CHANGE: first arg of `room-leave` event licener changed from `Contact` to `Contact\[\]` [\#723](https://github.com/Chatie/wechaty/issues/723)
- Should throw Exception when there have API Error. [\#683](https://github.com/Chatie/wechaty/issues/683)
- delay time for all function\(method\) that calls Tencent API [\#596](https://github.com/Chatie/wechaty/issues/596)
- \[todo\] allow Wechaty to be multi-instance [\#518](https://github.com/Chatie/wechaty/issues/518)
- \[New Puppet\] Plan to support `WECHATY\_HEAD=WECHAT4U` [\#69](https://github.com/Chatie/wechaty/issues/69)
- Decouple: Make `Contact`, `Room`, `Message`, and `FriendRequest` class Abstract. [\#1160](https://github.com/Chatie/wechaty/pull/1160) ([zixia](https://github.com/zixia))

**Fixed bugs:**

- When bot quit the room, bot still thought it in the room. [\#1345](https://github.com/Chatie/wechaty/issues/1345)
- When the bot remove one out of the group, room data didn't refresh [\#1343](https://github.com/Chatie/wechaty/issues/1343)
- Room Event cannot work as expect after create a new room [\#1342](https://github.com/Chatie/wechaty/issues/1342)
- cannot refresh room data when execute the code again [\#1339](https://github.com/Chatie/wechaty/issues/1339)
- can't run demo [\#1337](https://github.com/Chatie/wechaty/issues/1337)
- room-leave error [\#1334](https://github.com/Chatie/wechaty/issues/1334)
- room-join event, when run `room.say`, it actually run `contact.say` [\#1330](https://github.com/Chatie/wechaty/issues/1330)
- room-leave event cannot get leaver member [\#1329](https://github.com/Chatie/wechaty/issues/1329)
- should refresh room data when there is a room event [\#1328](https://github.com/Chatie/wechaty/issues/1328)
- \[room topic event\]  throw error: no changerId found [\#1326](https://github.com/Chatie/wechaty/issues/1326)
- room-join cannot get member [\#1324](https://github.com/Chatie/wechaty/issues/1324)
- `contact.avatar\(\)` cannot work as expect [\#1321](https://github.com/Chatie/wechaty/issues/1321)
- run contact-bot throw error [\#1319](https://github.com/Chatie/wechaty/issues/1319)
- Padchat: WXAutoLogin result is faild, but I still receive message [\#1316](https://github.com/Chatie/wechaty/issues/1316)
- Fix the `+` in data for PuppetPadchat [\#1302](https://github.com/Chatie/wechaty/issues/1302)
- get fromId not right for room invitation sys message [\#1297](https://github.com/Chatie/wechaty/issues/1297)
- Error: The command "echo $TRAVIS\_OS\_NAME" exited with 1. [\#1236](https://github.com/Chatie/wechaty/issues/1236)
- TravisCI Conditional Deployment [\#1211](https://github.com/Chatie/wechaty/issues/1211)
- Update the peerDependencies of `rx-queue`: rxjs@6 from rxjs@5 [\#1205](https://github.com/Chatie/wechaty/issues/1205)
- Cannot send image message on v0.15.21 [\#1175](https://github.com/Chatie/wechaty/issues/1175)
- cannot refresh room topic or contact name [\#1157](https://github.com/Chatie/wechaty/issues/1157)
- How to avoid the memory leak [\#981](https://github.com/Chatie/wechaty/issues/981)
- Puppeteer Navigation Timeout Exceeded: 30000ms exceeded [\#870](https://github.com/Chatie/wechaty/issues/870)
- SyntaxError: Unexpected end of JSON input [\#846](https://github.com/Chatie/wechaty/issues/846)
- function `Message.mention\(\)` should recognize both magic code and blank [\#813](https://github.com/Chatie/wechaty/issues/813)
- BREAKING CHANGE: first arg of `room-leave` event licener changed from `Contact` to `Contact\\[\\]` [\#723](https://github.com/Chatie/wechaty/issues/723)
- Should throw Exception when there have API Error. [\#683](https://github.com/Chatie/wechaty/issues/683)

**Closed issues:**

- BREAKING CHANGE v0.16 Wechaty.self\(\) eprecated, use Wechaty.userSelf\(\)  instead [\#1369](https://github.com/Chatie/wechaty/issues/1369)
- BREAKING CHANGE v0.16 Contact.personal\(\) and Contact.official\(\)  deprecated, use Contact.type\(\) instead [\#1366](https://github.com/Chatie/wechaty/issues/1366)
-  no encodedText error in `padchat-decode.ts` [\#1365](https://github.com/Chatie/wechaty/issues/1365)
- BREAKING CHANGE v0.16  Contact, FriendRequest, Message, and Room classes will not be able to instantiate directly [\#1364](https://github.com/Chatie/wechaty/issues/1364)
- BREAKING CHANGE v0.16  room.add return Promise\<void\> instead of return Promise\<boolean\> [\#1362](https://github.com/Chatie/wechaty/issues/1362)
- `media-file-bot` cannot save xlsx file [\#1349](https://github.com/Chatie/wechaty/issues/1349)
- room-leave-error [\#1335](https://github.com/Chatie/wechaty/issues/1335)
- room-leave event throw error, cannot get leaver contact [\#1323](https://github.com/Chatie/wechaty/issues/1323)
- `friendship`  cannot accept friend request automatically [\#1322](https://github.com/Chatie/wechaty/issues/1322)
- PadchatRpc WXCheckQRCode result: {"message":"WS请求错误","status":-19} [\#1315](https://github.com/Chatie/wechaty/issues/1315)
- m.forward 是 undefined ？ [\#1272](https://github.com/Chatie/wechaty/issues/1272)
- Navigation Timeout Exceeded: 30000ms exceeded [\#1248](https://github.com/Chatie/wechaty/issues/1248)
- profile.set can only set 'cookies' instead of other keys [\#1240](https://github.com/Chatie/wechaty/issues/1240)
- Create a websocket ipad demo [\#1228](https://github.com/Chatie/wechaty/issues/1228)
- Proper wechaty and its dependency installation [\#1225](https://github.com/Chatie/wechaty/issues/1225)
- can't run the typescript examples [\#1221](https://github.com/Chatie/wechaty/issues/1221)
- Scan QR Code not shown on terminal, wechaty@0.14.4 [\#1220](https://github.com/Chatie/wechaty/issues/1220)
- 请问怎么添加微信群中的人当做自己的好友呢 有例子可以参考吗 [\#1207](https://github.com/Chatie/wechaty/issues/1207)
- room-bot.ts error [\#1199](https://github.com/Chatie/wechaty/issues/1199)
- TypeScript 2.9 with trailing comma after rest parameters. [\#1188](https://github.com/Chatie/wechaty/issues/1188)
- code example 'media-file-bot' not working [\#1183](https://github.com/Chatie/wechaty/issues/1183)
- QrCode `scan` event not refresh on v0.15.21 \#1175 [\#1176](https://github.com/Chatie/wechaty/issues/1176)
- Version 10 of node.js has been released [\#1170](https://github.com/Chatie/wechaty/issues/1170)
- 自动加好友，加好友成功后，向对方发信息报错 [\#1165](https://github.com/Chatie/wechaty/issues/1165)
- Use `injection-js` for Wechaty v1.0 provide the resolvers of the Wechaty Puppet [\#1146](https://github.com/Chatie/wechaty/issues/1146)
- findAll ,WARN Room parse\(\) on a empty rawObj [\#1141](https://github.com/Chatie/wechaty/issues/1141)
- Rename all `find\(\)` method to `search\(\)` [\#1132](https://github.com/Chatie/wechaty/issues/1132)
- ERR PuppetWebBridge init\(\) exception: Error: connect ECONNREFUSED 127.0.0.1:35493 [\#1113](https://github.com/Chatie/wechaty/issues/1113)
- Feature request: sending file with a stream \(creating media message with a stream\) [\#1092](https://github.com/Chatie/wechaty/issues/1092)
- node\_modules/\_wechaty@0.13.36@wechaty/dist/src/config.d.ts\(1,24\): error TS2307: Cannot find module 'raven'. [\#1035](https://github.com/Chatie/wechaty/issues/1035)

**Merged pull requests:**

- add await for promise [\#1375](https://github.com/Chatie/wechaty/pull/1375) ([lijiarui](https://github.com/lijiarui))
- Fix room.add\(\) failed when room member more than 40 [\#1374](https://github.com/Chatie/wechaty/pull/1374) ([lijiarui](https://github.com/lijiarui))
- call randam server for stable [\#1373](https://github.com/Chatie/wechaty/pull/1373) ([lijiarui](https://github.com/lijiarui))
- check room valid by id [\#1352](https://github.com/Chatie/wechaty/pull/1352) ([lijiarui](https://github.com/lijiarui))
- fixed cannot find room by topic after bot create room [\#1351](https://github.com/Chatie/wechaty/pull/1351) ([lijiarui](https://github.com/lijiarui))
- fix warnings when run `npm run lint` [\#1348](https://github.com/Chatie/wechaty/pull/1348) ([lijiarui](https://github.com/lijiarui))
- test `room.quit\(\)` in room-bot [\#1347](https://github.com/Chatie/wechaty/pull/1347) ([lijiarui](https://github.com/lijiarui))
- add log as \#1342 [\#1344](https://github.com/Chatie/wechaty/pull/1344) ([lijiarui](https://github.com/lijiarui))
- Bug compatible WXCreateChatRoom [\#1341](https://github.com/Chatie/wechaty/pull/1341) ([lijiarui](https://github.com/lijiarui))
- add room-bot test code [\#1338](https://github.com/Chatie/wechaty/pull/1338) ([lijiarui](https://github.com/lijiarui))
- save room join sys message to cache [\#1333](https://github.com/Chatie/wechaty/pull/1333) ([lijiarui](https://github.com/lijiarui))
- add function in self-testing-bot.ts [\#1331](https://github.com/Chatie/wechaty/pull/1331) ([lijiarui](https://github.com/lijiarui))
- Room bot example [\#1325](https://github.com/Chatie/wechaty/pull/1325) ([lijiarui](https://github.com/lijiarui))
- add room join event unit test [\#1318](https://github.com/Chatie/wechaty/pull/1318) ([lijiarui](https://github.com/lijiarui))
- add function friendRequestSend  [\#1313](https://github.com/Chatie/wechaty/pull/1313) ([lijiarui](https://github.com/lijiarui))
- add room event [\#1308](https://github.com/Chatie/wechaty/pull/1308) ([lijiarui](https://github.com/lijiarui))
- add raw dirty rpc function [\#1283](https://github.com/Chatie/wechaty/pull/1283) ([lijiarui](https://github.com/lijiarui))
- Puppet 0602 [\#1282](https://github.com/Chatie/wechaty/pull/1282) ([lijiarui](https://github.com/lijiarui))
- chore\(package\): update @types/node to version 10.3.0 [\#1274](https://github.com/Chatie/wechaty/pull/1274) ([zixia](https://github.com/zixia))
- fix\(package\): update memory-card to version 0.2.0 [\#1273](https://github.com/Chatie/wechaty/pull/1273) ([zixia](https://github.com/zixia))
- Puppet 0602 [\#1271](https://github.com/Chatie/wechaty/pull/1271) ([lijiarui](https://github.com/lijiarui))
- chore\(package\): update rx-queue to version 0.4.19 [\#1260](https://github.com/Chatie/wechaty/pull/1260) ([zixia](https://github.com/zixia))
- New puppet padchat [\#1256](https://github.com/Chatie/wechaty/pull/1256) ([lijiarui](https://github.com/lijiarui))
- add more functions [\#1246](https://github.com/Chatie/wechaty/pull/1246) ([lijiarui](https://github.com/lijiarui))
- Puppet padchat [\#1245](https://github.com/Chatie/wechaty/pull/1245) ([lijiarui](https://github.com/lijiarui))
- chore\(package\): update ts-node to version 6.0.5 [\#1232](https://github.com/Chatie/wechaty/pull/1232) ([zixia](https://github.com/zixia))
- Update to node 10 in .travis.yml [\#1231](https://github.com/Chatie/wechaty/pull/1231) ([zixia](https://github.com/zixia))
- fix\(package\): update rx-queue to version 0.4.4 [\#1190](https://github.com/Chatie/wechaty/pull/1190) ([zixia](https://github.com/zixia))
- Multi-Instance Support [\#1159](https://github.com/Chatie/wechaty/pull/1159) ([zixia](https://github.com/zixia))

### [v0.14.0](https://github.com/chatie/wechaty/tree/v0.14.0) (2018-04-15)
[Full Changelog](https://github.com/chatie/wechaty/compare/v0.12.0...v0.14.0)

**Implemented enhancements:**

- Rename {test,fixture,example,...} to {tests,fixtures,examples,...} etc. [\#1127](https://github.com/Chatie/wechaty/issues/1127)
- Trigger Deploy on Branch /v\d+\.\d+\$/ [\#956](https://github.com/Chatie/wechaty/issues/956)
- Wechaty Version Numbering [\#905](https://github.com/Chatie/wechaty/issues/905)
- \[New Puppet\] Puppeteer [\#790](https://github.com/Chatie/wechaty/issues/790)
- \[enhancement\] Add timezone in to Dockerfile [\#594](https://github.com/Chatie/wechaty/issues/594)
- \[docker\] to prevent docker users install a local dependence of wechaty [\#281](https://github.com/Chatie/wechaty/issues/281)

**Fixed bugs:**

- When run CI inside the container: openBinaryFile: does not exist \(No such file or directory\) [\#1137](https://github.com/Chatie/wechaty/issues/1137)
- Try to use ~~Wercker~~ Shippable CI to replace Circle CI [\#1134](https://github.com/Chatie/wechaty/issues/1134)
- Pupeteer not work after upgrade to v1.1 [\#1103](https://github.com/Chatie/wechaty/issues/1103)
- 关于MsgType 的介绍文档404了 [\#1079](https://github.com/Chatie/wechaty/issues/1079)
- Docker test fail because ts-node behavior changed between v3 and v4 [\#1050](https://github.com/Chatie/wechaty/issues/1050)
- fix description [\#1027](https://github.com/Chatie/wechaty/issues/1027)
- ERR Profile save\(\) exception: Error: EACCES: permission denied, open '/bot/demo.wechaty.json' [\#982](https://github.com/Chatie/wechaty/issues/982)
- Dockerfile.onbuild build error.Directory permissions wrong [\#961](https://github.com/Chatie/wechaty/issues/961)
- \[docker\] onbuild failed to start when we put `wechaty` as dependency in package.json [\#500](https://github.com/Chatie/wechaty/issues/500)

**Closed issues:**

- How to send file [\#1150](https://github.com/Chatie/wechaty/issues/1150)
- Failed to download Chromium r543305 [\#1145](https://github.com/Chatie/wechaty/issues/1145)
- Signals \(e.g. ^C\) handling [\#1122](https://github.com/Chatie/wechaty/issues/1122)
- OK to add a .eslintrc.js file? [\#1120](https://github.com/Chatie/wechaty/issues/1120)
- Q: All the media types [\#1115](https://github.com/Chatie/wechaty/issues/1115)
- `TTL expired` error when login [\#1114](https://github.com/Chatie/wechaty/issues/1114)
-  `Cannot read property 'MemberList' of undefined ` still exisit in the latest docker version [\#1111](https://github.com/Chatie/wechaty/issues/1111)
- emoji suggestion [\#1108](https://github.com/Chatie/wechaty/issues/1108)
- Regenerate docs/index.md by run `npm run doc` [\#1105](https://github.com/Chatie/wechaty/issues/1105)
- hot-reload-bot adding hot-reloading config [\#1100](https://github.com/Chatie/wechaty/issues/1100)
- Third options to run wechaty [\#1085](https://github.com/Chatie/wechaty/issues/1085)
- issue [\#1076](https://github.com/Chatie/wechaty/issues/1076)
- Session last only for 1 hour in Azure [\#1059](https://github.com/Chatie/wechaty/issues/1059)
- 出现 no Url 错误后，程序崩溃 [\#1055](https://github.com/Chatie/wechaty/issues/1055)
- 图片发送一次后,图片损坏 [\#1040](https://github.com/Chatie/wechaty/issues/1040)
-  ERR PuppetWebBridge init\(\) exception [\#1018](https://github.com/Chatie/wechaty/issues/1018)
- 我实在解决不了这个问题了~菜鸟一枚 [\#998](https://github.com/Chatie/wechaty/issues/998)
- TypeError: Cannot read property 'MemberList' of undefined [\#984](https://github.com/Chatie/wechaty/issues/984)
- Using hot-import cannot quit wechaty when quit the code [\#978](https://github.com/Chatie/wechaty/issues/978)
- Error: Navigation Timeout Exceeded: 30000ms exceeded [\#966](https://github.com/Chatie/wechaty/issues/966)
- hot-reload does not work [\#958](https://github.com/Chatie/wechaty/issues/958)
- \[docker\] Login error [\#950](https://github.com/Chatie/wechaty/issues/950)
-  Invalid audio output parameters received; using fake audio path.   [\#939](https://github.com/Chatie/wechaty/issues/939)
- Keep getting "can not found bot file: src/main.ts" [\#937](https://github.com/Chatie/wechaty/issues/937)
- glSetDrawRectangleCHROMIUM: failed on surface [\#934](https://github.com/Chatie/wechaty/issues/934)
- \[FR\] Create an example for using hot-import for listener and other modules [\#923](https://github.com/Chatie/wechaty/issues/923)
- Bot log out frequently and got some strange error between it logout and relogin automatically [\#612](https://github.com/Chatie/wechaty/issues/612)

**Merged pull requests:**

- chore\(package\): update ws to version 5.1.0 [\#1143](https://github.com/Chatie/wechaty/pull/1143) ([zixia](https://github.com/zixia))
- chore\(package\): update puppeteer to version 1.2.0 [\#1131](https://github.com/Chatie/wechaty/pull/1131) ([zixia](https://github.com/zixia))
- - \[+\] add one more test case for digestEmoji\(\), close \#1108 [\#1129](https://github.com/Chatie/wechaty/pull/1129) ([suntong](https://github.com/suntong))
- hot-reload-bot adding hot-reloading config close \#1066, close \#1100 [\#1123](https://github.com/Chatie/wechaty/pull/1123) ([suntong](https://github.com/suntong))
- cannot recognize room event [\#1116](https://github.com/Chatie/wechaty/pull/1116) ([lijiarui](https://github.com/lijiarui))
- fix chown: invalid user: ‘bot’ [\#1089](https://github.com/Chatie/wechaty/pull/1089) ([mukaiu](https://github.com/mukaiu))
- Add troubleshooting for hidden .txt files \(Windows\) [\#1087](https://github.com/Chatie/wechaty/pull/1087) ([IdiosApps](https://github.com/IdiosApps))
- fix \#1079 [\#1086](https://github.com/Chatie/wechaty/pull/1086) ([lijiarui](https://github.com/lijiarui))
- chore\(package\): update @types/node to version 9.4.0 [\#1083](https://github.com/Chatie/wechaty/pull/1083) ([zixia](https://github.com/zixia))
- chore\(package\): update finis to version 0.4.1 [\#1075](https://github.com/Chatie/wechaty/pull/1075) ([zixia](https://github.com/zixia))
- chore\(package\): update ts-node to version 4.1.0 [\#1074](https://github.com/Chatie/wechaty/pull/1074) ([zixia](https://github.com/zixia))
- chore\(package\): update mime to version 2.2.0 [\#1073](https://github.com/Chatie/wechaty/pull/1073) ([zixia](https://github.com/zixia))
- chore\(package\): update tslint to version 5.9.0 [\#1072](https://github.com/Chatie/wechaty/pull/1072) ([zixia](https://github.com/zixia))
- chore\(package\): update sinon to version 4.2.0 [\#1071](https://github.com/Chatie/wechaty/pull/1071) ([zixia](https://github.com/zixia))
- fail to install node dependencies [\#1036](https://github.com/Chatie/wechaty/pull/1036) ([hiwanz](https://github.com/hiwanz))
- Change `init` to `start` in demo [\#1017](https://github.com/Chatie/wechaty/pull/1017) ([xinbenlv](https://github.com/xinbenlv))
- Update tuling123-bot.ts [\#1014](https://github.com/Chatie/wechaty/pull/1014) ([htoooth](https://github.com/htoooth))
- fix \#961 onbuild operation not permitted [\#962](https://github.com/Chatie/wechaty/pull/962) ([mukaiu](https://github.com/mukaiu))
- Fix \#923 [\#935](https://github.com/Chatie/wechaty/pull/935) ([xinbenlv](https://github.com/xinbenlv))

### [v0.12.0](https://github.com/chatie/wechaty/tree/v0.12.0) (2017-10-30)
[Full Changelog](https://github.com/chatie/wechaty/compare/v0.9.0...v0.12.0)

**Implemented enhancements:**

- Promote `rx-queue` to SOLO NPM Module [\#938](https://github.com/Chatie/wechaty/issues/938)
- Add Wechaty.logonoff\(\) method [\#926](https://github.com/Chatie/wechaty/issues/926)
- Registe Wechaty Listeners with a try {} catch {} block in order to prevent listener function crash the framework. [\#878](https://github.com/Chatie/wechaty/issues/878)
- Upgrade CircleCI from 1.0 to 2.0 [\#863](https://github.com/Chatie/wechaty/issues/863)
- Switch Docker Node Image from `alphin` to official `node:7` [\#862](https://github.com/Chatie/wechaty/issues/862)
- Click Web Wechat `Switch Account` Automatically to get qrcode immediately when bot logout [\#636](https://github.com/Chatie/wechaty/issues/636)
- Upgrade docker image from Node.js v7 to v8 [\#577](https://github.com/Chatie/wechaty/issues/577)
- \[todo\] switch unit test tool from AVA to TAPE [\#513](https://github.com/Chatie/wechaty/issues/513)

**Fixed bugs:**

- \[CI\] Homebrew must be run under Ruby 2.3! You're running 2.0.0. \(RuntimeError\) [\#936](https://github.com/Chatie/wechaty/issues/936)
- "PromiseRejectionHandledWarning: Promise rejection was handled asynchronously" when Wechat says "当前登录环境异常" [\#925](https://github.com/Chatie/wechaty/issues/925)
- TypeError: cookieList.filter is not a function [\#919](https://github.com/Chatie/wechaty/issues/919)
- TypeError: Cannot read property 'error' of null [\#918](https://github.com/Chatie/wechaty/issues/918)
- ERR PuppetWebBridge init\(\) initPage\(\) onLoad\(\) exception: undefined [\#917](https://github.com/Chatie/wechaty/issues/917)
- Sometimes Wechaty can't login \(with puppeteer\) [\#899](https://github.com/Chatie/wechaty/issues/899)
- \[ci\] WebDriver Error: "no such session" [\#756](https://github.com/Chatie/wechaty/issues/756)
- Click Web Wechat `Switch Account` Automatically to get qrcode immediately when bot logout [\#636](https://github.com/Chatie/wechaty/issues/636)
- \[ci\] execute proxyWechaty\(init\) error: 503, init\(\) without a ready angular env [\#329](https://github.com/Chatie/wechaty/issues/329)
- \[ci log\] watchdog reset after 120 seconds [\#195](https://github.com/Chatie/wechaty/issues/195)
- Selenium WebDriver driver.getSession\(\) wait a long time [\#86](https://github.com/Chatie/wechaty/issues/86)

**Closed issues:**

- 在登录失败时的异常提示优化 [\#898](https://github.com/Chatie/wechaty/issues/898)
- CANT RUN THE WECHATY-GETTING-STARTED, PUPPETWEBROWSER valid\(\) getSession\(\) [\#891](https://github.com/Chatie/wechaty/issues/891)
- Error after restart  vps              invalid driver at ttl 0 [\#788](https://github.com/Chatie/wechaty/issues/788)
- webdriver.executeScript wait a long time\(26s\) before page load [\#2](https://github.com/Chatie/wechaty/issues/2)

**Merged pull requests:**

- Replace WebDriver by Puppeteer \(\#790\) [\#860](https://github.com/Chatie/wechaty/pull/860) ([zixia](https://github.com/zixia))
- chore\(package\): update coveralls to version 3.0.0 [\#854](https://github.com/Chatie/wechaty/pull/854) ([zixia](https://github.com/zixia))

See more in [CHANGELOG](https://github.com/Chatie/wechaty/blob/master/CHANGELOG.md)

## RELEASELOG

### v0.16 New Puppet System(BETA) with Padchat Implemented

This release is a BETA release which had been improved with lots of huge refactoring since v0.14.

With v0.16, we can use the branding new Puppet System to connect Wechaty API to any kinds of Puppets, for example:

1.  Mocking - [PuppetMock](https://github.com/Chatie/wechaty/tree/ed72a78b61ccc352d9bd9f5a06054a218cdd1d0d/src/puppet-mock)
1. Web API via HTTP - [PuppetWechat4U](https://github.com/Chatie/wechaty/tree/ed72a78b61ccc352d9bd9f5a06054a218cdd1d0d/src/puppet-wechat4u)
1. Web API via Browser - [PuppetPuppeteer](https://github.com/Chatie/wechaty/tree/ed72a78b61ccc352d9bd9f5a06054a218cdd1d0d/src/puppet-puppeteer) (our classic PuppetWeb)
1. Maybe a Official Account Puppet? [#1016](https://github.com/Chatie/wechaty/issues/1016)

If you are using Wechaty in a production environment, It is recormmand to skip this version and wait to the next version of 0.18 because this version is still in **testing stage** and will be continue developing as v0.19.

However, if you want to try the new Puppet like the [PuppetPadchat](https://github.com/lijiarui/wechaty-puppet-padchat) which is powered by the Wechat Pad Protocol, you can upgrade to this version and get the following benifits from it:

1. Be able to login with the newly registered Wechat Account. ([#872](https://github.com/Chatie/wechaty/issues/872))
1. Get wechat id for contacts. ([#133](https://github.com/Chatie/wechaty/issues/133))
1. Get consistent room id for rooms across login session.  ([#90](https://github.com/Chatie/wechaty/issues/90))
1. ... To be discovered by you ...

Learn more about how to use the PuppetPadchat from [Wechaty v0.15 Alpha Testing: Win32/iPad/Android/iOS/API Puppets Support are coming! #1296](https://github.com/Chatie/wechaty/issues/1296)

#### Blog

https://blog.chatie.io/wechaty-new-release-version-0.16/

#### CHANGE LOG

> BREAKING NEWS: Wechaty logo color was changed from green to blue!

There will be a **migration guide from v0.14 to v0.16** will be published on our blog later.

##### 1. BREAKING CHANGES

###### 1.1 Class Removal

- BREAKING CHANGE: v0.16 will remove `MediaMessage` class [\#1164](https://github.com/Chatie/wechaty/issues/1164)
- BREAKING CHANGES v0.16: FriendRequest class will be replaced with Friendship [\#1312](https://github.com/Chatie/wechaty/issues/1312)
- BREAKING CHANGE v0.16  Contact, FriendRequest, Message, and Room classes will not be able to instantiate directly [\#1364](https://github.com/Chatie/wechaty/issues/1364)


###### 1.2. Sync to Async

- BREAKING CHANGE: v0.16 `Room.topic()` change from Sycn to Async [\#1295](https://github.com/Chatie/wechaty/issues/1295)
- BREAKING CHANGE: v0.16 `Room.alias(contact)` change from Sycn to Async [\#1293](https://github.com/Chatie/wechaty/issues/1293)
- BREAKING CHANGE: v0.16 `Room.memberList()` change from Sycn to Async [\#1290](https://github.com/Chatie/wechaty/issues/1290)
- BREAKING CHANGE: v0.16 `Room.has(contact)` change from Sycn to Async [\#1289](https://github.com/Chatie/wechaty/issues/1289)
- BREAKING CHANGE: v0.16 `Message.mention()` change from `sync` to `async` [\#1259](https://github.com/Chatie/wechaty/issues/1259)
- BREAKING CHANGES: v0.16 `Room.member()` from `sync` to `async` [\#1258](https://github.com/Chatie/wechaty/issues/1258)

###### 1.3. Argument / Return Value

- BREAKING CHANGE v0.16  room.add return Promise\<void\> instead of return Promise\<boolean\> [\#1362](https://github.com/Chatie/wechaty/issues/1362)
- BREAKING CHANGE: v0.16 `scan` event args will be different! [\#1262](https://github.com/Chatie/wechaty/issues/1262)
- BREAKING CHANGE: first arg of `room-leave` event licener changed from `Contact` to `Contact[]` [\#723](https://github.com/Chatie/wechaty/issues/723)
- BREAKING CHANGE: v0.16 on('friend`) arguments changed! [\#1196](https://github.com/Chatie/wechaty/issues/1196)

###### 1.4. Deprecated

- BREAKING CHANGE v0.16 Wechaty.self() eprecated, use Wechaty.userSelf()  instead [\#1369](https://github.com/Chatie/wechaty/issues/1369)
- BREAKING CHANGE v0.16 Contact.personal() and Contact.official()  deprecated, use Contact.type() instead [\#1366](https://github.com/Chatie/wechaty/issues/1366)
- BREAKING CHANGE: v0.16 will replace `Message.content()` with `Message.text()` [\#1163](https://github.com/Chatie/wechaty/issues/1163)

##### 2. New Features

- feat: Add `for await (const contact of room) {}` support by ES6 iterators override [\#1198](https://github.com/Chatie/wechaty/issues/1198)
- \[todo\] allow Wechaty to be multi-instance [\#518](https://github.com/Chatie/wechaty/issues/518)
- \[New Puppet\] Plan to support `WECHATY_HEAD=WECHAT4U` [\#69](https://github.com/Chatie/wechaty/issues/69)
- TravisCI Conditional Deployment [\#1211](https://github.com/Chatie/wechaty/issues/1211)
- Puppet padchat [\#1245](https://github.com/Chatie/wechaty/pull/1245) ([lijiarui](https://github.com/lijiarui))
- Multi-Instance Support [\#1159](https://github.com/Chatie/wechaty/pull/1159) ([zixia](https://github.com/zixia))


##### 3. Bug Fixes

- Update the peerDependencies of `rx-queue`: rxjs@6 from rxjs@5 [\#1205](https://github.com/Chatie/wechaty/issues/1205)
- How to avoid the memory leak [\#981](https://github.com/Chatie/wechaty/issues/981)
- Should throw Exception when there have API Error. [\#683](https://github.com/Chatie/wechaty/issues/683)

##### 4. Enhancements

- Prevent the Floating Promise in the Async/Await Code [\#1346](https://github.com/Chatie/wechaty/issues/1346)
- Upgrade Docker Base Image from Ubuntu 17.10 to 18.04 [\#1239](https://github.com/Chatie/wechaty/issues/1239)
- Continious Deploy to NPM with @next tag when the MINOR version number is odd(in developing branch) [\#1158](https://github.com/Chatie/wechaty/issues/1158)
- Should throw Exception when there have API Error. [\#683](https://github.com/Chatie/wechaty/issues/683)
- Decouple: Make `Contact`, `Room`, `Message`, and `FriendRequest` class Abstract. [\#1160](https://github.com/Chatie/wechaty/pull/1160) ([zixia](https://github.com/zixia))
- Update to node 10 in .travis.yml [\#1231](https://github.com/Chatie/wechaty/pull/1231) ([zixia](https://github.com/zixia))

Learn more between version at:

* [Full Changelog](https://github.com/Chatie/wechaty/blob/master/CHANGELOG.md)
* [Source Code of Wechaty v0.16](https://github.com/chatie/wechaty/tree/v0.16.0) (2018-06-21)
* [Commits Between v0.14 and v0.16](https://github.com/chatie/wechaty/compare/v0.14.0...v0.16.0)


See more in [releases](https://github.com/chatie/wechaty/releases)

## Awesome docsify

### Showcase

1. [一个用CNN深度神剧网络给图片评分的wechaty项目](https://github.com/huyingxi/wechaty_selfie)
1. [Relay between Telegram and WeChat](https://github.com/Firaenix/TeleChatRelay)
1. [A chat bot managing the HaoShiYou wechat groups run by volunteers of haoshiyou.org](https://github.com/xinbenlv/haoshiyou-bot)
1. [An interactive chat bot to manage a TODO list](https://github.com/coderbunker/candobot)
1. [Forward WeChat messages to telegram](https://github.com/luosheng/Wegram)

Learn more about Projects Using Wechaty at [Wiki:PoweredByWechaty](https://github.com/chatie/wechaty/wiki/PoweredByWechaty)

### Plugins
In Gist-bot
- [firend-bot](https://github.com/Chatie/wechaty/blob/master/examples/gist-bot/on-friend.ts)
- [message-bot](https://github.com/Chatie/wechaty/blob/master/examples/gist-bot/on-message.ts)
- [room-bot](https://github.com/Chatie/wechaty/blob/master/examples/gist-bot/on-room-join.ts)

### Enterprise Usage

> "Wechaty is a great solution, I believe there would be much more users recognize it." [link](https://github.com/chatie/wechaty/pull/310#issuecomment-285574472)  
> -- @Gcaufy, Tencent Engineer, Author of [WePY](https://github.com/Tencent/wepy)

> "太好用，好用的想哭"  
> -- @xinbenlv, Google Engineer, Founder of HaoShiYou.org

> "最好的微信开发库" [link](http://weibo.com/3296245513/Ec4iNp9Ld?type=comment)  
> -- @Jarvis, Baidu Engineer

> "Wechaty让运营人员更多的时间思考如何进行活动策划、留存用户，商业变现" [link](http://mp.weixin.qq.com/s/dWHAj8XtiKG-1fIS5Og79g)  
> -- @lijiarui, CEO of BotOrange.

> "If you know js ... try Chatie/wechaty, it's easy to use."  
> -- @Urinx Uri Lee, Author of [WeixinBot(Python)](https://github.com/Urinx/WeixinBot)

See more at [Wiki:VoiceOfDeveloper](https://github.com/Chatie/wechaty/wiki/VoiceOfDeveloper)

#### Contributing List

| Contributor | Main Contributions | Bio  |
|    :---:    | :---          | :--- |
| ![lijiarui](https://avatars1.githubusercontent.com/u/6419514?s=80) <br /> [lijiarui](https://github.com/lijiarui) | [add wechaty document #725](https://github.com/Chatie/wechaty/pull/725) | Full stack developer, serial entrepreneur, Founder&CEO of [BotOrange](http://botorange.com/) |
| ![zixia](https://avatars1.githubusercontent.com/u/1361891?s=80) <br /> [zixia](https://github.com/zixia) | [Convert code base to Typescript from Javascript #40](https://github.com/Chatie/wechaty/issues/40) | Active angel investor, serial entreprneur with strong technic background with rich social network experience. Full stack developer, ML Ph.D|
| ![mukaiu](https://avatars2.githubusercontent.com/u/7746790?s=80) <br /> [mukaiu](https://github.com/mukaiu) | [#4 send image/video #337](https://github.com/Chatie/wechaty/pull/337) | Bio |
| ![binsee](https://avatars3.githubusercontent.com/u/5285894?s=80) <br /> [binsee](https://github.com/binsee) | <ul><li>[fix(wechaty-bro): resolved emit RECALLED type msg (fix #8) #744](https://github.com/Chatie/wechaty/pull/744)</li><li>[解析WebWxApp代码来增强wechaty功能（一）](http://blog.chatie.io/2017/11/09/analysis-and-enhancement-wechaty.html)</li></ul> | 野路子的修炼者 |
| ![JasLin](https://avatars0.githubusercontent.com/u/25162437?s=80) <br /> [JasLin](https://github.com/JasLin) | <ul><li>[support brand checking of contact #404](https://github.com/Chatie/wechaty/pull/404)</li><li>[Wechaty Case Study - a letter from JasLin](http://blog.chatie.io/case/2016/12/08/jaslin-user-case.html)</li></ul> | CTO of BotWave |
| ![xinbenlv](https://avatars0.githubusercontent.com/u/640325?s=80) <br /> [xinbenlv](https://github.com/xinbenlv) | [Printout entire error trace when unhandledRejection was caught #361](https://github.com/Chatie/wechaty/pull/361) | Google Engineer, Founder of HaoShiYou. HaoShiYou has many 500 people Wechat groups, which is a massive work for human. |
| ![hczhcz](https://avatars3.githubusercontent.com/u/3832986?s=80) <br /> [hczhcz](https://github.com/hczhcz) | <ul><li>[add(example): add a roger bot runs on wechaty telegram bot adaptor #684](https://github.com/Chatie/wechaty/pull/684)</li><li>[Run Your Telegram Bot with Wechaty](http://blog.chatie.io/2017/07/17/run-your-telegram-bot-with-wechaty.html)</li></ul> | An open source coder <del>and fan of the TOAD</del> |
| ![imerse](https://avatars2.githubusercontent.com/u/8415005?s=80) <br /> [imerse](https://github.com/imerse) | [add notice to readme #578](https://github.com/Chatie/wechaty/pull/578) | Bio |
| ![FlyingBlazer](https://avatars0.githubusercontent.com/u/25162437?s=80) <br /> [FlyingBlazer](https://github.com/flyingblazer) | [fix #512 #531](https://github.com/Chatie/wechaty/pull/531) | Bio |
| ![zhenyong](https://avatars1.githubusercontent.com/u/4012276?s=80) <br /> [zhenyong](https://github.com/zhenyong) | [replace `document.domain` with `location.hostname`](https://github.com/Chatie/wechaty/pull/770) | Yong ZHEN, Front Engineer Leader of See. Before join See, he founded his own startup which competite with Flower Plus.  |
| ![lpmi-13](https://avatars1.githubusercontent.com/u/5070516?s=80) <br /> [lpmi-13](https://github.com/lpmi-13) | [some typo fixes and suggested revisions #681](https://github.com/Chatie/wechaty/pull/681) | Bio |
| ![TingYinHelen](https://avatars2.githubusercontent.com/u/14006826?s=80) <br /> [TingYinHelen](https://github.com/TingYinHelen) | [An interesting weekend with Wechaty](http://blog.chatie.io/2017/06/24/an-interesting-weekend-with-wechaty.html) | Full stack engineer living in Chengdu, familiar with D3. When not coding, she loves dancing, sings and play Erhu. |
| ![ax4](https://avatars0.githubusercontent.com/u/25162437?s=80) <br /> [ax4](https://github.com/ax4) | [fix jsdoc flush issue #378 and minor fix on the doc examples #380](https://github.com/Chatie/wechaty/pull/380) | bio |
| ![Gcaufy](https://avatars2.githubusercontent.com/u/2182004?s=80) <br /> [Gcaufy](https://github.com/gcaufy) | [added hot load bots #310](https://github.com/Chatie/wechaty/pull/310) | Author of [WePY](https://github.com/wepyjs/wepy), a mini program fframework for Wechat. Tencent Engineer |
| ![cherry-geqi](https://avatars3.githubusercontent.com/u/13705685?s=80) <br /> [cherry-geqi](https://github.com/cherry-geqi) | [convert wechaty-bro.js to plain old javascript syntax #60 #97](https://github.com/Chatie/wechaty/pull/97) | bio |
| ![xjchengo](https://avatars3.githubusercontent.com/u/4819996?s=80) <br /> [xjchengo](https://github.com/xjchengo) | [Fix chrome driver path problem in Windows #416](https://github.com/Chatie/wechaty/pull/416) | bio |
| ![shevyan](https://avatars0.githubusercontent.com/u/25162437?s=80) <br /> [shevyan](https://github.com/shevyan) | [Docker玩转微信机器人框架Wechaty](http://blog.chatie.io/developer/2016/12/05/ghostcloud-wechaty-docker.html) | Dong YAN，Founder&CEO of GhostCloud |
| ![imWildCat](https://avatars1.githubusercontent.com/u/2396817?s=80) <br /> [imWildCat](https://github.com/imWildCat) | <ul><li>[A Simple WeChaty Bot with Intelligence Powered by TensorFlow](http://blog.chatie.io/2017/06/05/a-simple-wechaty-bot-with-intelligence-powered-by-tf.html)</li> <li>[Interact Wechaty with Ruby on Rails from scratch](http://blog.chatie.io/2017/04/21/interact-wechaty-with-ruby-on-rails-from-scratch.html)</li></ul> | A designer and developer, currently a postgraduate student at University of Birmingham (Computer Science), and founded his own company in China with a startup business plan |
| ![antonia0912](https://avatars1.githubusercontent.com/u/17244623?s=80) <br /> [antonia0912](https://github.com/antonia0912) | [Wechaty Contributor Dinner](http://blog.chatie.io/2017/04/26/wechaty-meeting.html) | formal community manager at JueJin(Chinese Hacker News) |
| ![Samurais](https://avatars2.githubusercontent.com/u/3538629?s=80) <br /> [Samurais](http://blog.chatbot.io/webcv/) | [Deliver dialogs with SuperScript](http://blog.chatie.io/2017/05/17/deliver-dialogs-with-superscript.html) | Chatbot Evangelist, I built Cloud, Mobile, Bizflow Applications at IBM China Development Lab, recent years work in Startups. |
| ![Seabook](https://avatars3.githubusercontent.com/u/700550?s=80) <br /> [Seabook](https://github.com/kungfu-software) | [How to use interval in Wechaty to overcome some web-wechat API limitations](http://blog.chatie.io/2017/05/25/use-interval-in-wechaty.html) | Founder of Kungfu Software |
| ![grace](https://avatars1.githubusercontent.com/u/15572156?s=80) <br /> [greatgeekgrace](https://github.com/greatgeekgrace) | [The memorabilia of The First Chatie WWDC Party](http://blog.chatie.io/2017/06/06/the-first-chatie-wwdc-party.html) | Jiaxuan LI, Ex-Baidu-er, Tensorflow Expert who has just published a ML Book in 2017. |
| ![dcsan](https://avatars1.githubusercontent.com/u/514002?s=80) <br /> [dcsan](https://github.com/dcsan) | [Shanghai WWDC - WeChaty Worldwide Developers Conference](http://blog.chatie.io/2017/08/28/wechaty-shanghai-meetup.html) | making Chatbots at RIKAI Labs. Founder of rikai and has developed chatbot products since 2014. He is very experienced with chatbot. Rikai has a lot of TOB chatbot businesses like ticket bot, meeting bot, FAQ bot for many big companies. Also, Rikai has a teacher bot to teach people to learn English using chatbot with wechat OA account and wechat group. |
| ![huyingxi](https://avatars0.githubusercontent.com/u/25162437?s=80) <br /> [huyingxi](https://github.com/huyingxi) | [Score Your Face Photo: a ML & Wechaty practice](http://blog.chatie.io/2017/09/18/wechaty-selfie-bot.html) | enjoying ML&Wechaty at BUPT. She is a graduate student studying at BUPT, who has very good experience related with ChatBot & Machine Learning and Chinese NLP. |
| ![h4dex](https://avatars0.githubusercontent.com/u/8213215?s=80) <br /> [h4dex](https://github.com/h4dex) | [关于对微信PC版Hook的一点研究分享](http://blog.chatie.io/2017/10/06/wechat-pc-impactor.html) | 会使用各种计算机语言写出 Hello World 的设计师（http://icefox.org/） |
| ![leinue](https://avatars0.githubusercontent.com/u/2469688?s=80) <br /> [leinue](https://github.com/leinue) | [Ten minutes to build a daily paper bot](http://blog.chatie.io/2017/10/28/ten-minutes-to-build-a-daily-paper-bot.html) | CTO of Awesome Port. He started his own business when he was a junior student at the university, had built a draw and drop user interface that helps developers to develop apps and deploy the apps automatically with Docker technology. |
| ![iyjian](https://avatars0.githubusercontent.com/u/25162437?s=80) <br /> [iyjian](https://github.com/iyjian) | [我用wechaty做了一个积分红包机器人](http://blog.chatie.io/2017/11/09/red-pocket-wechaty-iyjian.html) | CTO from a listed company called 路骋国旅(831320), mainly focus on data analysis. He wrote a bot share PUFA bank point and share point to get a gift from the bank. |
| ![wangning](https://avatars0.githubusercontent.com/u/25162437?s=80) <br /> [wangning](https://github.com/wnbupt) | [Wechaty-Mail: An email tool build on Wechaty](https://blog.chatie.io/2017/12/25/wechaty-mail.html) | a postgraduate student at BUPT, a frontend full stack engineer, with rich Machine Learning/NLP/Image project experiences. |
| ![suntong](https://avatars0.githubusercontent.com/u/422244?s=460&v=4) <br /> [suntong](https://github.com/suntong) | [the _"monster"_ demo](https://github.com/Chatie/wechaty/tree/master/examples/monster) -- a _one-stop_ wechaty demo that includes _everything useful_ for people to get an easier start. | From Toronto, Canada (and [don't like Typescript that much](https://blog.chatie.io/2018/03/09/can-typescript-really-live-up-to-its-hype.html)) |

**SEE ALSO**
* https://github.com/Chatie/wechaty/blob/master/CHANGELOG.md#wechaty-contributors
* https://github.com/Chatie/wechaty/graphs/contributors
* https://github.com/Chatie/blog/graphs/contributors

Edit in [WIKI: Contributors](https://github.com/Chatie/wechaty/wiki/Contributors)