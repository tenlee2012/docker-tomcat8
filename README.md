本镜像源自于DockerHub镜像[tutum/Tomcat](https://github.com/ClouDesire/docker-tomcat)。

### 版本
当前版本 tomcat 8.0.39, java8

### 说明

容器启动后会自动创建一个具有所有权限的admin用户，并自动生成随机密码。你可以通过查看容器log获得密码，比如
```
=> Creating and admin user with a random password in Tomcat

=> Done!

========================================================================

You can now configure to this Tomcat server using:

admin:1Bwjynh6rAb5
========================================================================
```
在上面的例子中，1Bwjynh6rAb5 就是admin用户的密码。

你可以用admin用户访问下面的地址配置Tomcat:

－ http://your-tomcat-url/manager/html

－ http://your-tomcat-url/host-manager/html

如果你想为admin用户设置一个特定的密码，你可以设置环境变量 TOMCAT_PASS 为您需要的密码。
例如
```
docker run -d -p 8080:8080 -e TOMCAT_PASS="mypass" tenlee/tomcat
```
### 增加的内容
可以通过tomcat-manage在线上传war部署
上传文件大小限制改为100M
