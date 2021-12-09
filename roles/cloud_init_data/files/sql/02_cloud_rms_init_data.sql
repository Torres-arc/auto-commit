USE `resource-management`;

-- product
INSERT INTO `product` VALUES ('2021-01-15 02:00:38', NULL, NULL, 0, 1, 'ecs', '弹性云服务器ECS', NULL);
INSERT INTO `product` VALUES ('2021-01-15 02:00:39', NULL, NULL, 0, 2, 'vpc', '私有网络VPC', NULL);
INSERT INTO `product` VALUES ('2021-01-15 02:00:39', NULL, NULL, 0, 3, 'rms', '资源管理RMS', NULL);
INSERT INTO `product` VALUES ('2021-01-15 02:00:39', NULL, NULL, 0, 4, 'dns', '云解析服务DNS', NULL);
INSERT INTO `product` VALUES ('2021-01-21 08:41:59', NULL, NULL, 0, 5, 'iam', '访问控制IAM', NULL);

-- quota
INSERT INTO `quota` VALUES ('2021-01-26 03:20:19', NULL, NULL, 0, 37, 'q_keypair-count', 'ecs', 20, '密钥', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:15', NULL, NULL, 0, 38, 'q_instance-count', 'ecs', 100, '实例数', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:15', NULL, NULL, 0, 39, 'q_cpu-count', 'ecs', 0, '核心数', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:15', NULL, NULL, 0, 40, 'q_ram-capacity', 'ecs', 0, 'RAM容量(MiB)', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:15', NULL, NULL, 0, 41, 'q_image-count', 'ecs', 20, '镜像', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:16', NULL, NULL, 0, 42, 'q_disk-count', 'ecs', 200, '磁盘数', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:16', NULL, NULL, 0, 43, 'q_disk-capacity', 'ecs', 0, '磁盘容量(GiB)', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:16', NULL, NULL, 0, 44, 'q_snapshot-count', 'ecs', 500, '快照数', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:16', NULL, NULL, 0, 45, 'q_resource-group-count', 'rms', 10, '资源组数量', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:17', NULL, NULL, 0, 46, 'q_vpc-count', 'vpc', 2, '私有网络VPC', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:17', NULL, NULL, 0, 47, 'q_subnet-count', 'vpc', 2, '子网', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:17', NULL, NULL, 0, 48, 'q_network-interface-count', 'vpc', 200, '弹性网卡', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:17', NULL, NULL, 0, 49, 'q_security-group-count', 'vpc', 50, '安全组', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:18', NULL, NULL, 0, 50, 'q_security-group-rule-count', 'vpc', 500, '安全组规则', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:18', NULL, NULL, 0, 51, 'q_traffic-rule-count', 'vpc', 5, 'IP分流规则', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:18', NULL, NULL, 0, 52, 'q_bandwidth-allocation-rule-count', 'vpc', 5, '带宽管理分流规则', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:18', NULL, NULL, 0, 53, 'q_traffic-allocation-rule-count', 'vpc', 5, '流量管理分流规则', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:18', NULL, NULL, 0, 54, 'q_dns-private-zone-count', 'dns', 2, '内网域名', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:19', NULL, NULL, 0, 55, 'q_dns-resolve-rule-count', 'dns', 5, '域名解析记录', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:19', NULL, NULL, 0, 56, 'q_dns-redirect-rule-count', 'dns', 5, '域名分流规则', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:19', NULL, NULL, 0, 57, 'q_user-count', 'iam', 50, '用户', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:19', NULL, NULL, 0, 58, 'q_group-count', 'iam', 20, '用户组', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:19', NULL, NULL, 0, 59, 'q_iam-user-accesskey-count', 'iam', 2, '用户密钥', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:19', NULL, NULL, 0, 60, 'q_root-user-accesskey-count', 'iam', 10, '主账户密钥', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:19', NULL, NULL, 0, 61, 'q_custom-policy-count', 'iam', 5, '自定义策略', NULL);
INSERT INTO `quota` VALUES ('2021-01-26 03:20:19', NULL, NULL, 0, 62, 'q_custom-policy-characters-count', 'iam', 2048, '自定义策略内容的字符数', NULL);
