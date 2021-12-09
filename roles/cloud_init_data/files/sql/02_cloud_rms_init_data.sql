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
