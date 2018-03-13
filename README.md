# studyAppShell


以前在学习Android加固时, 按照http://www.wjdiankong.cn/android%E4%B8%AD%E7%9A%84apk%E7%9A%84%E5%8A%A0%E5%9B%BA%E5%8A%A0%E5%A3%B3%E5%8E%9F%E7%90%86%E8%A7%A3%E6%9E%90%E5%92%8C%E5%AE%9E%E7%8E%B0/ 这篇文章中的介绍, 自己用写了一下.


DalvikShell为源Apk
ReforceApk为壳Apk.
DexShellTools时一个java项目, 用来对源Apk和脱壳dex进行合成.


操作好的apk文件在ReforceApk/app/build/outputs/apk/app-debug_sign.apk




## 新增的动态加载的项目


1.  Dynamic


2. HostActivityA

PluginActivityA               这两个项目为反射动态加载apk

运行时要先将PluginActivityA push 到 /data/data/com.example.l0phtg.hostactivitya/cache 后, 宿主app才能够正确加载插件apk


3. ClientDL

HostDL                       这两个项目为代理动态加载apk


运行时要先将PluginActivityB(ClientDL编译生成的apk) push 到 /data/data/com.example.l0phtg.hostdl/cache 后, 宿主app才能够正确加载插件apk

