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
