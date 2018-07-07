# WECHATY

## What is wechaty
[![Powered by Wechaty](https://img.shields.io/badge/Powered%20By-Wechaty-blue.svg)](https://github.com/chatie/wechaty)
[![中文版本](https://img.shields.io/badge/-%E4%B8%AD%E6%96%87%E7%89%88-red.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFEAAAAyCAIAAACrjaCVAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4gcHAzAxNHF8EAAAA7dJREFUaN7tmU9oXFUUxr/v3PveZF7eNDON0UYrQihYIWitVVApCCJ0KwguRKi6qiv/gIJudCcu3YqCiFtBEDfiRqVdCQoFG9GKQUksiZlMk/nz3rvnuJhUmrTWRCO8Sd5ZDMMshvnNud9533cuL87OaJYb9kWJwWIv2H+1e8y2/5iLSKl+HzHbwNJnar2J3kgw+//+n/UnC39MDzxxGa2x7ldF+E6idQH3bp8NYObSh1xyOLv1dEdS8d1SA+9Cnw2QFWQ/ycKHB2r3eJ0TF2BuTzMDkJj9z+C6cY8miRNYgO5xZii4ChgEtEGeRXRKgIANX0ZczwrcjkLC1Z8RcEZuvBcXpLiJAxHLg5XS8uzgRxHQftF4zngnUFzfkRhhA/Aox1/qJs8zpDbafTZofrObONlNn1TL/ubrFLhbDp3JDz/dcbMMiwZylJlzqT9gcbo6+bAOGka9DowReiFbeMet/dLIloK/v4YQRm2G1cGWEqRYrjxwKpca4uZy8vghnIVIUAWCC0v4S+OOLp8LC6+n8bmuJJk5z5KNcd4oSxr0oCXP5q2T6wwoItanNKr3DFxvJ7ZCZ2GQR5c+SPVz87nw6nYHQ/nc9zBL+htPLfmD3ff9IBqfOb2medcpYEbYeGuNk77faay8keBr9ZnbJFuWEXjbeib8CvSt+McXWtpLcOWUUmx1rjn/VJx/YexHLLfZ3PEMUwgBfqnt84QDhnbD+cuf5jovXp3YNXItEKaZxwHKkWTeIJ+SieMBznd+TbOsBkHyIH3qtj5/DZqKO2HNV/LaKeht1PKdgW3Jjsrovjyuy+InjfX3EkyHqZez5IQtTfSkU9+iBRsY7tXWo21/S/r7BfqF4cEYNWY1TR+Ti28384/E9czmZPH7qPlmER1zYZ7gplZzrfB+fOHj0DzCcD74WgwrlxfjdvaeBstma2Pf9FkzhQOgRA7Dkaj2Q7GliwqEhkZt7U27uEPfZ3n85/BZxe3uegvAb05JBuo1Udk2AhUIKqxk53qHu16PrbGQV4AJC2bBMg3aFNrGnsQE5VyY7IJ1MFUcjwrD2COB50zPAtFe35MQrr9YzLy7nNyhPy8f7H+bx2GMWl6bsguh3qDRFPKVCMHVj1rtrgRhz/dZ6Fblt9cm8hfl0qvdcRlOu/IWd+eOTmEGTBJtZYk3vdvIVTuRCAG0DRiBtFHdS1bMFXPFXDFXzBVzxVwxV8wVc8VcMVfMFfM/VamvTP+HUsC43/pMgPDmnanaaN0g/2slq8H5PwGImJ2/F4S+9AAAAABJRU5ErkJggg==)](/)

[Wechaty](https://github.com/Chatie/wechaty/) is a Wechat Bot SDK for Personal Account that lets you create software to extend the functionality of the Wechat, writen in Node.js with TypeScript, Support all platforms including [Linux](https://travis-ci.com/chatie/wechaty), [Windows](https://ci.appveyor.com/project/chatie/wechaty), [Darwin(OSX/Mac)](https://travis-ci.com/chatie/wechaty) and [Docker](https://app.shippable.com/github/Chatie/wechaty).

You can use wechaty building a personal wechat chatbot in just 6 lines of JavaScript code!

More Powerful Feature as follows:
- Manage Message: Automatic message reply
- Room Management: room creating/inviting/kicking off
- Friendship Management
- Intelligent dialogue Management: Just several configuration can get a task-oriented bot.
- ...

See more in [Wechaty](https://github.com/chatie/wechaty)
[![NPM Version](https://badge.fury.io/js/wechaty.svg)](https://badge.fury.io/js/wechaty)
[![Docker Pulls](https://img.shields.io/docker/pulls/zixia/wechaty.svg?maxAge=2592000)](https://hub.docker.com/r/zixia/wechaty/)
[![TypeScript](https://img.shields.io/badge/%3C%2F%3E-TypeScript-blue.svg)](https://www.typescriptlang.org/)
[![Greenkeeper badge](https://badges.greenkeeper.io/Chatie/wechaty.svg)](https://greenkeeper.io/)

## Quick Start

### 1. Clone this Repository

```sh
git clone https://github.com/lijiarui/wechaty-getting-started.git
cd wechaty-getting-started
```

### 2. Install Dependencies

```sh
npm install
```

### 3. Run the Bot
> **Notice: Wechaty requires Node.js version >= 9**

```shell
npm start

# Or use node to run bot directly
node examples/starter-bot.js
```

You are all set!

You can see the following result after running:

![demo-png](https://chatie.io/wechaty-getting-started/demo.png)

This demo will show all message on the bot.

## DEMO
![Wechaty Developers' Home](https://chatie.io/wechaty-getting-started/bot-qr-code.png)

Scan the following QR Code in WeChat with secret code _wechaty_, join our **Wechaty Developers' Home**. This group is only for developers.

## ATTENTION

Wechat account that registered after 2017 will not be able to login via Web API.  Learn more at: 
- [Can not login with error message: 当前登录环境异常。为了你的帐号安全，暂时不能登录web微信。](https://github.com/Chatie/wechaty/issues/603)
- [[RUMOR] wechat will close webapi for wechat](https://github.com/Chatie/wechaty/issues/990)
- [New account login issue](https://github.com/Chatie/wechaty/issues/872)
- [wechaty-puppet-puppeteer](https://github.com/chatie/wechaty-puppet-puppeteer)


**Solution: Wechaty support protocols other than Web API, such as pad. Learn more at <https://github.com/Chatie/wechaty/issues/1296>**

# ADVANCED

## 1. Wechaty Tutorial

<div align="center">
<a target="_blank" href="https://blog.chatie.io/getting-started-wechaty/"><img src="https://cloud.githubusercontent.com/assets/1361891/21722581/3ec957d0-d468-11e6-8888-a91c236e0ba2.jpg" border=0 width="60%"></a>
</div>

Above is a 10 minute video tutorial(a little outdated, it's running under v0.14 or older versions of Wechaty), which is a good way to start if you are new to Wechaty.

### 2. Run in Docker

[![Docker Pulls](https://img.shields.io/docker/pulls/zixia/wechaty.svg?maxAge=2592000)](https://hub.docker.com/r/zixia/wechaty/) 
[![Docker Layers](https://images.microbadger.com/badges/image/zixia/wechaty.svg)](https://microbadger.com/#/images/zixia/wechaty)

> Wechaty Docker supports both JavaScript and TypeScript. To use TypeScript just write in TypeScript and save with extension name `.ts`, no need to compile because we use `ts-node` to run it.

**2.1. Run JavaScript**

```shell
# for JavaScript
docker run -ti --rm --volume="$(pwd)":/bot zixia/wechaty mybot.js
```

**2.2. Run TypeScript**

```shell
# for TypeScript
docker run -ti --rm --volume="$(pwd)":/bot zixia/wechaty mybot.ts
```

> Learn more about Wechaty Docker at [Wiki:Docker](https://github.com/chatie/wechaty/wiki/Docker).

### 3. Run in NPM

[![NPM Version](https://badge.fury.io/js/wechaty.svg)](https://www.npmjs.com/package/wechaty)
[![Downloads](http://img.shields.io/npm/dm/wechaty.svg?style=flat-square)](https://www.npmjs.com/package/wechaty)

```shell
npm init
npm install wechaty

# create your first mybot.js file, you can copy/paste from the above "The World's Shortest ChatBot Code: 6 lines of JavaScript"
# then:
node mybot.js
```

> Learn more about Wechaty Docker at [Wiki:NPM](https://github.com/chatie/wechaty/wiki/NPM).

## 4. More Examples

You can get all of the following examples at our [Official Wechaty Examples Directory](https://github.com/Chatie/wechaty/tree/master/examples)

| File Name        | Description |
| ---                 | ---         |
| gist-bot/           | Decouple functions to different files |
| hot-reload-bot/     | Update code without restart program. @deprecated, see `hot-import-bot` instead |
| api-ai-bot.ts       | Integrate with api.ai for Intents & Entities |
| contact-bot.ts      | List All Contacts by Wechat ID & Name |
| ding-dong-bot.ts    | Auto Reply Message |
| friend-bot.ts       | Auto Accept Friend Request |
| media-file-bot.ts   | Save Media Attachment in Message to Local File |
| room-bot.ts         | Manage Chat Room |
| speech-to-text-bot.ts | Convert Voice Message to Text |
| tuling123-bot.ts    | Answer Any Question |
| hot-import-bot      | Use hot-import for updating code without restarting program |
| blessed-twins-bot/  | Multi-Instance Twins Bot Powered by Blessed |
| busy-bot.ts         | Enter Auto Response Mode when you are BUSY |

# DOCUMATAION

See: [Official API Reference](https://qhduan.github.io/wechaty-doc/#/?id=api)

# FAQ

## 1. Cannot login

### 1.1 I can not login with my Wechat account

Wechat account that registered after 2017 will not be able to login via Web API.  Learn more at <https://github.com/Chatie/wechaty/issues/872>

Solution: Wechaty support protocols other than Web API, such as pad. Learn more at <https://github.com/Chatie/wechaty/issues/1296>

## 2. What wechaty cannot do on wechat

### 2.1 Does wechaty support Red envelope, transfer money, moment?
Short answer: NO

Long answer:
- Payment: we won't support this because this related to property security
- @ someone in the room: we will support this in the future in solutions other than Web API.
- Send Contact Card: we support this in ipad solution.
- Send Share Card: we will support this in the future in solutions other than Web API.
- Send Voice: we will support this in the future in solutions other than Web API.
- Moment: we haven't decide yet whether to support this function

### 2.2 Can wechaty send url rich media message?

Not yet at this moment, will support later

Related Issue：
- [Add support for send url rich media message](https://github.com/Chatie/wechaty/issues/718)
- [can wechaty send share card msg](https://github.com/Chatie/wechaty/issues/824)


### 2.3 I don't know wechaty support for personal account of wechat official account

At this moment, wechaty only support personal account

Related Issue:
- [Using wechaty to start a wechatOA account](https://github.com/Chatie/wechaty/issues/1016)

## 3. Others

### 3.1 What is a `Puppet` in Wechaty

The term `Puppet` in Wechaty is an Abstract Class for implementing protocol plugins. The plugins are the component that helps Wechaty to control the Wechat(that's the reason we call it puppet).

The plugins are named `XXXPuppet`, like `PuppetPuppeteer` is using the chrome puppeteer to control the WeChat Web API via a chrome browser, `PuppetPadchat` is using the WebSocket protocol to connect with a Protocol Server for controlling the iPad Wechat program.

### 3.2 Wechaty & Queue
In order not blocked by wechat, we add queue in wechaty, see more: [rx-queue](https://github.com/zixia/rx-queue)

### 3.3 What's the difference between wechaty and wechat4u?

Wechaty can implement many wechat protocol plughins. The plugins are the component that helps Wechaty to control the Wechat. Wechaty provide same API in web, ipad, ios solutions. [wechat4u](https://github.com/nodeWechat/wechat4u) is [SPACELAN](https://github.com/spacelan) write as a web solution on github. Wechaty can use wechaty API call wechat 4u API

> Is this right: wechaty has All api in wechat4u, but wechat 4u don't have all api wechaty has.

No, wechaty use wechaty itself API for wechat4u. They are totally 2 different project and no one contains another.

You can edit here: [FAQ](https://github.com/Chatie/wechaty-getting-started/wiki/FAQ-EN)

# Others

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