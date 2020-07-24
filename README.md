> 下载YANG编译工具

```
# go get -u github.com/openconfig/ygot
```

> 将YANG模型转换成Protobuf文件，并生成对应的Java和GO版本代码

```
# cd scripts
# go generate 
```

> 生成Jar包

```
### Jar包位于target目录
# mvn package
```