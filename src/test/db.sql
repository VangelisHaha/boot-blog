-- 业务分析
-- 文章表
create table blog_article
(
	article_id bigint auto_increment comment '主键'
		primary key,
	article_content text null comment '文章内容',
	article_title varchar(20) not null comment '文章标题',
	artcle_directory text null comment '文章目录',
	article_reading bigint default '0' not null comment '阅读量',
	blog_id bigint not null comment '博客id',
	delete_flag tinyint(1) default '1' null comment '全局统一逻辑删除字段，未删除为1.已删除为-1',
	create_time datetime default CURRENT_TIMESTAMP not null comment '创建时间',
	update_time datetime default CURRENT_TIMESTAMP null comment '创建时间'
)
comment '博客文章信息表'
;


create table blog_article_category
(
  rel_id int auto_increment comment '主键' primary key,
  category_id bigint(20) not null  comment '分类id',
  delete_flag tinyint(1) default '1' null comment '全局统一逻辑删除字段，未删除为1.已删除为-1',
  create_time datetime default NOW() not null comment '创建时间',
  update_time datetime default NOW()  null comment '创建时间'
)
  comment '博客文章对应分类表'
;
create table blog_article_tags
(
  rel_id int auto_increment comment '主键' primary key,
  tags_id bigint(20) not null  comment '标签id',
  delete_flag tinyint(1) default '1' null comment '全局统一逻辑删除字段，未删除为1.已删除为-1',
  create_time datetime default NOW() not null comment '创建时间',
  update_time datetime default NOW()  null comment '创建时间'
)
  comment '博客文章对应标签表'
;
create table blog_category
(
 category_id int auto_increment comment '主键' primary key,
  category_name varchar(20) not null  comment '分类名称',
  delete_flag tinyint(1) default '1' null comment '全局统一逻辑删除字段，未删除为1.已删除为-1',
  create_time datetime default NOW() not null comment '创建时间',
  update_time datetime default NOW()  null comment '创建时间'
)
  comment '分类信息表'
;
create table blog_tags
(
  category_id int auto_increment comment '主键' primary key,
  category_name varchar(20) not null  comment '标签名称',
  delete_flag tinyint(1) default '1' null comment '全局统一逻辑删除字段，未删除为1.已删除为-1',
  create_time datetime default NOW() not null comment '创建时间',
  update_time datetime default NOW()  null comment '创建时间'
)
  comment '标签信息表'
;
-- 用户信息
create table blog_info
(
  blog_id int auto_increment comment '主键' primary key,
  title varchar(10) null comment '标题',
  subtitle varchar(20) not null comment '文章标题',
  description varchar(80) not null comment '描述',
  author varchar(20) not null comment '作者',
  head varchar(128) not null comment '头像',
  delete_flag tinyint(1) default '1' null comment '全局统一逻辑删除字段，未删除为1.已删除为-1',
  create_time datetime default NOW() not null comment '创建时间',
  update_time datetime default NOW()  null comment '创建时间'
)
  comment '博客用户信息表'
;


