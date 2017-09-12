# AppleDoc
亲自体验安装使用AppleDoc（iOS编写接口文档工具(网页版)）

 详细教程参见我的博客：ttdiOS:http://www.jianshu.com/p/ef5e2bae6894
 

在写文章前，我想吐槽下，现在文章一大抄，就是看你会抄不会抄。一搜索AppleDoc教程一大堆，但是按照教程做的话，又是错误一大堆，每个教程似乎出自一个人的风格，太奇怪了，有规则和业界良心（可以借鉴别人的，但是也要改改啊，不提倡自己不亲自操作下就抄袭别人的文章）？？？要么不写，要写就写自己的体验感受。对于我这样的小白，看着文档，截图教程又不全面，实在是抓耳挠腮。。。

于是决定自己写一下教程：

1：安装appledoc

使用终端下载：

命令行：

git clone git://github.com/tomaz/appledoc.git

cd ./appledoc

sudo sh install-appledoc.sh

查看是否安装成功：

命令行：

appledoc --version


git clone git://github.com/tomaz/appledoc.git

git clone git://github.com/tomaz/appledoc.git

git clone git://github.com/tomaz/appledoc.git

cd appledoc

sudo sh install-appledoc.sh
当出现INSTALL SUCCESS时说明成功了，你也可以用appledoc --version查看验证下


appledoc --version
2.前期的安装搞好了，接下来是重头戏，也是最容易出错的，就是在这一步，网上一大堆错误，或者不全的教程命令，👵的

都是首先进入到工程目录下，仔细看下面截图，你就懂：

cd /Users/zhaotong/Desktop/iOS资料/思维/04-UITextField练习

appledoc --output ./doc --project-name 04-UITextField练习 --project-company "ttdiOS" --company-id "com.ttdiOS" .

appledoc --no-create-docset --output ./doc --project-name 04-UITextField练习 --project-company "ttdiOS" --company-id "com.ttdiOS" .


appledoc --output ./doc --project-name 04-UITextField练习 --project-company "ttdiOS" --company-id "com.ttdiOS" .

appledoc --no-create-docset --output ./doc --project-name 04-UITextField练习 --project-company "ttdiOS" --company-id "com.ttdiOS" .
上面的2步后就可以在工程目录下出现doc文件夹。


Safari打开index.html就是我们最后的网页api接口文档


index.html

怎么样是不是和我们的官方文档一样😁

闲上面的2步太多，也可以试试这个方法：

appledoc --project-name="04-UITextField练习"  --project-company="ttdiOS" --company-id="com.ttdiOS" --output="./" --docset-install-path="./" .

／／／／／／／／／参数说明／／／／／／／／

生成的信息如下：

如果设置设置companyID，则生成文件名为 companyID.projectName.docset

如果不设置则文件名为com.companyname.projectname.projectName.docset

--project-name，--project-company必须输入

--output 为生成的txt文件的目录，这里设置为当前目录

--docset-install-path 为生成docket的目录，这里设置为当前目录。如果此目录不设置，默认会在~/Library/Developer/Shared/Documentation/DocSets/目录生成

／／／／／／／／／参数说明／／／／／／／／


appledoc --project-name="04-UITextField练习"  --project-company="ttdiOS" --company-id="com.ttdiOS" --output="./" --docset-install-path="./" .
会在工程目录下出现：


com.ttdiOS.04-UITextField练习.docset和docset-installed.txt
对com.ttdiOS.04-UITextField练习.docset双击出现菜单，选：显示包内容，就会出现下面的文件，最终我们需要的是：index.html（和上面的效果相同）
