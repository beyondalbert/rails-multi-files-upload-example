# 多附件上传demo

环境： ruby 1.9.3 rails 3.2 ubuntu

# 1、添加swfupload相关文件

参考： https://code.google.com/p/swfupload/

/public
* swfupload.swf

/app/assets/javascripts
* fileprogress.js
* handlers.js
* swfupload.js
* swfupload.queue.js
* multi_file_upload.js 用于多附件上传对象的初始化

## 2、处理flash上传是对服务端sessions的破坏

参考：http://jetpackweb.com/blog/2009/10/21/rails-2-3-4-and-swfupload-rack-middleware-for-flash-uploads-that-degrade-gracefully/

* 添加/app/middleware
* /config/initializers/session_store.rb中添加：

```ruby
if defined?(::Rails.configuration) && ::Rails.configuration.respond_to?(:middleware)
	  ::Rails.configuration.middleware.insert_after 'ActionDispatch::Cookies', FlashSessionCookieMiddleware, ::Rails.configuration.session_options[:key]
end
```

## 3、说明

* 具体实现请参看代码本身；
* 添加简单的用户登录部分是为了验证flash对session破坏问题；
* 没有对多附件上传的附件进行进一步的存储操作，只是在Attachments表中建了一条记录，更多附件的操作请自己解决；
* 本demo实现了对多附件上传中每个附件添加备注的功能；
* 用户登录信息： login:admin password:123456
