# 文章表
CREATE TABLE `cms_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(1024) DEFAULT NULL COMMENT '文章标题',
  `description` varchar(1024) DEFAULT NULL COMMENT '文章描述',
  `content` text DEFAULT NULL COMMENT '文章内容',
  `cover_image_path` varchar(255) DEFAULT NULL COMMENT '封面图片地址',
  `read_number` int(6) DEFAULT NULL COMMENT '文章阅读量',
  `identification` varchar(255) DEFAULT NULL COMMENT '文章唯一标识',
  `is_visible` tinyint(1) DEFAULT '1' COMMENT '文章是否可见：0->不可见；1->可见',
  `status` int(1) DEFAULT '0' COMMENT '文章状态：0->草稿；1->发布'
  `deleted` tinyint(1) DEFAULT '0' COMMENT '是否删除：0->未删除 1->已删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  `category_id` bigint(20) DEFAULT NULL COMMENT '分类ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='文章表';

# 标签表
CREATE TABLE `cms_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(225) DEFAULT NULL COMMENT '标签内容',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '是否删除：0. 未删除 1. 已删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='标签表';

# 文章标签关系表
CREATE TABLE `cms_article_tag_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `article_id` bigint(20) DEFAULT NULL COMMENT '文章ID',
  `tag_id` bigint(20) DEFAULT NULL COMMENT '标签ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='文章标签关系表';

# 订阅用户表
CREATE TABLE `ums_subscriber` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(200) DEFAULT NULL COMMENT '昵称',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `create_time` datetime DEFAULT NULL COMMENT '订阅时间',
  `status` int(1) DEFAULT '1' COMMENT '订阅开启状态：0->关闭；1->开启',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='订阅用户表';

# 文章订阅关系表
CREATE TABLE `ums_article_subscriber` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `article_id` bigint(20) DEFAULT NULL COMMENT '文章ID',
  `subscriber_id` bigint(20) DEFAULT NULL COMMENT '订阅用户ID',
  `status` int(1) DEFAULT NULL COMMENT '订阅邮件发送状态：0->失败；1->成功',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='订阅表';

# 分类表
CREATE TABLE `cms_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '是否删除：0->未删除 1->已删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_edit_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='分类表';