# 请求示例

## 接口说明 POST 

线上公开请求地址：http://fireflycard-api.302ai.cn/api/saveImg

### 快速入门

在网页 https://fireflycard.shushiai.com/ 上编辑好卡片，点击复制 json 粘贴作为 body 参数，如下：

![image-20241203035140654](https://mrxc-1300093961.cos.ap-shanghai.myqcloud.com/mrxc-1300093961/typoratyporaimage-20241203035140654.png)

### 具体参数说明

一些参数说明可能不太全面，有什么问题随时跟我说

| 字段名           | 类型       | 描述                                                         |
| ---------------- | ---------- | ------------------------------------------------------------ |
| `temp`           | String     | 模板别名，**往下看参数说明**                                 |
| `color`          | String     | 颜色别名，也可以直接上传图片 url 实现自定义背景图片，**往下看参数说明** |
| `hasRandomColor` | Boolean    | 随机颜色，如果传递了 `color` 这个参数不会生效                |
| `icon`           | String     | 头像链接                                                     |
| `title`          | String     | 标题                                                         |
| `date`           | String     | 时间显示，不传递默认展示当前时间                             |
| `content`        | String     | 卡片正文                                                     |
| `foreword`       | String     | 前言                                                         |
| `author`         | String     | 作者                                                         |
| `qrcodetitle`    | String     | 二维码头部                                                   |
| `qrcodetext`     | String     | 二维码描述文字                                               |
| `qrcode`         | String     | 你的二维码链接                                               |
| `qrcodeImg`      | String     | 你的二维码图片（优先级比`qrcode`高，选其一即可）             |
| `watermark`      | String     | 水印                                                         |
| `switchConfig`   | **Object** | 展示控制，**往下看参数说明**                                 |
| `width`          | String     | 宽度，最小 300                                               |
| `height`         | String     | 高度                                                         |
| `padding`        | String     | 内边距                                                       |
| `fontScale`      | String     | 文字大小比例（例如传入1.2或者1.4等）                         |
| `useFont`        | String     | 字体类型，**往下看参数说明**                                 |
| `imgScale`       | String     | 图片清晰度，默认为 2，数值越大越清晰，同时下载时间也更长     |
| `textCount`      | number     | 计数描述                                                     |
| `align`          | String     | 对齐方式：left、align、right、justify（两端对齐）            |
| `signature`      | String     | 个性签名                                                     |
| `textColor`      | String     | 文本颜色，例如：#FFFFFF                                      |
| `fonts`          | **Object** | 调整字体大小，**往下看参数说明**                             |

### switchConfig 参数说明

| 字段名          | 类型    | 描述     |
| --------------- | ------- | -------- |
| `showIcon`      | Boolean | 图标显示 |
| `showDate`      | Boolean | 日期显示 |
| `showTitle`     | Boolean | 标题显示 |
| `showContent`   | Boolean | 文本显示 |
| `showAuthor`    | Boolean | 作者显示 |
| `showTextCount` | Boolean | 计数描述 |
| `showQRCode`    | Boolean | 二维码   |
| `showForeword`  | Boolean | 前言     |

### fonts 参数说明

这个参数只有金句模板会用到，其他模板不会生效

| 字段名    | 类型   | 描述     |
| --------- | ------ | -------- |
| title     | number | 标题倍数 |
| content   | number | 标题倍数 |
| translate | number | 标题倍数 |
| author    | number | 标题倍数 |

例如：

```json
{
    "title": 2.1329337874720125,
    "content": 1.9079435748084854,
    "translate": 1.1415042034904328,
    "author": 0.801229782035275

```

### useFont 参数说明

打开网页 https://fireflycard.shushiai.com/，选择好字体类型，复制 json 查看内容找到 useFont 属性，就能看到字体参数名称

**注意：**暂不支持自定义字体

### temp 参数说明

打开网页 https://fireflycard.shushiai.com/，鼠标移动到模板上会弹出别名，就是这个

![image-20241203034119637](https://mrxc-1300093961.cos.ap-shanghai.myqcloud.com/mrxc-1300093961/typoratyporaimage-20241203034119637.png)

### color参数说明

打开网页 https://fireflycard.shushiai.com/，然后在右侧菜单栏就能看到颜色别名

也可以直接输入图片 url 实现自定义背景图片

![image-20241203034553429](https://mrxc-1300093961.cos.ap-shanghai.myqcloud.com/mrxc-1300093961/typoratyporaimage-20241203034553429.png)

### 请求示例

本地部署请求地址：http://localhost:3003/api/saveImg

线上公开请求地址：http://fireflycard-api.302ai.cn/api/saveImg

```json
{
  "title": "<h4><span style=\"background-color: transparent; font-size: 61.4285px;\">一句封神</span><br></h4><div><p>名著金句</p></div>",
  "translate": "<p>| 生存还是毁灭，这是个问题</p>",
  "author": "是魔王哒",
  "font": "SourceHanSerifCN_Bold",
  "align": "left",
  "width": 400,
  "height": 533,
  "fontScale": 1.2,
  "ratio": "3:4",
  "padding": 30,
  "switchConfig": {
    "showIcon": false,
    "showTitle": true,
    "showContent": false,
    "showTranslation": true,
    "showAuthor": true,
    "showQRCode": false,
    "showSignature": true,
    "showQuotes": true
  },
  "temp": "tempJin",
  "fonts": {
    "title": 2.1329337874720125,
    "content": 1.9079435748084854,
    "translate": 1.1415042034904328,
    "author": 0.801229782035275
  },
  "signature": "打工人，吃吃喝喝睡饱饱",
  "textColor": "rgba(0,0,0,0.8)",
  "subTempId": "tempJin",
  "borderRadius": 15,
  "color": "bg-color-11",
  "useFont": "SourceHanSerifCN_Bold",
  "useLoadingFont": true
}
```

### 响应示例

> 会直接响应二进制图片，使用 ApiPost 可以直接预览相应图片

![image-20241203045623307](https://mrxc-1300093961.cos.ap-shanghai.myqcloud.com/mrxc-1300093961/typoratyporaimage-20241203045623307.png)

## 如果你对我们感兴趣

推特：@huangzh65903362

即刻：https://web.okjike.com/u/ec41d7d5-407d-4395-ac8a-bd0f04fb202c

小红书：https://www.xiaohongshu.com/user/profile/6220bf22000000001000e083

<img src="https://mrxc-1300093961.cos.ap-shanghai.myqcloud.com/mrxc-1300093961/typorahzy_wx.jpg" alt="hzy_wx" style="zoom: 33%;" />