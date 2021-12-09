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
internal_vip_address: 192.168.1.200

# 服务监听的网卡
network_interface: eth0

# haproxy 密码
haproxy_stats_password: "P@ssw0rd"

# mysql 密码
database_password: "P@ssw0rd"

# rabbitmq 用户名密码
rabbitmq_user: cloud-service
rabbitmq_password: "P@ssw0rd"

# 自定义router_id 避免网段router_id冲突(0-255)
keepalived_virtual_router_id: 69

# 中心nginx ip 必须是浮动ip，而不是内网vip, 可以是https
center_nginx_address: "http://172.168.1.1"

# 配置二级域名，与中心nginx中coreDns的二级域名一致
unicom_domain_name: "unicom.edge"

# 开启TLS
enable_tls: true

# 日志级别 debug | info | warn | error
log_level: info

# 服务镜像Tag
cloud_service_monitor_tag: "1.0.0rc1"

cloud_service_vpc_tag: "1.0.0rc1"

cloud_service_dns_tag: "1.0.0rc1"

cloud_service_trail_tag: "1.0.0rc1"

cloud_service_ecs_tag: "1.0.0rc1"

cloud_service_rms_tag: "1.0.0rc1"

cloud_service_iam_tag: "1.0.0rc1"

cloud_service_base_portal_tag: "1.0.0rc1"

cloud_service_ecs_portal_tag: "1.0.0rc1"

cloud_service_vpc_portal_tag: "1.0.0rc1"

cloud_service_trail_portal_tag: "1.0.0rc1"

cloud_service_rms_portal_tag: "1.0.0rc1"

cloud_service_dns_portal_tag: "1.0.0rc1"

cloud_service_iam_portal_tag: "1.0.0rc1"

cloud_service_dedicated_portal_tag: "latest"

cloud_service_management_portal_tag: "1.0.0rc1"

```

#### 备份主机资产文件
```shell
cd /etc/ansible/hosts
cp 00-nodes 00-nodes.back
```
#### 清理老的部署脚本
```shell
cd /root
rm -rf cloud-service-deploy
```

#### 执行初始化脚本
```shell
bash /opt/release/setup.sh
```

运行成功之后会生成以下文件和目录

```shell
- /var/lib/registry/目录，部署节点docker registry的数据挂在目录
- /data/repo目录，存放系统所需的rpm包
- /etc/ansible/hosts/00-nodes文件，用来配置主机资产
- /root/cloud-service-deploy目录，存放cloud-service的ansible部署脚本
```

查看docker容器，会运行`registry:2`的容器，查看registry内的镜像，存在镜像列表如下：
```shell
curl 127.0.0.1:4000/v2/_catalog
{
    "repositories": [
        "cloud-service/cloud-monitor",
        "cloud-service/cloud-dns",
        "cloud-service/cloud-ecs",
        "cloud-service/cloud-iam",
        "cloud-service/cloud-service-base-portal",
        "cloud-service/cloud-service-ecs-portal",
        "cloud-service/cloud-service-vpc-portal",
        "cloud-service/cloud-service-trail-portal",
        "cloud-service/cloud-service-dns-portal",
        "cloud-service/cloud-service-rms-portal",
        "cloud-service/cloud-service-iam-portal",
        "cloud-service/cloud-vpc",
        "cloud-service/cloud-trail",
        "cloud-service/common",
        "cloud-service/resource-management"
    ]
}
```

#### 编辑资产文件

编辑部署节点 `/etc/ansible/hosts/00-nodes` 文件，在[nodes]添加工作节点主机名  
如无变化，保持原配置，使用 00-nodes.back 即可

```shell
[nodes]
cloud-service-worker01
cloud-service-worker02
cloud-service-worker03

[prometheus:children]
nodes

[alertmanager:children]
nodes

[node_exporter:children]
nodes

[blackbox_exporter:children]
nodes

[haproxy:children]
nodes

[mariadb:children]
nodes

[tomcat:children]
nodes

[rabbitmq:children]
nodes

[cloud_service_base_portal:children]
