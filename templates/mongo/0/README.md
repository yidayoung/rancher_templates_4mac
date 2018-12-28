docker的mongo镜像的可扩展项并不多。具体可以看[这](https://docs.docker.com/samples/library/mongo)

mongo支持的版本号也可以在这找到

官方的mongo镜像会自己本地映射 /data/db 和/data/configdb目录，分别作为数据和配置文件的存放处

因为mac下的docker实际上是基于虚拟机启动的，也就是如果是本地映射，这些本地映射的源头文件实际是虚拟机的文件系统
对于mac本身是找不到的。所以如果要对数据进行管理，最好自己映射目录到/data/db

官方镜像支持MONGO_INITDB_ROOT_USERNAME，MONGO_INITDB_ROOT_PASSWORD环境变量来指定数据库的初始账户和密码

