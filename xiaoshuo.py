#coding: utf-8
import urllib.request
import re
import codecs
import sys
def geturl():
    i=1
    while i<20:
        url = 'http://www.haopic.me/page/'+str(i)
        return url
def getHtml(url):
        page = urllib.request.urlopen(url)
        htmlcode = page.read()
        s = htmlcode.decode('utf-8')
        return s

def get_imp(num):
       reg = 'src="(.+?\.jpg)"'     #正则表达式
       reg_img = re.compile(reg)       #编译一下，运行更快
       # reg_img = type(reg_img)
       # print(type(reg_img))
       # print(reg_img.encode('utf-8'))
       # print(reg_img.decode('utf-8'))
       imglist = reg_img.findall(num) #进行匹配
       for i in imglist:
           print(i)
           print("\n")
       # for img in imglist:
       #      urllib.request.urlretrieve(img, '%s.jpg'%x)
       #      x+=1
num = geturl()
get_imp(getHtml(num))
print('--正在下载图片--')
print('--下载成功--')
input('Press Enter to exit')

