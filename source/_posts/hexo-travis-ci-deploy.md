title: 使用travis-ci自动部署hexo到github-page
---
#概述
参照hexo作者的blog http://zespia.tw/blog/2015/01/21/continuous-deployment-to-github-with-travis/
hexo官网就是采用该方案

#生成key

		$ ssh-keygen -t rsa -C "mrheng@163.com"
		Generating public/private rsa key pair.
		Enter file in which to save the key (~/.ssh/id_rsa): ~/blog/oumind/.travis/ssh_key
		Enter passphrase (empty for no passphrase):
		Enter same passphrase again:
		Your identification has been saved in ~/blog/oumind/.travis/ssh_key.
		Your public key has been saved in ~/blog/oumind/.travis/ssh_key.pub.

#github设置deploy key

<img src="/img/travis/github-deploy-keys.png" width="600" height="400"/>

#travis添加项目
<img src="/img/travis/travis-add-project.png" width="600" height="400"/>

#加密私有key

注意：官网这一段话 http://docs.travis-ci.com/user/encrypting-files/
	
	>Caveat

	There is a report of this function not working on a local Windows machine. Please use a Linux or OS X machine.
本人亲测，在windows上加密密钥的确有问题,花了半天时间啊，杯具

1. 安装Travis CI Client
参照 https://github.com/travis-ci/travis.rb#installation

Make sure you have at least [Ruby](http://www.ruby-lang.org/en/downloads/) 1.9.3 (2.0.0 recommended) installed.

You can check your Ruby version by running `ruby -v`:

    $ ruby -v
    ruby 2.0.0p195 (2013-05-14 revision 40734) [x86_64-darwin12.3.0]

Then run:

    $ gem install travis -v 1.7.6 --no-rdoc --no-ri
    
墙内用户请设置淘宝的gem镜像 参照 http://ruby.taobao.org/

Now make sure everything is working:

    $ travis version
    1.7.6 
    
    
2. 登录travis
	
		travis login --auto
	
Try running with --github-token or --auto if you don't want to enter your password anyway.

注意： 执行travis命令最好在git仓库目录下，否则每次要用-r参数指定仓库，比较麻烦

3. 加密文件
	
		$ travis encrypt-file .travis/ssh_key .travis/ssh_key.enc
		encrypting .travis/ssh_key for oumind/oumind
		storing result as .travis/ssh_key.enc
		DANGER ZONE: Override existing .travis/ssh_key.enc? |no| yes
		storing secure env variables for decryption
		
		Please add the following to your build script (before_install stage in your .travis.yml, for instance):
		
		    openssl aes-256-cbc -K $encrypted_28b0d322b02e_key -iv $encrypted_28b0d322b02e_iv -in .travis/ssh_key.enc -out .travis/ssh_key -d
		
		Pro Tip: You can add it automatically by running with --add.
		
		Make sure to add .travis/ssh_key.enc to the git repository.
		Make sure not to add .travis/ssh_key to the git repository.
		Commit all changes to your .travis.yml. 
		
4. 确认travis环境变量

		$ travis env list
		# environment variables for oumind/oumind
		encrypted_28b0d322b02e_key=[secure]
		encrypted_28b0d322b02e_iv=[secure]
		
5. 将生成的公私钥移到其他目录备份

#修改.travis.yml
配置文件参照 https://github.com/hexojs/site/blob/master/.travis.yml
修改openssl 环境变量部分,你也可以参照我们的
https://github.com/oumind/oumind/blob/master/.travis.yml

#修改hexo的_config.yml

参照官方文档 http://hexo.io/docs/deployment.html

#push到github

travis会自动构建并发布