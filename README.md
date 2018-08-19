# Close-Compare-Tool

[![Build status](https://ci.appveyor.com/api/projects/status/j6wl8923y7gdcfk1?svg=true)](https://ci.appveyor.com/project/gqqnbig/close-compare-tool)

作为Git（TortoiseGit）钩子使用，当提交完成后关闭比较工具。

TortoiseGit的典型设置如下，对于所有D:\下的Git仓库，每当提交完成时，就关闭比较工具的一个窗口。
![TortoiseGit的典型设置](https://user-images.githubusercontent.com/614159/35664664-dbf51894-06d7-11e8-9387-7c8bcb9f8732.png)

注：此脚本运行一次只关闭指定的比较工具的一个窗口。此脚本通过读取`HKEY_CURRENT_USER\Software\TortoiseGit\diff`键自动识别你使用的比较工具。


# 常见问题
## Chrome浏览器提示文件有毒？

Chrome浏览器（Google Safe browsing）倾向于把AutoHotKey编译的程序报为病毒。如有疑虑，建议使用https://www.virustotal.com 查毒，确保无毒再下载。
