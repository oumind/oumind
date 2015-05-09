title: Sketch常用工具&插件
---
对于sketch来说，首先必须需要的工具就是**`sketch toolbox`**，这是一个非常方便的sketch插件管理工具，可直接访问github[获取][1]。
使用起来非常简单，详见下图：
![How to use sketch toolbox?][image-1]
以下所介绍的所有插件都可以直接通过**sketch toolbox**安装：
## Sketch Measure
超级智能的帮你在作品上添加图形尺寸、距离、颜色和文本属性的附注，方便快捷，而且成品整洁漂亮。好用到心都要碎了……  完全不用自己手写标注，搞定后导出成PDF，直接发给技术小伙伴，大大提高双方的沟通效率。这个插件还会自动把附注编组，方便你修改和管理。
**记得要是想标注2个组件间的距离，要先选中2个组件。**
![][image-2]
![][image-3]
## Content Generator Sketch
做 Mock up 的时候就再也无需操心占位内容，它可以自动随机填充男性、女性或者自然风光的图片。
![][image-4]
或者是用户的姓名，邮箱，电话和地址。
![][image-5]
还想要文本和日期？也没问题。
![][image-6]
## Rename It
帮助你批量的修改图层名称，快捷键 control + command + R 。
四种具体的修改方式，戳这里看[演示视频][2]。
1. 扩展图层名：输入号 “+” 和你想添加的文本即可。（如：+ button）
2. 图层名顺序：输入 “%N” 将图层名按顺序加上数字后缀。“%n” 则是加上倒序的数字。（如：item %N）
3. 保留并移动原图层名： 输入新的图层名时，使用 `*` 号代替原图层名。（如：big `*` button）
4. 添加图层的长度和宽度：输入 “%w” 或者 “%h” 来添加图层的长和宽。（如：rectangle %w 或者 rectangle %w x %h）

[1]:	https://github.com/shahruz/Sketch-Toolbox "获取sketch toolbox"
[2]:	http://vimeo.com/85064841 "演示Rename it"

[image-1]:	/img/sketch/sketch%20toolbox.png "sketch toolbox"
[image-2]:	/img/sketch/sketch-measure.png "use sketch measure"
[image-3]:	/img/sketch/sketch-measure2.png "use sketch measure"
[image-4]:	/sketch/source-gen1.gif "Content Generator img"
[image-5]:	/sketch/source-gen2.gif "Content Generator info"
[image-6]:	/sketch/source-gen3.gif "Content Generator text"