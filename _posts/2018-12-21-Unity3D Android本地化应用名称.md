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

一、在Assets\Plugins\Android\res目录下创建对应语言的<color=red>values-xx<color/>文件夹。（xx代表国家代码，values文件夹是默认的语言、values-zh-rCN代表中国大陆、values-zh-rTW代表中国台湾）


二、在values文件夹新建strings.xml文件内容如下，需修改<color=red>app_name<color/>字段对应的应用名称。

```
<?xml version="1.0" encoding="utf-8"?>
<resources>
  <string name="app_name">app name</string>
</resources>
```

values-zh-rCN为简体中文：
```
<?xml version="1.0" encoding="utf-8"?>
<resources>
  <string name="app_name">应用名称</string>
</resources>
```

values-zh-rTW为繁体中文
```
<?xml version="1.0" encoding="utf-8"?>
<resources>
  <string name="app_name">應用名稱</string>
</resources>
```

三、打包发布。
