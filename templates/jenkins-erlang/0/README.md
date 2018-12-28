# 带erlang环境的Jenkins环境

本质上就是erlang+jenkins，这个镜像是基于erlang-jenkins 也就是erlang18.3构建的，我没上传
需要自己用Dockerfile构建，如果需要其他erlang版本，也需要自己重新构建，[怎么构建嘞](https://github.com/yidayoung/Docker_jenkins_erlang)

# Jenkins Public Port
Jenkins 对外端口，容器内部使用的默认的8080，可以选择8080也可以映射到其他端口

# Jenkins Home Dir
Jenkins Home目录，如果自己已经搭建过Jenkins，那么直接映射过来也可以，不用创建账号密码
如果是新目录，需要到容器日志里或者密码文件里找下初始密码完成初始化