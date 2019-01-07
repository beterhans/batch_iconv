# batch_iconv Bash 脚本 批量转换 txt 文本编码
A Script allow you to convert text file encoding in bulk on Mac or Linux.
这个脚本让你可以批量转换一个目录里所有的 文本文件 不一定一定要 txt 文件。

Like you got some japanese / Chinese text file but on your PC it's gibberish since they are not in UTF-8 encoding but local encoding.
比如你在使用英文 windows 或者 MAC Linux, 你收到其他人发来的txt文件是乱码的，因为他们的电脑是 简体windows 或者 日文 windows。
你要做的就是把这些 txt全部转换成 UTF-8 那么到了哪里都不会乱码。

What you need to do is convert them into UTF-8 so they can be displaied correctly on most modern system. like Linux MAC and Windows no match which language is the computer is using.


What you should do is.
  - copy the sh file into your /usr/bin or /usr/local/bin
  - 把这个 sh 脚本放入 /usr/bin 或 /usr/local/bin
  - put all your text file into a folder for example gibberish_japanese folder.
  - 将需要转换的文件 放入一个目录 比如 gibberish_japanese 目录
  - issue command like following
  - 输入如下命令
```sh
bash batch_iconv.sh gibberish_japanese CP932
```
or you can use the full command as following
或者 可以打全一点
```sh
bash batch_iconv.sh gibberish_japanese CP932 txt UTF-8
```

txt means to only precess txt text files you can change to ini or log or others too.
txt 就是只处理 txt 后缀的文件，当然你可以换成 ini log 等....
UTF-8 is the target encoding.
UTF-8 就是转换成 UTF-8 这样哪里也不乱码 但是你要转换成别的也是可以的。
last 2 options can be omitted.
最后2 参数可以忽略 默认会使用 txt 和 UTF-8

if you want a list what encode is supported just key in
如果你想知道 什么编码可以被支持 请使用如下命令查看 所有编码方式
```sh
iconv -l
```
to check

typical use of this script is 
例子

Japanese to UTF-8
```sh
bash batch_iconv.sh gibberish_japanese CP932
```
Chinese to UTF-8
```sh
bash batch_iconv.sh gibberish_chinese CP936
```


