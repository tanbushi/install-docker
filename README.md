一步安装 docker-ce 及 docker-compose 的脚本，功能如下：

1、卸载旧版本

2、安装需要的依赖软件包

3、设置 yum 源，使用清华镜像仓库，速度很快

4、安装 docker-ce
5、安装docker-compose，从国内镜像 get.daocloud.io 快速下载，但目前发现下载很慢，甚至不容易成功，所以将 docker-compose 文件上传到了github，放到安装脚本 install-docker.sh 同级目录下，可一起打包下载到安装目录下，对 install-docker.sh 文件做了相应修改。 

6、添加 docker 国内镜像站点并重启docker

由于采用了国内镜像进行docker-ce、docker-compose的安装，所以下载速度和国外站点比，速度飞快。

tanbushi 2019-01-29

——————————————————————————————————————————

一步卸载docker的脚本，功能如下：

1、删除docker-ce相关程序及依赖

2、删除docker服务

3、删除相关目录

4、安装网桥管理工具

5、停止并删除网桥docker0

tanbushi 2019-02-12
