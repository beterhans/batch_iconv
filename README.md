# batch_iconv
A Script allow you to convert text file encoding in bulk on Mac or Linux.

Like you got some japanese / Chinese text file but on your PC it's gibberish since they are not in UTF-8 encoding but local encoding.

What you need to do is convert them into UTF-8 so they can be displaied correctly on most modern system. like Linux MAC and Windows no match which language is the computer is using.


What you should do is.
  - copy the sh file into your /usr/bin or /usr/local/bin
  - put all your text file into a folder for example gibberish_japanese folder.
  - issue command like following
```sh
bash batch_iconv.sh gibberish_japanese CP932
```
or you can use the full command as following
```sh
bash batch_iconv.sh gibberish_japanese CP932 txt UTF-8
```

txt means to only precess txt text files you can change to ini or log or others too.
UTF-8 is the target encoding.
last 2 options can be omitted.

if you want a list what encode is supported just key in

```sh
iconv -l
```
to check

typical use of this script is 
Japanese to UTF-8
```sh
bash batch_iconv.sh gibberish_japanese CP932
```
Chinese to UTF-8
```sh
bash batch_iconv.sh gibberish_chinese CP936
```


