---
layout:     post
title:      "Unity3D Android本地化应用名称"
subtitle:   "Unity3D"
date:       2018-12-21 15:01:45
author:     "billionQY"
header-img: "img/in-post/default-bg.jpg"
tags:
    - Unity3D
---

## 建立对应语言的**values-xx**文件夹
* 在Assets\Plugins\Android\res目录下创建对应语言的**values-xx**文件夹。（xx代表国家代码，values文件夹是默认的语言，values-zh-rCN代表中国大陆，values-zh-rTW代表中国台湾）


## 建立每个**values-xx**文件夹的**strings.xml**文件
* 在每个values文件夹下新建**strings.xml**文件，将下面这段代码拷贝进去，**app_name**字段的值就是该语言下的应用名称。

```
<?xml version="1.0" encoding="utf-8"?>
<resources>
  <string name="app_name">app name</string>
</resources>
```

* 同理values-zh-rCN使用简体中文
```
<?xml version="1.0" encoding="utf-8"?>
<resources>
  <string name="app_name">应用名称</string>
</resources>
```

* 同理values-zh-rTW使用繁体中文
```
<?xml version="1.0" encoding="utf-8"?>
<resources>
  <string name="app_name">應用名稱</string>
</resources>
```

## 打包发布。
