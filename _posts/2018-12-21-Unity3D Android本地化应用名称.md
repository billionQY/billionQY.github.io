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

## 在Assets\Plugins\Android\res目录下创建对应语言的**values-xx**文件夹。（xx代表国家代码，values文件夹是默认的语言，values-zh-rCN代表中国大陆，values-zh-rTW代表中国台湾）


## 在values文件夹新建**strings.xml**文件内容如下，修改**app_name**字段对应的应用名称。

```
<?xml version="1.0" encoding="utf-8"?>
<resources>
  <string name="app_name">app name</string>
</resources>
```

* values-zh-rCN 使用简体中文
```
<?xml version="1.0" encoding="utf-8"?>
<resources>
  <string name="app_name">应用名称</string>
</resources>
```

* values-zh-rTW 使用繁体中文
```
<?xml version="1.0" encoding="utf-8"?>
<resources>
  <string name="app_name">應用名稱</string>
</resources>
```

## 打包发布。
