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

## 2. Docker 运行

## 3. 示例代码
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

# 如何购买

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

## RELEASELOG

## Awesome docsify

### Showcase
### Plugins
### Enterprise Usage

## Contributing List