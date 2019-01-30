一步安装 docker-ce 及 docker-compose 的脚本，功能如下：

1、卸载旧版本

2、安装需要的依赖软件包

3、设置 yum 源，使用清华镜像仓库，速度很快

4、安装 docker-ce

5、安装docker-compose，从国内镜像 get.daocloud.io 快速下载

6、添加 docker 国内镜像站点并重启docker

由于采用了国内镜像进行docker-ce、docker-compose的安装，所以下载速度和国外站点比，速度飞快。

tanbushi 2019-01-29
