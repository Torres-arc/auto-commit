USE `keystone`;

-- policy_iam
INSERT INTO `policy_iam` VALUES ('37cf0a46-80ae-447e-b93e-dc9fe74c6d16', 'AdministratorAccess', 'System', '管理所有云资源的权限', 'default', '2021-01-26 02:54:24');
INSERT INTO `policy_iam` VALUES ('44b8afd8-76af-45f7-b076-4dddafb82dce', 'UnicomECSReadOnlyAccess', 'System', '只读访问云服务器服务(ECS)的权限', 'default', '2021-01-26 03:06:49');
INSERT INTO `policy_iam` VALUES ('4dfff396-d894-4677-b43d-fcf7540bdc41', 'UnicomECSFullAccess', 'System', '管理云服务器服务(ECS)的权限', 'default', '2021-01-26 03:06:22');
INSERT INTO `policy_iam` VALUES ('d3a96122-d59d-4481-866e-b2df287a807e', 'UnicomVPCReadOnlyAccess', 'System', '只读访问云服务器服务(VPC)的权限', 'default', '2021-01-26 03:06:57');
INSERT INTO `policy_iam` VALUES ('d56bec7a-ab84-4f67-a941-0563a8476ef0', 'UnicomVPCFullAccess', 'System', '管理专有网络(VPC)的权限', 'default', '2021-01-26 03:06:53');
INSERT INTO `policy_iam` VALUES ('523c47e8-aa75-406d-8c0d-cb96bebfb97b', 'UnicomMonitorReadOnlyAccess', 'System', '只读监控服务(Monitor)的权限', 'default', '2021-06-09 03:06:53');
INSERT INTO `policy_iam` VALUES ('f495e67f-8587-40c5-8624-78668c4de6f9', 'UnicomTrailReadOnlyAccess', 'System', '只读审计服务(Trail)的权限', 'default', '2021-06-09 03:06:53');
INSERT INTO `policy_iam` VALUES ('ede90a99-f1bd-43cb-83aa-502e13d05e6f', 'UnicomIAMReadOnlyAccess', 'System', '只读访问IAM的权限', 'default', '2021-06-09 03:06:53');
INSERT INTO `policy_iam` VALUES ('e937b75c-578f-46c1-8234-e02a3fa06472', 'UnicomIAMFullAccess', 'System', '管理IAM的权限', 'default', '2021-06-09 03:06:53');

-- policy policy_version
INSERT INTO `policy_version` VALUES ('0c389c8c-ec6b-47a3-884a-69132fbf3a75', 'f495e67f-8587-40c5-8624-78668c4de6f9', 1, '{\"Version\": \"1\", \"Statement\": [{\"Effect\": \"allow\", \"Action\": [\"trail:LookUpEvents\"], \"Resource\": [\"*\"]}]}', 1, '2021-06-09 03:06:53');
INSERT INTO `policy_version` VALUES ('0f1affbe-12af-4539-b9d6-42e5207e595f', '523c47e8-aa75-406d-8c0d-cb96bebfb97b', 1, '{\"Version\": \"1\", \"Statement\": [{\"Effect\": \"allow\", \"Action\": [\"monitor:Describe*\"], \"Resource\": [\"*\"]}]}', 1, '2021-06-09 03:06:53');
INSERT INTO `policy_version` VALUES ('22b10a8c-1748-463d-aeb6-290a203229f2', 'e937b75c-578f-46c1-8234-e02a3fa06472', 1, '{\"Version\": \"1\", \"Statement\": [{\"Effect\": \"allow\", \"Action\": [\"iam:*\"], \"Resource\": [\"*\"]}]}', 1, '2021-06-09 03:06:53');
INSERT INTO `policy_version` VALUES ('254954bd-417b-4613-b906-5cd36984b5c9', 'd3a96122-d59d-4481-866e-b2df287a807e', 1, '{\"Version\": \"1\", \"Statement\": [{\"Effect\": \"allow\", \"Action\": [\"vpc:Describe*\"], \"Resource\": [\"*\"]}]}', 1, '2021-01-26 03:06:57');
INSERT INTO `policy_version` VALUES ('2b957adc-eed6-4fce-9c61-43ffd9feeb43', '44b8afd8-76af-45f7-b076-4dddafb82dce', 1, '{\"Version\": \"1\", \"Statement\": [{\"Effect\": \"allow\", \"Action\": [\"ecs:Describe*\"], \"Resource\": [\"*\"]}]}', 1, '2021-01-26 03:06:49');
INSERT INTO `policy_version` VALUES ('749beaba-4ca7-450e-9986-9ead0e514112', 'd56bec7a-ab84-4f67-a941-0563a8476ef0', 1, '{\"Version\": \"1\", \"Statement\": [{\"Effect\": \"allow\", \"Action\": [\"vpc:*\"], \"Resource\": [\"*\"]}]}', 1, '2021-01-26 03:06:53');
INSERT INTO `policy_version` VALUES ('b43a8b58-5b1d-41cb-bfa9-4ed8283d83d6', '37cf0a46-80ae-447e-b93e-dc9fe74c6d16', 1, '{\"Version\": \"1\", \"Statement\": [{\"Effect\": \"allow\", \"Action\": [\"*\"], \"Resource\": [\"*\"]}]}', 1, '2021-01-26 02:54:24');
INSERT INTO `policy_version` VALUES ('b8b2db13-e37f-43e1-8382-5e09c96d5ec6', '4dfff396-d894-4677-b43d-fcf7540bdc41', 1, '{\"Version\": \"1\", \"Statement\": [{\"Effect\": \"allow\", \"Action\": [\"ecs:*\"], \"Resource\": [\"*\"]}]}', 1, '2021-01-26 03:06:22');
INSERT INTO `policy_version` VALUES ('ecee90b2-eba0-465a-95f6-11a3f0de9edd', 'ede90a99-f1bd-43cb-83aa-502e13d05e6f', 1, '{\"Version\": \"1\", \"Statement\": [{\"Effect\": \"allow\", \"Action\": [\"iam:Get*\",\"iam:List*\"], \"Resource\": [\"*\"]}]}', 1, '2021-06-09 03:06:53');