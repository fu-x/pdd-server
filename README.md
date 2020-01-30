# pdd移动端商城项目开发-后端服务器

> 本项目是基于Vue.js+express+MySQL的全栈项目

> [前端项目地址](https://github.com/fu-x/pdd)

> [项目演示地址](http://coolxiang.top/pdd)
> 本项目为移动端项目，pc端演示请在开发者模式中调至移动设备模式
## Build Setup

``` bash
# 安装依赖
npm install

# 打开MySQL数据库相关服务
# 导入数据库`pdd`
# 启动服务器
npm start
```

## 项目构建
> **使用`Express`应用生成器**

## 第三方模块
1. **`express-session`**: 使用`session`存储登录用户ID判断用户是否已经登陆，以及存储图形验证码信息，判断用户提交验证码是否正确。
2. **`body-parser`**: 获取用户`POST`提交的数据。
3. **`mysql`**: 连接MySQL数据库。
4. **`svg-captcha`**: 生成图形验证码。

## 配置接口
|          api           | 请求方式 |            参数                               |       说明      |
| :--------------------: | :------: | :------------------------------------------: | :-------------: |
|    /api/homecasual     |   get    |                                              |  首页轮播图数据  |
|      /api/homenav      |   get    |                                              |   首页导航数据   |
|   /api/homeshoplist    |   get    |                                              | 首页商品列表数据 |
|    /api/searchgoods    |   get    |                                              | 搜索分类列表数据 |
| /api/recommendshoplist |   get    |                                              | 推荐商品列表数据 |
|      /api/captcha      |   get    |                                              |  图形验证码数据  |
|     /api/usercode      |   get    |                     phone                    |  手机验证码数据  |
|     /api/logincode     |   post   |                  phone, code                 |  手机验证码登录  |
|     /api/loginpwd      |   post   |         username, password, captcha          |   账号密码登录   |
|      /api/islogin      |   get    |                                              | 判断是否已经登录 |
|      /api/logout       |   get    |                                              |     退出登陆    |
|      /api/alterinfo    |   post   | id, name, sex, address, birthday, signature  |   更改个人信息   |
|      /api/addcart      |   post   |goods_id, goods_name, thumb_url, price, number| 添加商品到购物车 |
|      /api/cart         |   get    |                                              |获取购物车商品数据|
|     /api/alertcart     |   post   |              {cartgoods}                     |修改购物车商品数据|