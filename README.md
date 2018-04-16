# CamWebSite Project

## 一、主要应用技术

HTML5、SCSS、JS、Webpack、Vue、Axios、PHP、MySQL

## 二、主要实现内容

### 1、设计页面布局和样式

（1）首页，专家信息页

### 2、配置开发环境

（1）安装并配置webpack、vue，以及开发使用的各种loader等

（2）通过安装px2rem-loader并引入hotcss实现不同尺寸手机屏幕的适配

### 3、抽象并提取出页面中常用的组件

（1）提取出常用的元素组件，例如：button

（2）提取出常用的公共组件，例如：header，footer，navbar等

### 4、首页页面制作

（1）引入header、footer、navbar和轮播图等组件

（2）通过slot插槽将部分首页内容插入组件中

（3）通过prop实现父组件与子组件间的数据传递

（4）通过设置路由实现首页到专家信息页的跳转

### 5、专家信息页页面制作

（1）引入页面所需组件

（2）通过axios实现专家数据的异步请求

### 6、专家数据库

（1）建立专家信息数据库，并通过php操作mysql数据库，实现专家信息的查询和数据的返回

## 三、问题和解决方法

### 1、使用vue-awesome-swiper轮播图插件，引用本地图片文件时无法显示图片，并报错。

   解决：在js中使用图片前需要通过import XXX from '....'引入图片

   出自：https://www.cnblogs.com/zishang91/p/7600006.html ，http://www.cnblogs.com/zishang91/p/7594997.html

### 2、使用<div><section>等标签包裹<img>标签时，并设置图片宽度为100%，外层容器的高度会大于图片实际高度3-4个像素。

   解决：将img的display设置为block即可。这是因为img是一种类似test的元素，在结束时，会在末尾加上一个空白符导致的。

   出自：https://blog.csdn.net/it_queen/article/details/52106203

### 3、使用axios进行post异步请求时，发送的数据后端接收不到。（有待尝试）

   解决：需要通过axios里的qs对发送的数据进行格式化，代码如下：
      import Qs from 'qs'
      var data = Qs.stringify({"name":"yang"});

### 4、文件打包后通过xampp模拟的服务器在chrome浏览器上进行测试，反复刷新发现文件请求的img路径和php路径始终没有变。

   解决：重启chrome浏览器。怀疑是浏览器缓存的原因导致的。

### 5、axios.then（）中获取不到data(){return{...}}中的数据。

   解决：在调用axios的函数中声明一个内部的this并赋值为外部的this,就可以通过这个内部的this使用外部data中的数据了。

### 6、https协议下请求http协议下的资源时会报错（有待尝试）
   
   解决：在chrome浏览器下，浏览器会在地址栏给出提示，点击提示并选择“加载不安全的脚本”则可以实现此次加载，但无法解决根本问题。
         可以尝试使用jsonp的方式请求

## 注意：

    1.在使用url-loader打包图片文件时，也需要安装file-loader

    2.使用axios进行异步请求，在安装axios后需要在组件中引入axios，即import axios from 'axios'
