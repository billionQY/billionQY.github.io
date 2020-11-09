::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                       配置环境变量                                       ::
:: 7-Zip：         C:\Program Files\7-Zip                                                   ::
:: ildasm.exe：    C:\Program Files (x86)\Microsoft SDKs\Windows\v8.0A\bin\NETFX 4.0 Tools  ::
:: ilasm.exe：     C:\Windows\Microsoft.NET\Framework\v4.0.30319                            ::
:: jarsigner.exe： C:\Program Files\Java\jdk1.8.0_131\bin                                   ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::输入包名
set/p apk_name=input apk name : 
::创建同名目录
mkdir %apk_name%
::将apk拷贝到上面的同名目录里
copy %apk_name%.apk %apk_name%\debug.apk
::切换到同名目录下开始正式操作
cd %apk_name%

::提取dll
7z x debug.apk -o\APK\%apk_name% assets\bin\Data\Managed\Assembly-CSharp.dll
::将dll反编译为il
ildasm assets\bin\Data\Managed\Assembly-CSharp.dll /out=Assembly-CSharp.il
::将il重编译为dll
ilasm Assembly-CSharp.il /output=assets\bin\Data\Managed\Assembly-CSharp.dll /dll
::用新的dll替换掉旧的dll
7z a debug.apk assets\bin\Data\Managed\
::删除旧的签名
7z d debug.apk META-INF -w
::生成签名证书
keytool -genkey -dname "CN=Name, OU=Unit, O=Organization, L=City, ST=Province, C=Country" -alias user -keyalg RSA -validity 36500 -keystore user.keystore -storepass 123456 -keypass 123456
::签名
jarsigner -keystore user.keystore -storepass 123456 -signedjar release.apk debug.apk user

pause
