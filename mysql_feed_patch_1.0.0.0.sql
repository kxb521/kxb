drop database if exists feed;
create database feed DEFAULT CHARACTER SET utf8mb4;

use feed;

drop table if exists feedapply_app_channel;
drop table if exists channel;
drop table if exists partner;
CREATE TABLE `partner` (
  `partner_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '唯一标识ID',
  `partner_code` varchar(16) NOT NULL COMMENT '合作方编码',
  `partner_name` varchar(32) NOT NULL COMMENT '合作方名称',
  `display_order` int(2) NOT NULL COMMENT '展示顺序',
  PRIMARY KEY (`partner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COMMENT='合作方表';

insert into `partner` (`partner_id`, `partner_code`, `partner_name`, `display_order`) values('1000','toutiao','今日头条','1');

CREATE TABLE `channel` (
  `channel_id` int(8) NOT NULL AUTO_INCREMENT COMMENT '唯一标识ID',
  `partner_id` int(4) NOT NULL COMMENT '合作方ID',
  `channel_code` varchar(16) NOT NULL COMMENT '频道编码',
  `channel_name` varchar(128) NOT NULL COMMENT '频道名称',
  `channel_name_3rd` varchar(128) NOT NULL COMMENT '第三方频道名称',
  PRIMARY KEY (`channel_id`),
  UNIQUE KEY `ui_channelcode` (`partner_id`,`channel_code`) USING BTREE,
  KEY `idx_channelcode` (`channel_code`) USING BTREE,
  KEY `fk_partnerid` (`partner_id`) USING BTREE,
  CONSTRAINT FOREIGN KEY (`partner_id`) REFERENCES `partner` (`partner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COMMENT='频道表';

insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1000','1000','__all__','推荐','推荐');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1001','1000','news_hot','热点','热点');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1002','1000','news_society','社会','社会');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1003','1000','news_entertainme','娱乐','娱乐');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1004','1000','news_tech','科技','科技');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1005','1000','news_car','汽车','汽车');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1006','1000','news_finance','财经','财经');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1007','1000','news_military','军事','军事');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1008','1000','news_sports','体育','体育');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1009','1000','news_pet','宠物','宠物');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1010','1000','news_culture','人文','人文');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1011','1000','news_world','国际','国际');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1012','1000','news_fashion','时尚','时尚');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1013','1000','news_travel','旅游','旅游');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1014','1000','news_history','历史','历史');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1015','1000','news_discovery','探索','探索');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1016','1000','news_food','美食','美食');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1017','1000','news_regimen','养生','养生');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1018','1000','news_health','健康','健康');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1019','1000','news_baby','育儿','育儿');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1020','1000','news_story','故事','故事');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1021','1000','news_essay','美文','美文');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1022','1000','news_edu','教育','教育');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1023','1000','news_house','房产','房产');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1024','1000','news_career','职场','职场');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1025','1000','news_photography','摄影','摄影');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1026','1000','news_comic','动漫','动漫');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1027','1000','news_astrology','星座','星座');
insert into `channel` (`channel_id`, `partner_id`, `channel_code`, `channel_name`, `channel_name_3rd`) values('1028','1000','video','视频','视频');

drop table if exists advertisement_apps;
drop table if exists feedapply_app;
CREATE TABLE `feedapply_app` (
  `app_id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT '唯一标识ID',
  `package_name` varchar(128) NOT NULL COMMENT '应用包名',
  `app_name` varchar(128) NOT NULL COMMENT '应用名称',
  `partner_id` int(4) NOT NULL COMMENT '合作方ID',
  `key` varchar(64) NOT NULL COMMENT '信息流接入应用key，自动产生，唯一标识',
  `note` varchar(256) NOT NULL DEFAULT "" COMMENT '备注',
  `url` varchar(1024) NOT NULL COMMENT '分发URL',
  `create_date` bigint(13) DEFAULT NULL COMMENT '创建时间',
  `last_update_date` bigint(13) DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`app_id`),
  UNIQUE KEY `ui_kay` (`key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COMMENT='信息流接入应用表';

CREATE TABLE `feedapply_app_channel` (
  `apply_id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT '唯一标识ID',
  `app_id` bigint(16) NOT NULL COMMENT '应用ID',
  `channel_id` int(4) NOT NULL COMMENT '频道ID',
  `display_order` int(2) NOT NULL COMMENT '展示顺序',
  PRIMARY KEY (`apply_id`),
  KEY `fk_appid` (`app_id`) USING BTREE,
  CONSTRAINT FOREIGN KEY (`app_id`) REFERENCES `feedapply_app` (`app_id`),
  KEY `fk_channelid` (`channel_id`) USING BTREE,
  CONSTRAINT FOREIGN KEY (`channel_id`) REFERENCES `channel` (`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COMMENT='信息流接入应用频道表';

drop table if exists advertisement_news;
drop table if exists advertising_news;
CREATE TABLE `advertising_news` (
  `news_id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT '唯一标识ID',
  `resource_type` int(1) NOT NULL COMMENT '资源类型：1 APK 2 图文',
  `news_type` int(1) NOT NULL COMMENT '新闻类型：1 无图 2 大图 3 三图 4 右图',
  `news_title` varchar(128) NOT NULL COMMENT '新闻标题',
  `news_from` varchar(32) NOT NULL DEFAULT '' COMMENT '新闻来源',
  `news_tag` varchar(32) NOT NULL DEFAULT '' COMMENT '新闻标签',
  `package_name` varchar(128) NOT NULL DEFAULT '' COMMENT '应用资源类型情况下填写包名',
  `url` varchar(1024) NOT NULL COMMENT '详情URL',
  `picture1` varchar(64) NOT NULL DEFAULT '' COMMENT '图片1',
  `picture2` varchar(64) NOT NULL DEFAULT '' COMMENT '图片2',
  `picture3` varchar(64) NOT NULL DEFAULT '' COMMENT '图片3',
  `create_date` bigint(13) NOT NULL COMMENT '创建时间',
  `last_update_date` bigint(13) NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COMMENT='广告新闻表';

drop table if exists advertisement;
CREATE TABLE `advertisement` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT '唯一标识ID',
  `pos` int(2) NOT NULL COMMENT '投放位置,1-10',
  `status` int(1) NOT NULL COMMENT '状态：0 下线 1 上线',
  `start_date` bigint(13) NOT NULL COMMENT '投放开始时间',
  `end_date` bigint(13) NOT NULL COMMENT '投放结束时间',
  `create_date` bigint(13) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COMMENT='投放表';

CREATE TABLE `advertisement_news` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT '唯一标识ID',
  `advertisement_id` bigint(16) NOT NULL COMMENT '投放ID',
  `news_id` bigint(16) NOT NULL COMMENT '投放新闻ID',
  PRIMARY KEY (`id`),
  KEY `fk_advertisementid` (`advertisement_id`) USING BTREE,
  CONSTRAINT FOREIGN KEY (`advertisement_id`) REFERENCES `advertisement` (`id`),
  KEY `fk_newsid` (`news_id`) USING BTREE,
  CONSTRAINT FOREIGN KEY (`news_id`) REFERENCES `advertising_news` (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COMMENT='投放新闻表';

CREATE TABLE `advertisement_apps` (
  `id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT '唯一标识ID',
  `advertisement_id` bigint(16) NOT NULL COMMENT '投放ID',
  `app_id` bigint(16) NOT NULL COMMENT '投放新闻ID',
  PRIMARY KEY (`id`),
  KEY `fk_advertisementid` (`advertisement_id`) USING BTREE,
  CONSTRAINT FOREIGN KEY (`advertisement_id`) REFERENCES `advertisement` (`id`),
  KEY `fk_appid` (`app_id`) USING BTREE,
  CONSTRAINT FOREIGN KEY (`app_id`) REFERENCES `feedapply_app` (`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COMMENT='投放应用表';

drop table if exists mappdatasynctask;
CREATE TABLE `mappdatasynctask` (
  `task_id` bigint(16) NOT NULL AUTO_INCREMENT COMMENT '唯一标识',
  `table_name` varchar(64) NOT NULL COMMENT '表名',
  `key_id` varchar(128) NOT NULL DEFAULT '' COMMENT 'redis key中每一类型唯一标识',
  `operation` int(1) NOT NULL COMMENT '0 增 1 删 2 改 9 全量数据同步',
  `create_date` bigint(13) NOT NULL COMMENT '创建时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0 待处理 1 成功 2 失败',
  `retry_times` int(2) NOT NULL DEFAULT '0' COMMENT '重试次数',
  PRIMARY KEY (`TaskID`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='同步任务表';

commit;