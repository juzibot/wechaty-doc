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
