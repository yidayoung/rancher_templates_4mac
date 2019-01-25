# 战舰登陆服

# 游戏服简易搭建框架
 下面说到的这些目录指的都是一个docker主机下的目录，和你自己的本地目录毫无关系，docker运行的时候可以将主机上的目录挂载到自己的系统中，游戏服就是通过这个逻辑取的版本包和让服务器目录在主机可见

## 配置项
1. 版本包所在目录  
默认的值是取的jenkins的构建结果，如果你不需要运行一个特殊的版本，就不需要修改此项  
如果有特殊版本的需求，确保目录下有已经打好的版本包即可，后续会用给定的包进行服务器搭建

2. 生产床目录  
服务器开始搭建的时候，会将版本包进行解压，解压后在生产床目录下根据给定的服务器ID创建目录，解压的文件就存放在这个创建的目录下  
创建的服务器目录的命名规则为 game_server${serverid}
挂载后将来的服务器运行目录与主机系统也就可见，方便管理

4. 登陆端口
指定游戏服登陆端口，将来Dokcer会将该端口进行映射，同一个主机下搭建的情况下端口不能重复，一般按照10000+serverid的规则来填充

6. 后台端口  
指定游戏服后台端口，同充值端口一样，只有内网需求，不会导出，没有特殊需求留空即可

1. 数据库地址
登陆服要用的mysql服务的地址

1. 数据库端口
mysql数据库端口

7. 数据库名称  
指定游戏服要使用的mysql数据库的名称，这个数据库必须自己先手动创建，并调用初始化脚本初始化完成后才行

## 关于更新
如果源码更新了，你需要自己到你的服务下，把game_server进行重启即可，重启的时候，会从jenkins的构建目录取最新的构建包，重新构建服务器文件，而且会进行重启
服务中的容器跑起来不代表服务器已经起来，只能说服务器正在启动，一般启动花费时间都比较稳定，如果长时间起不来，那就看下容器的运行日志，一般都是配置格式错误，对照进行修改即可