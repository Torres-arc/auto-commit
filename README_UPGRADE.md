# 自助平台升级部署文档
## 配置部署节点
上传部署包`cloud-service-deploy-master.tar`到`/opt`目录下

解压部署包
```shell
tar -xvf cloud-service-deploy-master.tar
```

解压之后目录显示如下:

```shell
/opt/release
 - cloud-service-deploy.tar.gz        (Ansible部署脚本压缩包)
 - docker-registry.tar      (应用镜像压缩包)  
 - registry-image.tar       (Registry镜像压缩包)
 - repo.tar.gz              (系统依赖压缩包)
 - setup.sh                 (部署节点安装脚本)
```

#### 修改全局配置文件

根据现场环境进行修改`globals.yml`文件,内容如下

```shell
# /etc/cloud-service/globals.yml
# 部署网卡IP
undercloud_ip: 192.168.1.100

# vip 地址
