# rancher on macOS
Rancher 对mac支持不是很友好。k8s部署架不起来，所以只能用rancher1的cattle部署
这里提供了mysql，gitblit, mongo, jenkins的架设

其实官方的库也不是不能用，因为mac的docker的逻辑，host模式和manage网络模式都不能用，对应的负载均衡也不行，
有很多官方库使用了负载均衡，然后默认网络模式是manage，你就会发现导出的端口都不能用。。。
mac下只能用桥接，所以这里的模板都加了桥接网络参数


# 怎么搭建私有应用商店
[看这](https://www.cnrancher.com/docs/rancher/v1.x/cn/configuration/catalog/private-catalog/)
或者可以直接把  <https://github.com/yidayoung/rancher_templates_4mac.git> 加到你的应用商店

# 注意点
emm，项目图片。记得。自己。改下。 