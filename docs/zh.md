# 入门

## Wechaty 是什么
[![Powered by Wechaty](https://img.shields.io/badge/Powered%20By-Wechaty-blue.svg)](https://github.com/chatie/wechaty)
[![English Version](https://img.shields.io/badge/-English%20Version-blue.svg)](/zh)

[Wechaty](https://github.com/Chatie/wechaty/) 是一个开源的的 **个人号** 微信机器人接口，是一个使用Typescript 构建的Node.js 应用。支持多种微信接入方案，包括网页，ipad，ios，windows， android 等。同时支持[Linux](https://travis-ci.com/chatie/wechaty), [Windows](https://ci.appveyor.com/project/chatie/wechaty), [Darwin(OSX/Mac)](https://travis-ci.com/chatie/wechaty) 和 [Docker](https://app.shippable.com/github/Chatie/wechaty) 多个平台。

只需要6行代码，你就可以 **通过个人号** 搭建一个 **微信机器人功能** ，用来自动管理微信消息。

更多功能包括：
- 消息处理：关键词回复
- 群管理：自动入群，拉人，踢人
- 自动处理好友请求
- 智能对话：通过简单配置，即可加入智能对话系统，完成指定任务
- ... 请自行开脑洞

详情请看[Wechaty](https://github.com/chatie/wechaty)项目
[![NPM Version](https://badge.fury.io/js/wechaty.svg)](https://badge.fury.io/js/wechaty)
[![Docker Pulls](https://img.shields.io/docker/pulls/zixia/wechaty.svg?maxAge=2592000)](https://hub.docker.com/r/zixia/wechaty/)
[![TypeScript](https://img.shields.io/badge/%3C%2F%3E-TypeScript-blue.svg)](https://www.typescriptlang.org/)
[![Greenkeeper badge](https://badges.greenkeeper.io/Chatie/wechaty.svg)](https://greenkeeper.io/)
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

## 1. 无法登录

### 1.1 我的微信号无法登陆
从2017年6月下旬开始，使用基于web版微信接入方案存在大概率的被限制登陆的可能性。 主要表现为：无法登陆Web 微信，但不影响手机等其他平台。
验证是否被限制登陆： https://wx.qq.com 上扫码查看是否能登陆。
更多内容详见： 
  - [Can not login with error message: 当前登录环境异常。为了你的帐号安全，暂时不能登录web微信。](https://github.com/Chatie/wechaty/issues/603)
  - [[RUMOR] wechat will close webapi for wechat](https://github.com/Chatie/wechaty/issues/990)
  - [New account login issue](https://github.com/Chatie/wechaty/issues/872)
  - [wechaty-puppet-puppeteer](https://github.com/chatie/wechaty-puppet-puppeteer)

**解决方案：我们提供了非web 版本的解决方案，正在进行alpha 测试，[点击申请测试token](https://github.com/Chatie/wechaty/issues/1296)，技术细节及实现请查看[wechaty-puppet-padchat](https://github.com/lijiarui/wechaty-puppet-padchat)**

## 2. 哪些功能不能实现

### 2.1 支持 红包、转账、朋友圈… 吗？
以下功能目前 均不支持

支付相关 - 红包、转账、收款 等都不支持
在群聊中@他人 - 是的，Web 微信中被人@后也不会提醒
发送名片
发送分享链接
发送语音消息 - 后续会支持
朋友圈相关 - 后续会支持

### 2.2 wechaty 是否可以发送卡片消息，然后点击跳转到网页
现阶段还不可以，后续会在非web 解决方案中陆续支持

相关Issue：
- [Add support for send url rich media message](https://github.com/Chatie/wechaty/issues/718)
- [can wechaty send share card msg](https://github.com/Chatie/wechaty/issues/824)

### 2.3 wechaty 是支持个人号还是公众号？
现阶段，wechaty 只支持个人号

相关Issue:
- [Using wechaty to start a wechatOA account](https://github.com/Chatie/wechaty/issues/1016)

## 3. 其他
### 3.1 wechaty & 队列的最佳实践
为了防止微信封号，wechaty 内置了队列，详细可见：[rx-queue](https://github.com/zixia/rx-queue)

### 3.2 wechaty 和 wechat4u 项目，有什么区别？
wechaty 可以实现多个微信接入的方案，对外提供统一的接口，包括web，ipad，ios等等，其中[wechat4u](https://github.com/nodeWechat/wechat4u) 是[SPACELAN](https://github.com/spacelan)写的基于web 实现微信接入的，wechaty 可以实现用wechaty 的接口，调用wechat4u的api。

> 这么理解：wechat4u有的，wechaty都有，反之不一定有，对么？

这个也不是完全确定的，因为wechaty 只是基于wechaty 暴露出来的接口为wechat4u 进行了封装


点击这里进行编辑: [FAQ-ZH](https://github.com/Chatie/wechaty-getting-started/wiki/FAQ-ZH)

# 其他

## Awesome Wechaty

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

## RELEASELOG

### v0.16 New Puppet System(BETA) with Padchat Implemented

[v0.16.0](https://github.com/Chatie/wechaty/releases/tag/v0.16.0) release this on 2018-06-20, 290 commits to master since this release

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

### v0.14 - Minor Bug Fixes

[v0.14.0](https://github.com/Chatie/wechaty/releases/tag/v0.14.0) release this on 2018-04-15, 1161 commits to master since this release

### v0.12 - All About Refactoring

[v0.12.0](https://github.com/Chatie/wechaty/releases/tag/v0.12.0) release this on 2017-10-31, 1475 commits to master since this release

### v0.9 - Huge Improvements with lots of Bug Fixes and Feature Enhancements

[v0.9.0](https://github.com/Chatie/wechaty/releases/tag/v0.9.0) release this on 2017-10-04, 1722 commits to master since this release

### v0.7 - A Brand New Version for Production

[v0.7.0](https://github.com/Chatie/wechaty/releases/tag/v0.7.0) release this on 2016-12-29, 3041 commits to master since this release

### v0.6 - DevOps CI/CD with Docker&NPM

[v0.6.0](https://github.com/Chatie/wechaty/releases/tag/v0.6.0) release this on 2016-11-11, 3359 commits to master since this release

### v0.5.22 - Enhanced Media Message & Docker

[v0.5.22](https://github.com/Chatie/wechaty/releases/tag/v0.5.22) release this on 2016-11-10, 3378 commits to master since this release

### v0.5.9 - 1st Recommend Version for Docker Image & NPM Module

[v0.5.9](https://github.com/Chatie/wechaty/releases/tag/v0.5.9) release this on 2016-11-07, 3431 commits to master since this release

### v0.5.1 - The first TypeScript version with fully dockerized runtime support

[v0.5.1](https://github.com/Chatie/wechaty/releases/tag/v0.5.1) release this on 2016-11-03, 3573 commits to master since this release

### v0.4.0 - Supported Room Operate & Friend Request, with Cloud Manager Backend.

[v0.4.0](https://github.com/Chatie/wechaty/releases/tag/v0.4.0) release this on 2016-10-10, 3848 commits to master since this release

### v0.2.0 - Cloudify Wechaty: Start manage your bot on https://chatie.io

[v0.2.0](https://github.com/Chatie/wechaty/releases/tag/v0.2.0) release this on 2016-06-29, 4315 commits to master since this release

### v0.1.1 - Save/Restore Wechat Session

[v0.1.1](https://github.com/Chatie/wechaty/releases/tag/v0.1.1) release this on 2016-06-10, 4450 commits to master since this release

### v0.1.1 - Perfect worked base on chrome

[v0.0.6](https://github.com/Chatie/wechaty/releases/tag/v0.0.6) release this on 2016-05-16, 4541 commits to master since this release

### v0.0.5 - Wechaty baby born!

[v0.0.5](https://github.com/Chatie/wechaty/releases/tag/v0.0.5) release this on 2016-05-11, 4580 commits to master since this release

See more in [releases](https://github.com/chatie/wechaty/releases)

## CHANGELOG

### v0.16.0 2018-06-21
[v0.16.0](https://github.com/chatie/wechaty/tree/v0.16.0) (2018-06-21)[Full Changelog](https://github.com/chatie/wechaty/compare/v0.14.0...v0.16.0)

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

### v0.14.0 2018-04-15
[v0.14.0](https://github.com/chatie/wechaty/tree/v0.14.0) (2018-04-15)[Full Changelog](https://github.com/chatie/wechaty/compare/v0.12.0...v0.14.0)

### v0.12.0 2017-10-30
[v0.12.0](https://github.com/chatie/wechaty/tree/v0.12.0) (2017-10-30)[Full Changelog](https://github.com/chatie/wechaty/compare/v0.9.0...v0.12.0)

### v0.9.0 2017-10-04
[v0.9.0](https://github.com/chatie/wechaty/tree/v0.9.0) (2017-10-04)[Full Changelog](https://github.com/chatie/wechaty/compare/v0.8.2...v0.9.0)

### v0.8.2 2017-05-03
[v0.8.2](https://github.com/chatie/wechaty/tree/v0.8.2) (2017-05-03)[Full Changelog](https://github.com/chatie/wechaty/compare/v0.7.0...v0.8.2)

### v0.7.0 2016-12-29
[v0.7.0](https://github.com/chatie/wechaty/tree/v0.7.0) (2016-12-29)[Full Changelog](https://github.com/chatie/wechaty/compare/v0.6.32...v0.7.0)

### v0.6.32 2016-11-28
[v0.6.32](https://github.com/chatie/wechaty/tree/v0.6.32) (2016-11-28)[Full Changelog](https://github.com/chatie/wechaty/compare/v0.6.21...v0.6.32)

### v0.6.21 2016-11-14
[v0.6.21](https://github.com/chatie/wechaty/tree/v0.6.21) (2016-11-14)[Full Changelog](https://github.com/chatie/wechaty/compare/v0.5.21...v0.6.21)

### v0.5.21 2016-11-09
[v0.5.21](https://github.com/chatie/wechaty/tree/v0.5.21) (2016-11-09)[Full Changelog](https://github.com/chatie/wechaty/compare/v0.5.1...v0.5.21)

### v0.5.1 2016-11-03
[v0.5.1](https://github.com/chatie/wechaty/tree/v0.5.1) (2016-11-03)[Full Changelog](https://github.com/chatie/wechaty/compare/v0.4.0...v0.5.21)

### v0.4.0 2016-10-08
[v0.4.0](https://github.com/chatie/wechaty/tree/v0.4.0) (2016-10-08)[Full Changelog](https://github.com/chatie/wechaty/compare/v0.3.12...v0.4.0)

### v0.3.12 2016-08-25
[v0.3.12](https://github.com/chatie/wechaty/tree/v0.3.12) (2016-08-25)[Full Changelog](https://github.com/chatie/wechaty/compare/v0.1.0...v0.3.12)

### v0.1.0 2016-06-09
[v0.1.0](https://github.com/chatie/wechaty/tree/v0.1.0) (2016-06-09)[Full Changelog](https://github.com/chatie/wechaty/compare/v0.0.5...v0.1.0)

See more in [CHANGELOG](https://github.com/Chatie/wechaty/blob/master/CHANGELOG.md)

## Contributing List

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
# API

## Classes

<dl>
<dt>[Wechaty](#Wechaty)</dt>
<dd><p>Main bot class.</p>
<p>[wechatyinstance](#wechatyinstance)</p>
<p><a href="https://github.com/lijiarui/wechaty-getting-started">Wechaty Starter Project</a></p>
</dd>
<dt>[Contact](#Contact)</dt>
<dd><p>All wechat contacts(friend) will be encapsulated as a Contact.</p>
<p><code>Contact</code> is <code>Sayable</code>,
<a href="https://github.com/Chatie/wechaty/blob/master/examples/contact-bot.ts">Examples/Contact-Bot</a></p>
</dd>
<dt>[Friendship](#Friendship)</dt>
<dd><p>Send, receive friend request, and friend confirmation events.</p>
<ol>
<li>send request</li>
<li>receive request(in friend event)</li>
<li>confirmation friendship(friend event)</li>
</ol>
<p><a href="https://github.com/Chatie/wechaty/blob/master/examples/friend-bot.ts">Examples/Friend-Bot</a></p>
</dd>
<dt>[Message](#Message)</dt>
<dd><p>All wechat messages will be encapsulated as a Message.</p>
<p><code>Message</code> is <code>Sayable</code>,
<a href="https://github.com/Chatie/wechaty/blob/master/examples/ding-dong-bot.ts">Examples/Ding-Dong-Bot</a></p>
</dd>
<dt>[Room](#Room)</dt>
<dd><p>All wechat rooms(groups) will be encapsulated as a Room.</p>
<p><code>Room</code> is <code>Sayable</code>,
<a href="https://github.com/Chatie/wechaty/blob/master/examples/room-bot.ts">Examples/Room-Bot</a></p>
</dd>
</dl>

## Typedefs

<dl>
<dt>[WechatyEventName](#WechatyEventName)</dt>
<dd><p>Wechaty Class Event Type</p>
</dd>
<dt>[WechatyEventFunction](#WechatyEventFunction)</dt>
<dd><p>Wechaty Class Event Function</p>
</dd>
<dt>[ContactQueryFilter](#ContactQueryFilter)</dt>
<dd><p>The way to search Contact</p>
</dd>
<dt>[RoomEventName](#RoomEventName)</dt>
<dd><p>Room Class Event Type</p>
</dd>
<dt>[RoomEventFunction](#RoomEventFunction)</dt>
<dd><p>Room Class Event Function</p>
</dd>
<dt>[MemberQueryFilter](#MemberQueryFilter)</dt>
<dd><p>The way to search member by Room.member()</p>
</dd>
</dl>

<a name="Wechaty"></a>

## Wechaty
Main bot class.

[The World's Shortest ChatBot Code: 6 lines of JavaScript](#wechatyinstance)

[Wechaty Starter Project](https://github.com/lijiarui/wechaty-getting-started)

**Kind**: global class  

* [Wechaty](#Wechaty)
    * _instance_
        * [.Contact](#Wechaty+Contact)
            * [.wechaty](#Wechaty+Contact.wechaty)
            * [.puppet](#Wechaty+Contact.puppet)
        * [.version([forceNpm])](#Wechaty+version) ⇒ <code>string</code>
        * [.on(event, listener)](#Wechaty+on) ⇒ [<code>Wechaty</code>](#Wechaty)
        * [.start()](#Wechaty+start) ⇒ <code>Promise.&lt;void&gt;</code>
        * [.stop()](#Wechaty+stop) ⇒ <code>Promise.&lt;void&gt;</code>
        * [.logout()](#Wechaty+logout) ⇒ <code>Promise.&lt;void&gt;</code>
        * [.logonoff()](#Wechaty+logonoff) ⇒ <code>boolean</code>
        * ~~[.self()](#Wechaty+self)~~
        * [.userSelf()](#Wechaty+userSelf) ⇒ [<code>Contact</code>](#Contact)
        * [.say(textOrContactOrFile)](#Wechaty+say) ⇒ <code>Promise.&lt;boolean&gt;</code>
    * _static_
        * [.instance()](#Wechaty.instance)

<a name="Wechaty+Contact"></a>

### wechaty.Contact
Clone Classes for this bot and attach the `puppet` to the Class

  https://stackoverflow.com/questions/36886082/abstract-constructor-type-in-typescript
  https://github.com/Microsoft/TypeScript/issues/5843#issuecomment-290972055
  https://github.com/Microsoft/TypeScript/issues/19197

**Kind**: instance property of [<code>Wechaty</code>](#Wechaty)  

* [.Contact](#Wechaty+Contact)
    * [.wechaty](#Wechaty+Contact.wechaty)
    * [.puppet](#Wechaty+Contact.puppet)

<a name="Wechaty+Contact.wechaty"></a>

#### Contact.wechaty
1. Set Wechaty

**Kind**: static property of [<code>Contact</code>](#Wechaty+Contact)  
<a name="Wechaty+Contact.puppet"></a>

#### Contact.puppet
2. Set Puppet

**Kind**: static property of [<code>Contact</code>](#Wechaty+Contact)  
<a name="Wechaty+version"></a>

### wechaty.version([forceNpm]) ⇒ <code>string</code>
Return version of Wechaty

**Kind**: instance method of [<code>Wechaty</code>](#Wechaty)  
**Returns**: <code>string</code> - - the version number  

| Param | Type | Default | Description |
| --- | --- | --- | --- |
| [forceNpm] | <code>boolean</code> | <code>false</code> | if set to true, will only return the version in package.json.                                      otherwise will return git commit hash if .git exists. |

**Example**  
```js
console.log(Wechaty.instance().version())       // return '#git[af39df]'
console.log(Wechaty.instance().version(true))   // return '0.7.9'
```
<a name="Wechaty+on"></a>

### wechaty.on(event, listener) ⇒ [<code>Wechaty</code>](#Wechaty)
**Kind**: instance method of [<code>Wechaty</code>](#Wechaty)  
**Returns**: [<code>Wechaty</code>](#Wechaty) - - this for chain

More Example Gist: [Examples/Friend-Bot](https://github.com/Chatie/wechaty/blob/master/examples/friend-bot.ts)  

| Param | Type | Description |
| --- | --- | --- |
| event | [<code>WechatyEventName</code>](#WechatyEventName) | Emit WechatyEvent |
| listener | [<code>WechatyEventFunction</code>](#WechatyEventFunction) | Depends on the WechatyEvent |

**Example** *(Event:scan )*  
```js
wechaty.on('scan', (url: string, code: number) => {
  console.log(`[${code}] Scan ${url} to login.` )
})
```
**Example** *(Event:login )*  
```js
bot.on('login', (user: ContactSelf) => {
  console.log(`user ${user} login`)
})
```
**Example** *(Event:logout )*  
```js
bot.on('logout', (user: ContactSelf) => {
  console.log(`user ${user} logout`)
})
```
**Example** *(Event:message )*  
```js
wechaty.on('message', (message: Message) => {
  console.log(`message ${message} received`)
})
```
**Example** *(Event:friendship )*  
```js
bot.on('friendship', (friendship: Friendship) => {
  if(friendship.type() === Friendship.Type.RECEIVE){ // 1. receive new friendship request from new contact
    const contact = friendship.contact()
    let result = await friendship.accept()
      if(result){
        console.log(`Request from ${contact.name()} is accept succesfully!`)
      } else{
        console.log(`Request from ${contact.name()} failed to accept!`)
      }
	  } else if (friendship.type() === Friendship.Type.CONFIRM) { // 2. confirm friendship
      console.log(`new friendship confirmed with ${contact.name()}`)
   }
 })
```
**Example** *(Event:room-join )*  
```js
bot.on('room-join', (room: Room, inviteeList: Contact[], inviter: Contact) => {
  const nameList = inviteeList.map(c => c.name()).join(',')
  console.log(`Room ${room.topic()} got new member ${nameList}, invited by ${inviter}`)
})
```
**Example** *(Event:room-leave )*  
```js
bot.on('room-leave', (room: Room, leaverList: Contact[]) => {
  const nameList = leaverList.map(c => c.name()).join(',')
  console.log(`Room ${room.topic()} lost member ${nameList}`)
})
```
**Example** *(Event:room-topic )*  
```js
bot.on('room-topic', (room: Room, topic: string, oldTopic: string, changer: Contact) => {
  console.log(`Room ${room.topic()} topic changed from ${oldTopic} to ${topic} by ${changer.name()}`)
})
```
<a name="Wechaty+start"></a>

### wechaty.start() ⇒ <code>Promise.&lt;void&gt;</code>
Start the bot, return Promise.

**Kind**: instance method of [<code>Wechaty</code>](#Wechaty)  
**Example**  
```js
await bot.start()
// do other stuff with bot here
```
<a name="Wechaty+stop"></a>

### wechaty.stop() ⇒ <code>Promise.&lt;void&gt;</code>
Stop the bot

**Kind**: instance method of [<code>Wechaty</code>](#Wechaty)  
**Example**  
```js
await bot.stop()
```
<a name="Wechaty+logout"></a>

### wechaty.logout() ⇒ <code>Promise.&lt;void&gt;</code>
Logout the bot

**Kind**: instance method of [<code>Wechaty</code>](#Wechaty)  
**Example**  
```js
await bot.logout()
```
<a name="Wechaty+logonoff"></a>

### wechaty.logonoff() ⇒ <code>boolean</code>
Get the logon / logoff state

**Kind**: instance method of [<code>Wechaty</code>](#Wechaty)  
**Example**  
```js
if (bot.logonoff()) {
  console.log('Bot logined')
} else {
  console.log('Bot not logined')
}
```
<a name="Wechaty+self"></a>

### ~~wechaty.self()~~
***Deprecated***

**Kind**: instance method of [<code>Wechaty</code>](#Wechaty)  
<a name="Wechaty+userSelf"></a>

### wechaty.userSelf() ⇒ [<code>Contact</code>](#Contact)
Get current user

**Kind**: instance method of [<code>Wechaty</code>](#Wechaty)  
**Example**  
```js
const contact = bot.userSelf()
console.log(`Bot is ${contact.name()}`)
```
<a name="Wechaty+say"></a>

### wechaty.say(textOrContactOrFile) ⇒ <code>Promise.&lt;boolean&gt;</code>
Send message to userSelf

**Kind**: instance method of [<code>Wechaty</code>](#Wechaty)  

| Param | Type |
| --- | --- |
| textOrContactOrFile | <code>string</code> | 

<a name="Wechaty.instance"></a>

### Wechaty.instance()
get the singleton instance of Wechaty

**Kind**: static method of [<code>Wechaty</code>](#Wechaty)  
**Example** *(The World&#x27;s Shortest ChatBot Code: 6 lines of JavaScript)*  
```js
const { Wechaty } = require('wechaty')

Wechaty.instance() // Singleton
.on('scan', (url, code) => console.log(`Scan QR Code to login: ${code}\n${url}`))
.on('login',       user => console.log(`User ${user} logined`))
.on('message',  message => console.log(`Message: ${message}`))
.init()
```
<a name="Contact"></a>

## Contact
All wechat contacts(friend) will be encapsulated as a Contact.

`Contact` is `Sayable`,
[Examples/Contact-Bot](https://github.com/Chatie/wechaty/blob/master/examples/contact-bot.ts)

**Kind**: global class  

* [Contact](#Contact)
    * _instance_
        * [.payload](#Contact+payload)
        * [.name()](#Contact+name) ⇒ <code>string</code>
        * [.alias(newAlias)](#Contact+alias) ⇒ <code>string</code> \| <code>null</code> \| <code>Promise.&lt;boolean&gt;</code>
        * ~~[.stranger()](#Contact+stranger) ⇒ <code>boolean</code> \| <code>null</code>~~
        * [.friend()](#Contact+friend) ⇒ <code>boolean</code> \| <code>null</code>
        * ~~[.official()](#Contact+official) ⇒ <code>boolean</code> \| <code>null</code>~~
        * ~~[.personal()](#Contact+personal) ⇒ <code>boolean</code>~~
        * [.type()](#Contact+type) ⇒
        * [.star()](#Contact+star) ⇒ <code>boolean</code> \| <code>null</code>
        * [.gender()](#Contact+gender) ⇒ <code>ContactGender.Male(2)</code> \| <code>Gender.Female(1)</code> \| <code>Gender.Unknown(0)</code>
        * [.province()](#Contact+province) ⇒ <code>string</code> \| <code>null</code>
        * [.city()](#Contact+city) ⇒ <code>string</code> \| <code>null</code>
        * [.avatar()](#Contact+avatar) ⇒ <code>Promise.&lt;FileBox&gt;</code>
        * ~~[.refresh()](#Contact+refresh) ⇒ <code>Promise.&lt;this&gt;</code>~~
        * [.sync()](#Contact+sync) ⇒ <code>Promise.&lt;this&gt;</code>
        * [.self()](#Contact+self) ⇒ <code>boolean</code>
    * _static_
        * [.find(query)](#Contact.find) ⇒ <code>Promise.&lt;(Contact\|null)&gt;</code>
        * [.findAll([queryArg])](#Contact.findAll) ⇒ <code>Promise.&lt;Array.&lt;Contact&gt;&gt;</code>

<a name="Contact+payload"></a>

### contact.payload
Instance properties

**Kind**: instance property of [<code>Contact</code>](#Contact)  
<a name="Contact+name"></a>

### contact.name() ⇒ <code>string</code>
Get the name from a contact

**Kind**: instance method of [<code>Contact</code>](#Contact)  
**Example**  
```js
const name = contact.name()
```
<a name="Contact+alias"></a>

### contact.alias(newAlias) ⇒ <code>string</code> \| <code>null</code> \| <code>Promise.&lt;boolean&gt;</code>
GET / SET / DELETE the alias for a contact

Tests show it will failed if set alias too frequently(60 times in one minute).

**Kind**: instance method of [<code>Contact</code>](#Contact)  

| Param | Type |
| --- | --- |
| newAlias | <code>none</code> \| <code>string</code> \| <code>null</code> | 

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

### ~~contact.stranger() ⇒ <code>boolean</code> \| <code>null</code>~~
***Deprecated***

Check if contact is stranger

**Kind**: instance method of [<code>Contact</code>](#Contact)  
**Returns**: <code>boolean</code> \| <code>null</code> - - True for not friend of the bot, False for friend of the bot, null for unknown.  
**Example**  
```js
const isStranger = contact.stranger()
```
<a name="Contact+friend"></a>

### contact.friend() ⇒ <code>boolean</code> \| <code>null</code>
Check if contact is friend

**Kind**: instance method of [<code>Contact</code>](#Contact)  
**Returns**: <code>boolean</code> \| <code>null</code> - - True for friend of the bot, False for not friend of the bot, null for unknown.  
**Example**  
```js
const isFriend = contact.friend()
```
<a name="Contact+official"></a>

### ~~contact.official() ⇒ <code>boolean</code> \| <code>null</code>~~
***Deprecated***

Check if it's a offical account

**Kind**: instance method of [<code>Contact</code>](#Contact)  
**Returns**: <code>boolean</code> \| <code>null</code> - - True for official account, Flase for contact is not a official account, null for unknown  
**See**

- [webwxApp.js#L324](https://github.com/Chatie/webwx-app-tracker/blob/7c59d35c6ea0cff38426a4c5c912a086c4c512b2/formatted/webwxApp.js#L3243)
- [Urinx/WeixinBot/README](https://github.com/Urinx/WeixinBot/blob/master/README.md)

**Example**  
```js
const isOfficial = contact.official()
```
<a name="Contact+personal"></a>

### ~~contact.personal() ⇒ <code>boolean</code>~~
***Deprecated***

Check if it's a personal account

**Kind**: instance method of [<code>Contact</code>](#Contact)  
**Returns**: <code>boolean</code> - - True for personal account, Flase for contact is not a personal account  
**Example**  
```js
const isPersonal = contact.personal()
```
<a name="Contact+type"></a>

### contact.type() ⇒
Return the type of the Contact

**Kind**: instance method of [<code>Contact</code>](#Contact)  
**Returns**: ContactType - Contact.Type.PERSONAL for personal account, Contact.Type.OFFICIAL for official account  
**Example**  
```js
const isOfficial = contact.type() === Contact.Type.OFFICIAL
```
<a name="Contact+star"></a>

### contact.star() ⇒ <code>boolean</code> \| <code>null</code>
Check if the contact is star contact.

**Kind**: instance method of [<code>Contact</code>](#Contact)  
**Returns**: <code>boolean</code> \| <code>null</code> - - True for star friend, False for no star friend.  
**Example**  
```js
const isStar = contact.star()
```
<a name="Contact+gender"></a>

### contact.gender() ⇒ <code>ContactGender.Male(2)</code> \| <code>Gender.Female(1)</code> \| <code>Gender.Unknown(0)</code>
Contact gender

**Kind**: instance method of [<code>Contact</code>](#Contact)  
**Example**  
```js
const gender = contact.gender()
```
<a name="Contact+province"></a>

### contact.province() ⇒ <code>string</code> \| <code>null</code>
Get the region 'province' from a contact

**Kind**: instance method of [<code>Contact</code>](#Contact)  
**Example**  
```js
const province = contact.province()
```
<a name="Contact+city"></a>

### contact.city() ⇒ <code>string</code> \| <code>null</code>
Get the region 'city' from a contact

**Kind**: instance method of [<code>Contact</code>](#Contact)  
**Example**  
```js
const city = contact.city()
```
<a name="Contact+avatar"></a>

### contact.avatar() ⇒ <code>Promise.&lt;FileBox&gt;</code>
Get avatar picture file stream

**Kind**: instance method of [<code>Contact</code>](#Contact)  
**Example**  
```js
const avatarFileName = contact.name() + `.jpg`
const fileBox = await contact.avatar()
const avatarWriteStream = createWriteStream(avatarFileName)
fileBox.pipe(avatarWriteStream)
log.info('Bot', 'Contact: %s: %s with avatar file: %s', contact.weixin(), contact.name(), avatarFileName)
```
<a name="Contact+refresh"></a>

### ~~contact.refresh() ⇒ <code>Promise.&lt;this&gt;</code>~~
***Deprecated***

Force reload(re-ready()) data for Contact

**Kind**: instance method of [<code>Contact</code>](#Contact)  
**Example**  
```js
await contact.refresh()
```
<a name="Contact+sync"></a>

### contact.sync() ⇒ <code>Promise.&lt;this&gt;</code>
sycc data for Contact

**Kind**: instance method of [<code>Contact</code>](#Contact)  
**Example**  
```js
await contact.sync()
```
<a name="Contact+self"></a>

### contact.self() ⇒ <code>boolean</code>
Check if contact is self

**Kind**: instance method of [<code>Contact</code>](#Contact)  
**Returns**: <code>boolean</code> - True for contact is self, False for contact is others  
**Example**  
```js
const isSelf = contact.self()
```
<a name="Contact.find"></a>

### Contact.find(query) ⇒ <code>Promise.&lt;(Contact\|null)&gt;</code>
Try to find a contact by filter: {name: string | RegExp} / {alias: string | RegExp}

Find contact by name or alias, if the result more than one, return the first one.

**Kind**: static method of [<code>Contact</code>](#Contact)  
**Returns**: <code>Promise.&lt;(Contact\|null)&gt;</code> - If can find the contact, return Contact, or return null  

| Param | Type |
| --- | --- |
| query | [<code>ContactQueryFilter</code>](#ContactQueryFilter) | 

**Example**  
```js
const contactFindByName = await Contact.find({ name:"ruirui"} )
const contactFindByAlias = await Contact.find({ alias:"lijiarui"} )
```
<a name="Contact.findAll"></a>

### Contact.findAll([queryArg]) ⇒ <code>Promise.&lt;Array.&lt;Contact&gt;&gt;</code>
Find contact by `name` or `alias`

If use Contact.findAll() get the contact list of the bot.

#### definition
- `name`   the name-string set by user-self, should be called name
- `alias`  the name-string set by bot for others, should be called alias

**Kind**: static method of [<code>Contact</code>](#Contact)  

| Param | Type |
| --- | --- |
| [queryArg] | [<code>ContactQueryFilter</code>](#ContactQueryFilter) | 

**Example**  
```js
const contactList = await Contact.findAll()                    // get the contact list of the bot
const contactList = await Contact.findAll({name: 'ruirui'})    // find allof the contacts whose name is 'ruirui'
const contactList = await Contact.findAll({alias: 'lijiarui'}) // find all of the contacts whose alias is 'lijiarui'
```
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

<a name="Message"></a>

## Message
All wechat messages will be encapsulated as a Message.

`Message` is `Sayable`,
[Examples/Ding-Dong-Bot](https://github.com/Chatie/wechaty/blob/master/examples/ding-dong-bot.ts)

**Kind**: global class  

* [Message](#Message)
    * _instance_
        * [.payload](#Message+payload)
        * [.from()](#Message+from) ⇒ [<code>Contact</code>](#Contact)
        * [.to()](#Message+to) ⇒ [<code>Contact</code>](#Contact) \| <code>null</code>
        * [.room()](#Message+room) ⇒ [<code>Room</code>](#Room) \| <code>null</code>
        * ~~[.content()](#Message+content)~~
        * [.text()](#Message+text) ⇒ <code>string</code>
        * [.say(textOrContactOrFile, [mention])](#Message+say) ⇒ <code>Promise.&lt;void&gt;</code>
        * ~~[.file()](#Message+file)~~
        * [.type()](#Message+type) ⇒ <code>WebMsgType</code>
        * [.self()](#Message+self) ⇒ <code>boolean</code>
        * [.mention()](#Message+mention) ⇒ [<code>Array.&lt;Contact&gt;</code>](#Contact)
        * [.mentioned()](#Message+mentioned)
        * [.forward(to)](#Message+forward) ⇒ <code>Promise.&lt;void&gt;</code>
        * [.age()](#Message+age)
    * _static_
        * [.Type](#Message.Type)
        * [.find()](#Message.find)
        * [.findAll()](#Message.findAll)
        * [.create()](#Message.create)

<a name="Message+payload"></a>

### message.payload
Instance Properties

**Kind**: instance property of [<code>Message</code>](#Message)  
<a name="Message+from"></a>

### message.from() ⇒ [<code>Contact</code>](#Contact)
Get the sender from a message.

**Kind**: instance method of [<code>Message</code>](#Message)  
<a name="Message+to"></a>

### message.to() ⇒ [<code>Contact</code>](#Contact) \| <code>null</code>
Get the destination of the message
Message.to() will return null if a message is in a room, use Message.room() to get the room.

**Kind**: instance method of [<code>Message</code>](#Message)  
<a name="Message+room"></a>

### message.room() ⇒ [<code>Room</code>](#Room) \| <code>null</code>
Get the room from the message.
If the message is not in a room, then will return `null`

**Kind**: instance method of [<code>Message</code>](#Message)  
<a name="Message+content"></a>

### ~~message.content()~~
***Deprecated***

**Kind**: instance method of [<code>Message</code>](#Message)  
<a name="Message+text"></a>

### message.text() ⇒ <code>string</code>
Get the text content of the message

**Kind**: instance method of [<code>Message</code>](#Message)  
<a name="Message+say"></a>

### message.say(textOrContactOrFile, [mention]) ⇒ <code>Promise.&lt;void&gt;</code>
Reply a Text or Media File message to the sender.

**Kind**: instance method of [<code>Message</code>](#Message)  
**See**: [Examples/ding-dong-bot](https://github.com/Chatie/wechaty/blob/master/examples/ding-dong-bot.ts)  

| Param | Type |
| --- | --- |
| textOrContactOrFile | <code>string</code> \| <code>FileBox</code> | 
| [mention] | [<code>Contact</code>](#Contact) \| [<code>Array.&lt;Contact&gt;</code>](#Contact) | 

**Example**  
```js
const bot = new Wechaty()
bot
.on('message', async m => {
  if (/^ding$/i.test(m.text())) {
    await m.say('hello world')
    console.log('Bot REPLY: hello world')
    await m.say(new bot.Message(__dirname + '/wechaty.png'))
    console.log('Bot REPLY: Image')
  }
})
```
<a name="Message+file"></a>

### ~~message.file()~~
***Deprecated***

**Kind**: instance method of [<code>Message</code>](#Message)  
<a name="Message+type"></a>

### message.type() ⇒ <code>WebMsgType</code>
Get the type from the message.

If type is equal to `MsgType.RECALLED`, [Message#id](Message#id) is the msgId of the recalled message.

**Kind**: instance method of [<code>Message</code>](#Message)  
**See**: [MsgType](MsgType)  
<a name="Message+self"></a>

### message.self() ⇒ <code>boolean</code>
Check if a message is sent by self.

**Kind**: instance method of [<code>Message</code>](#Message)  
**Returns**: <code>boolean</code> - - Return `true` for send from self, `false` for send from others.  
**Example**  
```js
if (message.self()) {
 console.log('this message is sent by myself!')
}
```
<a name="Message+mention"></a>

### message.mention() ⇒ [<code>Array.&lt;Contact&gt;</code>](#Contact)
Get message mentioned contactList.

Message event table as follows

|                                                                            | Web  |  Mac PC Client | iOS Mobile |  android Mobile |
| :---                                                                       | :--: |     :----:     |   :---:    |     :---:       |
| [You were mentioned] tip ([有人@我]的提示)                                   |  ✘   |        √       |     √      |       √         |
| Identify magic code (8197) by copy & paste in mobile                       |  ✘   |        √       |     √      |       ✘         |
| Identify magic code (8197) by programming                                  |  ✘   |        ✘       |     ✘      |       ✘         |
| Identify two contacts with the same roomAlias by [You were  mentioned] tip |  ✘   |        ✘       |     √      |       √         |

**Kind**: instance method of [<code>Message</code>](#Message)  
**Returns**: [<code>Array.&lt;Contact&gt;</code>](#Contact) - - Return message mentioned contactList  
**Example**  
```js
const contactList = message.mentioned()
console.log(contactList)
```
<a name="Message+mentioned"></a>

### message.mentioned()
**Kind**: instance method of [<code>Message</code>](#Message)  
**Deprecated:**: use mention() instead  
<a name="Message+forward"></a>

### message.forward(to) ⇒ <code>Promise.&lt;void&gt;</code>
Forward the received message.

**Kind**: instance method of [<code>Message</code>](#Message)  

| Param | Type | Description |
| --- | --- | --- |
| to | <code>Sayable</code> \| <code>Array.&lt;Sayable&gt;</code> | Room or Contact The recipient of the message, the room, or the contact |

<a name="Message+age"></a>

### message.age()
Message Age:
 in seconds.

**Kind**: instance method of [<code>Message</code>](#Message)  
<a name="Message.Type"></a>

### Message.Type
Static Properties

**Kind**: static property of [<code>Message</code>](#Message)  
<a name="Message.find"></a>

### Message.find()
**Kind**: static method of [<code>Message</code>](#Message)  
**Todo**

- [ ] add function

<a name="Message.findAll"></a>

### Message.findAll()
**Kind**: static method of [<code>Message</code>](#Message)  
**Todo**

- [ ] add function

<a name="Message.create"></a>

### Message.create()
Create a Mobile Terminated Message

"mobile originated" or "mobile terminated"
https://www.tatango.com/resources/video-lessons/video-mo-mt-sms-messaging/

**Kind**: static method of [<code>Message</code>](#Message)  
<a name="Room"></a>

## Room
All wechat rooms(groups) will be encapsulated as a Room.

`Room` is `Sayable`,
[Examples/Room-Bot](https://github.com/Chatie/wechaty/blob/master/examples/room-bot.ts)

**Kind**: global class  

* [Room](#Room)
    * _instance_
        * [.say(textOrContactOrFile, [replyTo])](#Room+say) ⇒ <code>Promise.&lt;boolean&gt;</code>
        * [.on(event, listener)](#Room+on) ⇒ <code>this</code>
        * [.add(contact)](#Room+add) ⇒ <code>Promise.&lt;number&gt;</code>
        * [.del(contact)](#Room+del) ⇒ <code>Promise.&lt;number&gt;</code>
        * [.topic([newTopic])](#Room+topic) ⇒ <code>Promise.&lt;(string\|void)&gt;</code>
        * [.qrcode()](#Room+qrcode)
        * [.alias(contact)](#Room+alias) ⇒ <code>string</code> \| <code>null</code>
        * [.roomAlias(contact)](#Room+roomAlias) ⇒ <code>string</code> \| <code>null</code>
        * [.has(contact)](#Room+has) ⇒ <code>boolean</code>
        * [.memberAll(query)](#Room+memberAll) ⇒ [<code>Array.&lt;Contact&gt;</code>](#Contact)
        * [.member(queryArg)](#Room+member) ⇒ [<code>Contact</code>](#Contact) \| <code>null</code>
        * [.memberList()](#Room+memberList) ⇒ [<code>Array.&lt;Contact&gt;</code>](#Contact)
        * [.sync()](#Room+sync) ⇒ <code>Promise.&lt;void&gt;</code>
    * _static_
        * [.create(contactList, [topic])](#Room.create) ⇒ [<code>Promise.&lt;Room&gt;</code>](#Room)
        * [.findAll([query])](#Room.findAll) ⇒ <code>Promise.&lt;Array.&lt;Room&gt;&gt;</code>
        * [.find(query)](#Room.find) ⇒ <code>Promise.&lt;(Room\|null)&gt;</code>

<a name="Room+say"></a>

### room.say(textOrContactOrFile, [replyTo]) ⇒ <code>Promise.&lt;boolean&gt;</code>
Send message inside Room, if set [replyTo], wechaty will mention the contact as well.

**Kind**: instance method of [<code>Room</code>](#Room)  
**Returns**: <code>Promise.&lt;boolean&gt;</code> - If bot send message successfully, it will return true. If the bot failed to send for blocking or any other reason, it will return false  

| Param | Type | Description |
| --- | --- | --- |
| textOrContactOrFile | <code>string</code> \| <code>MediaMessage</code> | Send `text` or `media file` inside Room. |
| [replyTo] | [<code>Contact</code>](#Contact) \| [<code>Array.&lt;Contact&gt;</code>](#Contact) | Optional parameter, send content inside Room, and mention @replyTo contact or contactList. |

**Example** *(Send text inside Room)*  
```js
const room = await Room.find({name: 'wechaty'})        // change 'wechaty' to any of your room in wechat
await room.say('Hello world!')
```
**Example** *(Send media file inside Room)*  
```js
const room = await Room.find({name: 'wechaty'})        // change 'wechaty' to any of your room in wechat
await room.say(new MediaMessage('/test.jpg'))          // put the filePath you want to send here
```
**Example** *(Send text inside Room, and mention @replyTo contact)*  
```js
const contact = await Contact.find({name: 'lijiarui'}) // change 'lijiarui' to any of the room member
const room = await Room.find({name: 'wechaty'})        // change 'wechaty' to any of your room in wechat
await room.say('Hello world!', contact)
```
<a name="Room+on"></a>

### room.on(event, listener) ⇒ <code>this</code>
**Kind**: instance method of [<code>Room</code>](#Room)  
**Returns**: <code>this</code> - - this for chain  

| Param | Type | Description |
| --- | --- | --- |
| event | [<code>RoomEventName</code>](#RoomEventName) | Emit WechatyEvent |
| listener | [<code>RoomEventFunction</code>](#RoomEventFunction) | Depends on the WechatyEvent |

**Example** *(Event:join )*  
```js
const room = await Room.find({topic: 'event-room'}) // change `event-room` to any room topic in your wechat
if (room) {
  room.on('join', (room: Room, inviteeList: Contact[], inviter: Contact) => {
    const nameList = inviteeList.map(c => c.name()).join(',')
    console.log(`Room ${room.topic()} got new member ${nameList}, invited by ${inviter}`)
  })
}
```
**Example** *(Event:leave )*  
```js
const room = await Room.find({topic: 'event-room'}) // change `event-room` to any room topic in your wechat
if (room) {
  room.on('leave', (room: Room, leaverList: Contact[]) => {
    const nameList = leaverList.map(c => c.name()).join(',')
    console.log(`Room ${room.topic()} lost member ${nameList}`)
  })
}
```
**Example** *(Event:topic )*  
```js
const room = await Room.find({topic: 'event-room'}) // change `event-room` to any room topic in your wechat
if (room) {
  room.on('topic', (room: Room, topic: string, oldTopic: string, changer: Contact) => {
    console.log(`Room ${room.topic()} topic changed from ${oldTopic} to ${topic} by ${changer.name()}`)
  })
}
```
<a name="Room+add"></a>

### room.add(contact) ⇒ <code>Promise.&lt;number&gt;</code>
Add contact in a room

**Kind**: instance method of [<code>Room</code>](#Room)  

| Param | Type |
| --- | --- |
| contact | [<code>Contact</code>](#Contact) | 

**Example**  
```js
const contact = await Contact.find({name: 'lijiarui'}) // change 'lijiarui' to any contact in your wechat
const room = await Room.find({topic: 'wechat'})        // change 'wechat' to any room topic in your wechat
if (room) {
  const result = await room.add(contact)
  if (result) {
    console.log(`add ${contact.name()} to ${room.topic()} successfully! `)
  } else{
    console.log(`failed to add ${contact.name()} to ${room.topic()}! `)
  }
}
```
<a name="Room+del"></a>

### room.del(contact) ⇒ <code>Promise.&lt;number&gt;</code>
Delete a contact from the room
It works only when the bot is the owner of the room

**Kind**: instance method of [<code>Room</code>](#Room)  

| Param | Type |
| --- | --- |
| contact | [<code>Contact</code>](#Contact) | 

**Example**  
```js
const room = await Room.find({topic: 'wechat'})          // change 'wechat' to any room topic in your wechat
const contact = await Contact.find({name: 'lijiarui'})   // change 'lijiarui' to any room member in the room you just set
if (room) {
  const result = await room.del(contact)
  if (result) {
    console.log(`remove ${contact.name()} from ${room.topic()} successfully! `)
  } else{
    console.log(`failed to remove ${contact.name()} from ${room.topic()}! `)
  }
}
```
<a name="Room+topic"></a>

### room.topic([newTopic]) ⇒ <code>Promise.&lt;(string\|void)&gt;</code>
SET/GET topic from the room

**Kind**: instance method of [<code>Room</code>](#Room)  

| Param | Type | Description |
| --- | --- | --- |
| [newTopic] | <code>string</code> | If set this para, it will change room topic. |

**Example** *(When you say anything in a room, it will get room topic. )*  
```js
const bot = Wechaty.instance()
bot
.on('message', async m => {
  const room = m.room()
  if (room) {
    const topic = await room.topic()
    console.log(`room topic is : ${topic}`)
  }
})
```
**Example** *(When you say anything in a room, it will change room topic. )*  
```js
const bot = Wechaty.instance()
bot
.on('message', async m => {
  const room = m.room()
  if (room) {
    const oldTopic = room.topic()
    room.topic('change topic to wechaty!')
    console.log(`room topic change from ${oldTopic} to ${room.topic()}`)
  }
})
```
<a name="Room+qrcode"></a>

### room.qrcode()
Room QR Code

**Kind**: instance method of [<code>Room</code>](#Room)  
<a name="Room+alias"></a>

### room.alias(contact) ⇒ <code>string</code> \| <code>null</code>
Return contact's roomAlias in the room, the same as roomAlias

**Kind**: instance method of [<code>Room</code>](#Room)  
**Returns**: <code>string</code> \| <code>null</code> - - If a contact has an alias in room, return string, otherwise return null  

| Param | Type |
| --- | --- |
| contact | [<code>Contact</code>](#Contact) | 

**Example**  
```js
const bot = Wechaty.instance()
bot
.on('message', async m => {
  const room = m.room()
  const contact = m.from()
  if (room) {
    const alias = room.alias(contact)
    console.log(`${contact.name()} alias is ${alias}`)
  }
})
```
<a name="Room+roomAlias"></a>

### room.roomAlias(contact) ⇒ <code>string</code> \| <code>null</code>
Same as function alias

**Kind**: instance method of [<code>Room</code>](#Room)  

| Param | Type |
| --- | --- |
| contact | [<code>Contact</code>](#Contact) | 

<a name="Room+has"></a>

### room.has(contact) ⇒ <code>boolean</code>
Check if the room has member `contact`, the return is a Promise and must be `await`-ed

**Kind**: instance method of [<code>Room</code>](#Room)  
**Returns**: <code>boolean</code> - Return `true` if has contact, else return `false`.  

| Param | Type |
| --- | --- |
| contact | [<code>Contact</code>](#Contact) | 

**Example** *(Check whether &#x27;lijiarui&#x27; is in the room &#x27;wechaty&#x27;)*  
```js
const contact = await Contact.find({name: 'lijiarui'})   // change 'lijiarui' to any of contact in your wechat
const room = await Room.find({topic: 'wechaty'})         // change 'wechaty' to any of the room in your wechat
if (contact && room) {
  if (await room.has(contact)) {
    console.log(`${contact.name()} is in the room ${room.topic()}!`)
  } else {
    console.log(`${contact.name()} is not in the room ${room.topic()} !`)
  }
}
```
<a name="Room+memberAll"></a>

### room.memberAll(query) ⇒ [<code>Array.&lt;Contact&gt;</code>](#Contact)
Find all contacts in a room

#### definition
- `name`                 the name-string set by user-self, should be called name, equal to `Contact.name()`
- `roomAlias`            the name-string set by user-self in the room, should be called roomAlias
- `contactAlias`         the name-string set by bot for others, should be called alias, equal to `Contact.alias()`

**Kind**: instance method of [<code>Room</code>](#Room)  

| Param | Type | Description |
| --- | --- | --- |
| query | <code>RoomMemberQueryFilter</code> \| <code>string</code> | When use memberAll(name:string), return all matched members, including name, roomAlias, contactAlias |

<a name="Room+member"></a>

### room.member(queryArg) ⇒ [<code>Contact</code>](#Contact) \| <code>null</code>
Find all contacts in a room, if get many, return the first one.

**Kind**: instance method of [<code>Room</code>](#Room)  

| Param | Type | Description |
| --- | --- | --- |
| queryArg | <code>RoomMemberQueryFilter</code> \| <code>string</code> | When use member(name:string), return all matched members, including name, roomAlias, contactAlias |

**Example** *(Find member by name)*  
```js
const room = await Room.find({topic: 'wechaty'})           // change 'wechaty' to any room name in your wechat
if (room) {
  const member = room.member('lijiarui')                   // change 'lijiarui' to any room member in your wechat
  if (member) {
    console.log(`${room.topic()} got the member: ${member.name()}`)
  } else {
    console.log(`cannot get member in room: ${room.topic()}`)
  }
}
```
**Example** *(Find member by MemberQueryFilter)*  
```js
const room = await Room.find({topic: 'wechaty'})          // change 'wechaty' to any room name in your wechat
if (room) {
  const member = room.member({name: 'lijiarui'})          // change 'lijiarui' to any room member in your wechat
  if (member) {
    console.log(`${room.topic()} got the member: ${member.name()}`)
  } else {
    console.log(`cannot get member in room: ${room.topic()}`)
  }
}
```
<a name="Room+memberList"></a>

### room.memberList() ⇒ [<code>Array.&lt;Contact&gt;</code>](#Contact)
Get all room member from the room

**Kind**: instance method of [<code>Room</code>](#Room)  
<a name="Room+sync"></a>

### room.sync() ⇒ <code>Promise.&lt;void&gt;</code>
Sync data for Room

**Kind**: instance method of [<code>Room</code>](#Room)  
<a name="Room.create"></a>

### Room.create(contactList, [topic]) ⇒ [<code>Promise.&lt;Room&gt;</code>](#Room)
Create a new room.

**Kind**: static method of [<code>Room</code>](#Room)  

| Param | Type |
| --- | --- |
| contactList | [<code>Array.&lt;Contact&gt;</code>](#Contact) | 
| [topic] | <code>string</code> | 

**Example** *(Creat a room with &#x27;lijiarui&#x27; and &#x27;juxiaomi&#x27;, the room topic is &#x27;ding - created&#x27;)*  
```js
const helperContactA = await Contact.find({ name: 'lijiarui' })  // change 'lijiarui' to any contact in your wechat
const helperContactB = await Contact.find({ name: 'juxiaomi' })  // change 'juxiaomi' to any contact in your wechat
const contactList = [helperContactA, helperContactB]
console.log('Bot', 'contactList: %s', contactList.join(','))
const room = await Room.create(contactList, 'ding')
console.log('Bot', 'createDingRoom() new ding room created: %s', room)
await room.topic('ding - created')
await room.say('ding - created')
```
<a name="Room.findAll"></a>

### Room.findAll([query]) ⇒ <code>Promise.&lt;Array.&lt;Room&gt;&gt;</code>
Find room by topic, return all the matched room

**Kind**: static method of [<code>Room</code>](#Room)  

| Param | Type |
| --- | --- |
| [query] | <code>RoomQueryFilter</code> | 

**Example**  
```js
const roomList = await Room.findAll()                    // get the room list of the bot
const roomList = await Room.findAll({name: 'wechaty'})   // find all of the rooms with name 'wechaty'
```
<a name="Room.find"></a>

### Room.find(query) ⇒ <code>Promise.&lt;(Room\|null)&gt;</code>
Try to find a room by filter: {topic: string | RegExp}. If get many, return the first one.

**Kind**: static method of [<code>Room</code>](#Room)  
**Returns**: <code>Promise.&lt;(Room\|null)&gt;</code> - If can find the room, return Room, or return null  

| Param | Type |
| --- | --- |
| query | <code>RoomQueryFilter</code> | 

<a name="WechatyEventName"></a>

## WechatyEventName
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

## WechatyEventFunction
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

<a name="ContactQueryFilter"></a>

## ContactQueryFilter
The way to search Contact

**Kind**: global typedef  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| name | <code>string</code> | The name-string set by user-self, should be called name |
| alias | <code>string</code> | The name-string set by bot for others, should be called alias [More Detail](https://github.com/Chatie/wechaty/issues/365) |

<a name="RoomEventName"></a>

## RoomEventName
Room Class Event Type

**Kind**: global typedef  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| join | <code>string</code> | Emit when anyone join any room. |
| topic | <code>string</code> | Get topic event, emitted when someone change room topic. |
| leave | <code>string</code> | Emit when anyone leave the room.<br>                               If someone leaves the room by themselves, wechat will not notice other people in the room, so the bot will never get the "leave" event. |

<a name="RoomEventFunction"></a>

## RoomEventFunction
Room Class Event Function

**Kind**: global typedef  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| room-join | <code>function</code> | (this: Room, inviteeList: Contact[] , inviter: Contact)  => void |
| room-topic | <code>function</code> | (this: Room, topic: string, oldTopic: string, changer: Contact) => void |
| room-leave | <code>function</code> | (this: Room, leaver: Contact) => void |

<a name="MemberQueryFilter"></a>

## MemberQueryFilter
The way to search member by Room.member()

**Kind**: global typedef  
**Properties**

| Name | Type | Description |
| --- | --- | --- |
| name | <code>string</code> | Find the contact by wechat name in a room, equal to `Contact.name()`. |
| roomAlias | <code>string</code> | Find the contact by alias set by the bot for others in a room. |
| contactAlias | <code>string</code> | Find the contact by alias set by the contact out of a room, equal to `Contact.alias()`. [More Detail](https://github.com/Chatie/wechaty/issues/365) |

