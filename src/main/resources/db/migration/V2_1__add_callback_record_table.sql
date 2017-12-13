CREATE TABLE `t_callback_message_send_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sendUrl` varchar(100) NOT NULL COMMENT '发送地址',
  `sendContent` mediumtext NOT NULL COMMENT '发送内容',
  `sendCount` int(5) DEFAULT '1' COMMENT '发送次数',
  `receivedContent` varchar(100) DEFAULT NULL,
  `received` tinyint(4) DEFAULT '0' COMMENT '是否确认收到消息，0尚未收到，1收到',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8