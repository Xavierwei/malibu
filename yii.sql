/*
Navicat MySQL Data Transfer

Source Server         : 172.16.111.87
Source Server Version : 50535
Source Host           : localhost:3306
Source Database       : yii

Target Server Type    : MYSQL
Target Server Version : 50535
File Encoding         : 65001

Date: 2014-04-23 19:42:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for v_admin
-- ----------------------------
DROP TABLE IF EXISTS `v_admin`;
CREATE TABLE `v_admin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `group_id` int(2) DEFAULT '0',
  `audit` int(1) DEFAULT '1',
  `name` varchar(100) DEFAULT NULL,
  `gender` int(1) DEFAULT '0',
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `last_login_time` int(10) NOT NULL DEFAULT '0',
  `last_logout_time` int(10) NOT NULL DEFAULT '0',
  `login_times` int(10) NOT NULL DEFAULT '0',
  `create_time` int(10) NOT NULL DEFAULT '0',
  `update_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_admin
-- ----------------------------
INSERT INTO `v_admin` VALUES ('1', 'admin', 'admin1234', '1', '1', '超级管理员', '0', 'dr@te.gd', '1562231414', '广州', '1398216605', '1398216742', '1290', '1328864440', '1398216742');
INSERT INTO `v_admin` VALUES ('4', '123456', '123456', '0', '1', '123456', '0', null, null, null, '1398216747', '0', '1', '1398168381', '1398216671');

-- ----------------------------
-- Table structure for v_advertisement
-- ----------------------------
DROP TABLE IF EXISTS `v_advertisement`;
CREATE TABLE `v_advertisement` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `link` varchar(150) DEFAULT NULL,
  `advertising_id` int(10) DEFAULT NULL,
  `photo1` varchar(100) DEFAULT NULL,
  `code` text,
  `audit` int(1) DEFAULT '0',
  `deadline` int(10) DEFAULT NULL,
  `create_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_advertisement
-- ----------------------------

-- ----------------------------
-- Table structure for v_advertising
-- ----------------------------
DROP TABLE IF EXISTS `v_advertising`;
CREATE TABLE `v_advertising` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `lft` int(10) DEFAULT '0',
  `rgt` int(10) DEFAULT '0',
  `parent` int(10) DEFAULT '0',
  `depth` int(10) DEFAULT '1',
  `audit` int(1) NOT NULL DEFAULT '1',
  `size` varchar(20) DEFAULT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `create_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_advertising
-- ----------------------------

-- ----------------------------
-- Table structure for v_article
-- ----------------------------
DROP TABLE IF EXISTS `v_article`;
CREATE TABLE `v_article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `leaf_id` int(10) DEFAULT NULL,
  `content` text,
  `audit` int(11) DEFAULT '0',
  `hot` int(1) DEFAULT '0',
  `recommend` int(1) DEFAULT '0',
  `photo1` varchar(120) NOT NULL,
  `photo2` varchar(120) NOT NULL,
  `hit` int(10) DEFAULT '0',
  `source` varchar(100) DEFAULT NULL,
  `source_url` varchar(120) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `create_time` int(10) NOT NULL DEFAULT '0',
  `update_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_article
-- ----------------------------

-- ----------------------------
-- Table structure for v_auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `v_auth_assignment`;
CREATE TABLE `v_auth_assignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_auth_assignment
-- ----------------------------
INSERT INTO `v_auth_assignment` VALUES ('超级管理员', '1', null, 'N;');
INSERT INTO `v_auth_assignment` VALUES ('123456', '4', null, 'N;');

-- ----------------------------
-- Table structure for v_auth_item
-- ----------------------------
DROP TABLE IF EXISTS `v_auth_item`;
CREATE TABLE `v_auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_auth_item
-- ----------------------------
INSERT INTO `v_auth_item` VALUES ('超级管理员', '2', '', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('siteIndex', '0', '系统设置访问', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('siteList', '0', '系统设置列表', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('siteEdit', '0', '系统设置编辑', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('siteAudit', '0', '系统设置审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('siteAuditAll', '0', '系统设置批量审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('siteUnAuditAll', '0', '系统设置批量不审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('siteHot', '0', '系统设置置热', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('siteRecommend', '0', '系统设置推荐', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('siteMoveUp', '0', '系统设置排序上移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('siteMoveDown', '0', '系统设置排序下移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('masterIndex', '0', '站长信息访问', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('masterList', '0', '站长信息列表', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('masterEdit', '0', '站长信息编辑', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('masterAudit', '0', '站长信息审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('masterAuditAll', '0', '站长信息批量审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('masterUnAuditAll', '0', '站长信息批量不审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('masterHot', '0', '站长信息置热', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('masterRecommend', '0', '站长信息推荐', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('masterMoveUp', '0', '站长信息排序上移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('masterMoveDown', '0', '站长信息排序下移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('databaseIndex', '0', '数 据 库访问', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('databaseList', '0', '数 据 库列表', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('databaseEdit', '0', '数 据 库编辑', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('databaseAudit', '0', '数 据 库审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('databaseAuditAll', '0', '数 据 库批量审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('databaseUnAuditAll', '0', '数 据 库批量不审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('databaseHot', '0', '数 据 库置热', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('databaseRecommend', '0', '数 据 库推荐', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('databaseMoveUp', '0', '数 据 库排序上移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('databaseMoveDown', '0', '数 据 库排序下移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('adminIndex', '0', '管 理 员访问', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('adminList', '0', '管 理 员列表', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('adminCreat', '0', '管 理 员创建', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('adminEdit', '0', '管 理 员编辑', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('adminAudit', '0', '管 理 员审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('adminAuditAll', '0', '管 理 员批量审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('adminUnAuditAll', '0', '管 理 员批量不审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('adminHot', '0', '管 理 员置热', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('adminRecommend', '0', '管 理 员推荐', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('adminMoveUp', '0', '管 理 员排序上移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('adminMoveDown', '0', '管 理 员排序下移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('adminDelete', '0', '管 理 员删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('adminDeleteAll', '0', '管 理 员批量删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('authorityIndex', '0', '权限分配访问', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('authorityList', '0', '权限分配列表', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('authorityEdit', '0', '权限分配编辑', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('authorityAudit', '0', '权限分配审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('authorityAuditAll', '0', '权限分配批量审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('authorityUnAuditAll', '0', '权限分配批量不审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('authorityHot', '0', '权限分配置热', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('authorityRecommend', '0', '权限分配推荐', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('authorityMoveUp', '0', '权限分配排序上移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('authorityMoveDown', '0', '权限分配排序下移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('memberIndex', '0', '普通会员访问', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('memberList', '0', '普通会员列表', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('memberCreat', '0', '普通会员创建', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('memberEdit', '0', '普通会员编辑', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('memberAudit', '0', '普通会员审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('memberAuditAll', '0', '普通会员批量审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('memberUnAuditAll', '0', '普通会员批量不审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('memberHot', '0', '普通会员置热', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('memberRecommend', '0', '普通会员推荐', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('memberMoveUp', '0', '普通会员排序上移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('memberMoveDown', '0', '普通会员排序下移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('memberDelete', '0', '普通会员删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('memberDeleteAll', '0', '普通会员批量删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('menuIndex', '0', '导航设置访问', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('menuList', '0', '导航设置列表', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('menuCreat', '0', '导航设置创建', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('menuEdit', '0', '导航设置编辑', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('menuAudit', '0', '导航设置审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('menuAuditAll', '0', '导航设置批量审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('menuUnAuditAll', '0', '导航设置批量不审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('menuHot', '0', '导航设置置热', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('menuRecommend', '0', '导航设置推荐', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('menuMoveUp', '0', '导航设置排序上移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('menuMoveDown', '0', '导航设置排序下移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('menuDelete', '0', '导航设置删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('menuDeleteAll', '0', '导航设置批量删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('newsIndex', '0', '导航文章访问', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('newsList', '0', '导航文章列表', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('newsCreat', '0', '导航文章创建', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('newsEdit', '0', '导航文章编辑', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('newsAudit', '0', '导航文章审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('newsAuditAll', '0', '导航文章批量审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('newsUnAuditAll', '0', '导航文章批量不审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('newsHot', '0', '导航文章置热', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('newsRecommend', '0', '导航文章推荐', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('newsMoveUp', '0', '导航文章排序上移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('newsMoveDown', '0', '导航文章排序下移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('newsDelete', '0', '导航文章删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('newsDeleteAll', '0', '导航文章批量删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('news_commentIndex', '0', '文章评论访问', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('news_commentList', '0', '文章评论列表', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('news_commentEdit', '0', '文章评论编辑', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('news_commentAudit', '0', '文章评论审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('news_commentAuditAll', '0', '文章评论批量审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('news_commentUnAuditAll', '0', '文章评论批量不审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('news_commentHot', '0', '文章评论置热', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('news_commentRecommend', '0', '文章评论推荐', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('news_commentMoveUp', '0', '文章评论排序上移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('news_commentMoveDown', '0', '文章评论排序下移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('news_commentDelete', '0', '文章评论删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('news_commentDeleteAll', '0', '文章评论批量删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('leafIndex', '0', '单页管理访问', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('leafList', '0', '单页管理列表', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('leafCreat', '0', '单页管理创建', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('leafEdit', '0', '单页管理编辑', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('leafAudit', '0', '单页管理审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('leafAuditAll', '0', '单页管理批量审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('leafUnAuditAll', '0', '单页管理批量不审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('leafHot', '0', '单页管理置热', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('leafRecommend', '0', '单页管理推荐', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('leafMoveUp', '0', '单页管理排序上移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('leafMoveDown', '0', '单页管理排序下移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('leafDelete', '0', '单页管理删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('leafDeleteAll', '0', '单页管理批量删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('articleIndex', '0', '单页文章访问', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('articleList', '0', '单页文章列表', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('articleCreat', '0', '单页文章创建', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('articleEdit', '0', '单页文章编辑', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('articleAudit', '0', '单页文章审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('articleAuditAll', '0', '单页文章批量审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('articleUnAuditAll', '0', '单页文章批量不审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('articleHot', '0', '单页文章置热', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('articleRecommend', '0', '单页文章推荐', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('articleMoveUp', '0', '单页文章排序上移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('articleMoveDown', '0', '单页文章排序下移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('articleDelete', '0', '单页文章删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('articleDeleteAll', '0', '单页文章批量删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('categoryIndex', '0', '产品分类访问', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('categoryList', '0', '产品分类列表', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('categoryCreat', '0', '产品分类创建', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('categoryEdit', '0', '产品分类编辑', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('categoryAudit', '0', '产品分类审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('categoryAuditAll', '0', '产品分类批量审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('categoryUnAuditAll', '0', '产品分类批量不审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('categoryHot', '0', '产品分类置热', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('categoryRecommend', '0', '产品分类推荐', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('categoryMoveUp', '0', '产品分类排序上移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('categoryMoveDown', '0', '产品分类排序下移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('categoryDelete', '0', '产品分类删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('categoryDeleteAll', '0', '产品分类批量删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('productIndex', '0', '产品管理访问', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('productList', '0', '产品管理列表', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('productCreat', '0', '产品管理创建', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('productEdit', '0', '产品管理编辑', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('productAudit', '0', '产品管理审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('productAuditAll', '0', '产品管理批量审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('productUnAuditAll', '0', '产品管理批量不审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('productHot', '0', '产品管理置热', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('productRecommend', '0', '产品管理推荐', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('productMoveUp', '0', '产品管理排序上移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('productMoveDown', '0', '产品管理排序下移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('productDelete', '0', '产品管理删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('productDeleteAll', '0', '产品管理批量删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('product_commentIndex', '0', '产品评论访问', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('product_commentList', '0', '产品评论列表', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('product_commentCreat', '0', '产品评论创建', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('product_commentEdit', '0', '产品评论编辑', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('product_commentAudit', '0', '产品评论审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('product_commentAuditAll', '0', '产品评论批量审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('product_commentUnAuditAll', '0', '产品评论批量不审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('product_commentHot', '0', '产品评论置热', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('product_commentRecommend', '0', '产品评论推荐', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('product_commentMoveUp', '0', '产品评论排序上移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('product_commentMoveDown', '0', '产品评论排序下移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('product_commentDelete', '0', '产品评论删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('product_commentDeleteAll', '0', '产品评论批量删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('typeIndex', '0', '图片分类访问', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('typeList', '0', '图片分类列表', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('typeCreat', '0', '图片分类创建', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('typeEdit', '0', '图片分类编辑', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('typeAudit', '0', '图片分类审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('typeAuditAll', '0', '图片分类批量审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('typeUnAuditAll', '0', '图片分类批量不审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('typeHot', '0', '图片分类置热', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('typeRecommend', '0', '图片分类推荐', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('typeMoveUp', '0', '图片分类排序上移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('typeMoveDown', '0', '图片分类排序下移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('typeDelete', '0', '图片分类删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('typeDeleteAll', '0', '图片分类批量删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('pictureIndex', '0', '图片管理访问', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('pictureList', '0', '图片管理列表', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('pictureCreat', '0', '图片管理创建', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('pictureEdit', '0', '图片管理编辑', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('pictureAudit', '0', '图片管理审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('pictureAuditAll', '0', '图片管理批量审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('pictureUnAuditAll', '0', '图片管理批量不审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('pictureHot', '0', '图片管理置热', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('pictureRecommend', '0', '图片管理推荐', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('pictureMoveUp', '0', '图片管理排序上移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('pictureMoveDown', '0', '图片管理排序下移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('pictureDelete', '0', '图片管理删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('pictureDeleteAll', '0', '图片管理批量删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('friend_linkIndex', '0', '友情链接访问', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('friend_linkList', '0', '友情链接列表', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('friend_linkCreat', '0', '友情链接创建', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('friend_linkEdit', '0', '友情链接编辑', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('friend_linkAudit', '0', '友情链接审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('friend_linkAuditAll', '0', '友情链接批量审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('friend_linkUnAuditAll', '0', '友情链接批量不审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('friend_linkHot', '0', '友情链接置热', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('friend_linkRecommend', '0', '友情链接推荐', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('friend_linkMoveUp', '0', '友情链接排序上移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('friend_linkMoveDown', '0', '友情链接排序下移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('friend_linkDelete', '0', '友情链接删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('friend_linkDeleteAll', '0', '友情链接批量删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisementIndex', '0', '广告管理访问', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisementList', '0', '广告管理列表', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisementCreat', '0', '广告管理创建', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisementEdit', '0', '广告管理编辑', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisementAudit', '0', '广告管理审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisementAuditAll', '0', '广告管理批量审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisementUnAuditAll', '0', '广告管理批量不审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisementHot', '0', '广告管理置热', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisementRecommend', '0', '广告管理推荐', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisementMoveUp', '0', '广告管理排序上移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisementMoveDown', '0', '广告管理排序下移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisementDelete', '0', '广告管理删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisementDeleteAll', '0', '广告管理批量删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisingIndex', '0', '广 告 位访问', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisingList', '0', '广 告 位列表', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisingCreat', '0', '广 告 位创建', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisingEdit', '0', '广 告 位编辑', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisingAudit', '0', '广 告 位审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisingAuditAll', '0', '广 告 位批量审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisingUnAuditAll', '0', '广 告 位批量不审核', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisingHot', '0', '广 告 位置热', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisingRecommend', '0', '广 告 位推荐', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisingMoveUp', '0', '广 告 位排序上移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisingMoveDown', '0', '广 告 位排序下移', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisingDelete', '0', '广 告 位删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('advertisingDeleteAll', '0', '广 告 位批量删除', null, 'N;');
INSERT INTO `v_auth_item` VALUES ('123456', '2', '', null, 'N;');

-- ----------------------------
-- Table structure for v_auth_item_children
-- ----------------------------
DROP TABLE IF EXISTS `v_auth_item_children`;
CREATE TABLE `v_auth_item_children` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_auth_item_children
-- ----------------------------
INSERT INTO `v_auth_item_children` VALUES ('123456', 'categoryAudit');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'categoryAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'categoryCreat');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'categoryDelete');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'categoryDeleteAll');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'categoryEdit');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'categoryHot');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'categoryIndex');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'categoryList');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'categoryMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'categoryMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'categoryRecommend');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'categoryUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'menuAudit');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'menuAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'menuCreat');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'menuDelete');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'menuDeleteAll');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'menuEdit');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'menuHot');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'menuIndex');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'menuList');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'menuMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'menuMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'menuRecommend');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'menuUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'newsAudit');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'newsAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'newsCreat');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'newsDelete');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'newsDeleteAll');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'newsEdit');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'newsHot');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'newsIndex');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'newsList');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'newsMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'newsMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'newsRecommend');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'newsUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'productAudit');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'productAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'productCreat');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'productDelete');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'productDeleteAll');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'productEdit');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'productHot');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'productIndex');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'productList');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'productMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'productMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'productRecommend');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'productUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'product_commentAudit');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'product_commentAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'product_commentCreat');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'product_commentDelete');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'product_commentDeleteAll');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'product_commentEdit');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'product_commentHot');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'product_commentIndex');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'product_commentList');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'product_commentMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'product_commentMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'product_commentRecommend');
INSERT INTO `v_auth_item_children` VALUES ('123456', 'product_commentUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'adminAudit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'adminAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'adminCreat');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'adminDelete');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'adminDeleteAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'adminEdit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'adminHot');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'adminIndex');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'adminList');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'adminMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'adminMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'adminRecommend');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'adminUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisementAudit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisementAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisementCreat');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisementDelete');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisementDeleteAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisementEdit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisementHot');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisementIndex');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisementList');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisementMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisementMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisementRecommend');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisementUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisingAudit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisingAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisingCreat');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisingDelete');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisingDeleteAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisingEdit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisingHot');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisingIndex');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisingList');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisingMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisingMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisingRecommend');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'advertisingUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'articleAudit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'articleAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'articleCreat');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'articleDelete');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'articleDeleteAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'articleEdit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'articleHot');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'articleIndex');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'articleList');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'articleMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'articleMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'articleRecommend');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'articleUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'authorityAudit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'authorityAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'authorityEdit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'authorityHot');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'authorityIndex');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'authorityList');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'authorityMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'authorityMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'authorityRecommend');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'authorityUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'categoryAudit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'categoryAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'categoryCreat');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'categoryDelete');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'categoryDeleteAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'categoryEdit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'categoryHot');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'categoryIndex');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'categoryList');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'categoryMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'categoryMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'categoryRecommend');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'categoryUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'databaseAudit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'databaseAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'databaseEdit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'databaseHot');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'databaseIndex');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'databaseList');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'databaseMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'databaseMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'databaseRecommend');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'databaseUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'friend_linkAudit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'friend_linkAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'friend_linkCreat');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'friend_linkDelete');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'friend_linkDeleteAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'friend_linkEdit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'friend_linkHot');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'friend_linkIndex');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'friend_linkList');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'friend_linkMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'friend_linkMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'friend_linkRecommend');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'friend_linkUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'leafAudit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'leafAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'leafCreat');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'leafDelete');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'leafDeleteAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'leafEdit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'leafHot');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'leafIndex');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'leafList');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'leafMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'leafMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'leafRecommend');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'leafUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'masterAudit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'masterAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'masterEdit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'masterHot');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'masterIndex');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'masterList');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'masterMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'masterMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'masterRecommend');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'masterUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'memberAudit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'memberAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'memberCreat');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'memberDelete');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'memberDeleteAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'memberEdit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'memberHot');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'memberIndex');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'memberList');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'memberMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'memberMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'memberRecommend');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'memberUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'menuAudit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'menuAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'menuCreat');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'menuDelete');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'menuDeleteAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'menuEdit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'menuHot');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'menuIndex');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'menuList');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'menuMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'menuMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'menuRecommend');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'menuUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'newsAudit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'newsAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'newsCreat');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'newsDelete');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'newsDeleteAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'newsEdit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'newsHot');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'newsIndex');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'newsList');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'newsMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'newsMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'newsRecommend');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'newsUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'news_commentAudit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'news_commentAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'news_commentDelete');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'news_commentDeleteAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'news_commentEdit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'news_commentHot');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'news_commentIndex');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'news_commentList');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'news_commentMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'news_commentMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'news_commentRecommend');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'news_commentUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'pictureAudit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'pictureAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'pictureCreat');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'pictureDelete');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'pictureDeleteAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'pictureEdit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'pictureHot');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'pictureIndex');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'pictureList');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'pictureMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'pictureMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'pictureRecommend');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'pictureUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'productAudit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'productAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'productCreat');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'productDelete');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'productDeleteAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'productEdit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'productHot');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'productIndex');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'productList');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'productMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'productMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'productRecommend');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'productUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'product_commentAudit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'product_commentAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'product_commentCreat');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'product_commentDelete');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'product_commentDeleteAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'product_commentEdit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'product_commentHot');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'product_commentIndex');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'product_commentList');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'product_commentMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'product_commentMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'product_commentRecommend');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'product_commentUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'siteAudit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'siteAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'siteEdit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'siteHot');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'siteIndex');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'siteList');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'siteMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'siteMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'siteRecommend');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'siteUnAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'typeAudit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'typeAuditAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'typeCreat');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'typeDelete');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'typeDeleteAll');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'typeEdit');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'typeHot');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'typeIndex');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'typeList');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'typeMoveDown');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'typeMoveUp');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'typeRecommend');
INSERT INTO `v_auth_item_children` VALUES ('超级管理员', 'typeUnAuditAll');

-- ----------------------------
-- Table structure for v_category
-- ----------------------------
DROP TABLE IF EXISTS `v_category`;
CREATE TABLE `v_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `component` varchar(50) DEFAULT NULL,
  `lft` int(10) NOT NULL DEFAULT '0',
  `rgt` int(10) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `depth` int(10) DEFAULT '1',
  `content` text,
  `audit` int(1) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `update_time` int(15) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `lft` (`lft`,`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_category
-- ----------------------------
INSERT INTO `v_category` VALUES ('9', '马利宝新闻', '马利宝新闻', '1', '2', '0', '1', null, '1', null, null, null, '1398185847');

-- ----------------------------
-- Table structure for v_friend_link
-- ----------------------------
DROP TABLE IF EXISTS `v_friend_link`;
CREATE TABLE `v_friend_link` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `link` varchar(150) DEFAULT NULL,
  `menu_id` int(10) DEFAULT NULL,
  `photo1` varchar(100) DEFAULT NULL,
  `webmaster` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `content` text,
  `audit` int(1) DEFAULT '0',
  `create_time` int(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_friend_link
-- ----------------------------

-- ----------------------------
-- Table structure for v_leaf
-- ----------------------------
DROP TABLE IF EXISTS `v_leaf`;
CREATE TABLE `v_leaf` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `component` varchar(50) DEFAULT NULL,
  `lft` int(10) NOT NULL DEFAULT '0',
  `rgt` int(10) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `depth` int(10) DEFAULT '1',
  `content` text,
  `audit` int(1) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `update_time` int(15) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `lft` (`lft`,`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_leaf
-- ----------------------------

-- ----------------------------
-- Table structure for v_master
-- ----------------------------
DROP TABLE IF EXISTS `v_master`;
CREATE TABLE `v_master` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `organization` varchar(100) DEFAULT NULL,
  `master` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `update_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_master
-- ----------------------------
INSERT INTO `v_master` VALUES ('1', '测试', '测试', '15622370789', null, 'dr@te.gd', '测试', '515424', '1398169372');

-- ----------------------------
-- Table structure for v_member
-- ----------------------------
DROP TABLE IF EXISTS `v_member`;
CREATE TABLE `v_member` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `audit` int(1) DEFAULT '1',
  `name` varchar(40) DEFAULT NULL,
  `gender` int(1) DEFAULT '0',
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `photo1` varchar(120) DEFAULT NULL,
  `last_login_time` int(15) NOT NULL DEFAULT '0',
  `last_logout_time` int(15) NOT NULL DEFAULT '0',
  `login_times` int(10) DEFAULT '0',
  `create_time` int(15) NOT NULL DEFAULT '0',
  `update_time` int(15) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_member
-- ----------------------------

-- ----------------------------
-- Table structure for v_menu
-- ----------------------------
DROP TABLE IF EXISTS `v_menu`;
CREATE TABLE `v_menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `component` varchar(50) DEFAULT NULL,
  `lft` int(10) NOT NULL DEFAULT '0',
  `rgt` int(10) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `depth` int(10) DEFAULT '1',
  `photo1` varchar(120) NOT NULL,
  `content` text,
  `audit` int(1) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `update_time` int(15) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `lft` (`lft`,`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_menu
-- ----------------------------
INSERT INTO `v_menu` VALUES ('1', '马利宝品牌', 'index', '1', '2', '0', '1', '/malibu/upload/image/menu/201404/20140423162226_51748.png', '<p>\r\n	&nbsp;正如其白色瓶身上绘以棕榈树和加勒比红日，马利宝是350年朗姆酒制造历史上悠闲的一环。马利宝的故乡是西印度群岛朗姆酒酿酒厂，传统工艺和现代技术的结合使它与众不同。至今人们仍采用群岛上出产的甘蔗榨出的优质糖浆、纯净的泉水以及精选的酵母来促成发酵，最后的点睛之笔是椰汁和糖，这样就制成了顺滑清爽的朗姆酒。<br />\r\n&nbsp;<br />\r\n1980年，马利宝首次来到英国，被形容为“天堂般的味道”。两年后，随着它的广泛流行，这款烈酒也被销往欧洲其他国家。1983年马利宝登陆美国，被认为是“比朗姆更有趣的酒”。<br />\r\n&nbsp;<br />\r\n如今，马利宝已经成为世界上最畅销的加勒比海椰子朗姆酒，以其招牌的白色酒瓶和清新的风味著称于世。它可直接饮用，也可用于调配多姿多彩的鸡尾酒，让每一个平淡日子都变为迷人假日。马利宝独特的广告语“开启你的阳光海岸”，时刻向人们传递着加勒比海活力无限的生活态度。\r\n</p>', '1', '马利宝', null, null, '1398243866');
INSERT INTO `v_menu` VALUES ('2', '马利宝产品', 'product', '3', '8', '0', '1', '', null, '1', '马利宝产品', null, null, '1398243937');
INSERT INTO `v_menu` VALUES ('3', '椰子味朗姆预调酒', 'rtd', '4', '5', '2', '2', '/malibu/upload/image/menu/201404/20140423162324_58271.png', '马利宝近日为追求个性、创新的广大中国年轻消费者们，特别推出三款口感清爽、易于饮用的预调酒。<br />\r\n&nbsp;- 酷爽椰子风味<br />\r\n&nbsp;- 阳光柠檬风味（含椰子味）<br />\r\n&nbsp;- 热情可乐风味（含椰子味）<br />\r\n&nbsp;<br />\r\n由100%进口马利宝加勒比朗姆酒调制，独特的椰子风味带来清爽鲜活口感，马利宝椰子味朗姆预调酒再次向人们传递加勒比海活力无限与悠然自得的生活态度。<br />\r\n<br />\r\n快让一瓶冰镇马利宝椰子味朗姆预调酒带你感受热带加勒比的自由愉悦，乐活所有细胞。不论独饮，还是约上三五好友，无乐不作的你，岂能错过！ <br />\r\n<br />', '1', '椰子味朗姆预调酒', null, null, '1398246955');
INSERT INTO `v_menu` VALUES ('5', '媒体中心', 'media', '9', '14', '0', '1', '', null, '1', '媒体中心', null, null, '1398243976');
INSERT INTO `v_menu` VALUES ('10', '朗姆酒', 'original', '6', '7', '2', '2', '/malibu/upload/image/menu/201404/20140423162353_34927.png', '全球排名第一的加勒比海椰子朗姆酒、以其白色酒瓶和清新风味著称于世；<br />\r\n产自加勒比海地区西印度群岛朗姆酒酿酒厂、具有加勒比海真实的风味；<br />\r\n世界上最古老的通过蒸馏生产的烈酒、也是350年朗姆酒制造历史上悠闲的一环；<br />\r\n原料：西印度群岛上出产的新鲜甘蔗汁、蔗糖或糖蜜以及纯净泉水。<br />\r\n<br />\r\n马利宝拥有丰饶圆润的椰子芳香和淡淡的烘焙香，味道就象饱满多脂的椰子，同时混合了香草和奶油冰淇淋。较低的酒精度（21%），更易于饮用。无论是纯饮，加冰块，或是按照个人喜好来调配，马利宝都令饮品充满了醉人的加勒比风情。', '1', '朗姆酒', null, null, '1398246974');
INSERT INTO `v_menu` VALUES ('11', '马利宝新闻', 'news', '10', '11', '5', '2', '', null, '1', null, null, null, '1398246993');
INSERT INTO `v_menu` VALUES ('12', '马利宝墙纸下载', 'download', '12', '13', '5', '2', '', null, '1', null, null, null, '1398247003');

-- ----------------------------
-- Table structure for v_news
-- ----------------------------
DROP TABLE IF EXISTS `v_news`;
CREATE TABLE `v_news` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `menu_id` int(10) DEFAULT NULL,
  `content` text,
  `audit` int(11) DEFAULT '0',
  `hot` int(1) DEFAULT '0',
  `recommend` int(1) DEFAULT '0',
  `photo1` varchar(120) NOT NULL,
  `photo2` varchar(120) NOT NULL,
  `hit` int(10) DEFAULT '0',
  `comment_number` int(10) NOT NULL DEFAULT '0',
  `source` varchar(100) DEFAULT NULL,
  `source_url` varchar(512) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `create_time` int(10) NOT NULL DEFAULT '0',
  `update_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_news
-- ----------------------------
INSERT INTO `v_news` VALUES ('4', '马利宝阳光水果', '10', '给生活酷爽感觉，往你的马利宝朗姆酒中加入可乐，完成一杯清爽的饮料。', '1', '0', '0', '/malibu/upload/image/news/201404/20140423012151_17912.jpg', '', '0', '0', null, 'http://172.0.com', null, null, '1398187038', '1398187965');
INSERT INTO `v_news` VALUES ('5', '马利宝酷爽一夏', '10', '包括：', '1', '0', '0', '/malibu/upload/image/news/201404/20140423012121_10387.jpg', '', '0', '0', null, null, null, null, '1398187263', '1398187285');
INSERT INTO `v_news` VALUES ('3', '马利宝热情阳光', '10', '- 50ml马利宝朗姆酒 - 100ml可乐 - 少许安哥士苦精 - 半只酸橙', '1', '0', '0', '/malibu/upload/image/news/201404/20140423012234_10505.jpg', '', '0', '0', null, null, null, null, '1398184687', '1398187359');
INSERT INTO `v_news` VALUES ('6', '墙纸1', '12', '墙纸1', '1', '0', '0', '/malibu/upload/image/news/201404/20140423022111_55216.jpg', '', '0', '0', null, null, null, null, '1398190878', '1398190878');
INSERT INTO `v_news` VALUES ('7', '墙纸2', '12', '墙纸2', '1', '0', '0', '/malibu/upload/image/news/201404/20140423022134_19893.jpg', '', '0', '0', null, null, null, null, '1398190899', '1398190899');
INSERT INTO `v_news` VALUES ('8', '马利宝阳光水果2', '10', '如何调制：', '1', '0', '0', '/malibu/upload/image/news/201404/20140423012151_17912.jpg', '', '0', '0', '', 'http://172.0.com', '', '', '1398187038', '1398187965');
INSERT INTO `v_news` VALUES ('9', '马利宝酷爽一夏2', '10', '用高酒杯混合新鲜酸橙和安古斯图腊树苦补药以及马利宝朗姆酒，加上冰块并最后加入可乐。', '1', '0', '0', '/malibu/upload/image/news/201404/20140423012121_10387.jpg', '', '0', '0', '', '', '', '', '1398187263', '1398187285');
INSERT INTO `v_news` VALUES ('10', '马利宝热情阳光2', '10', '马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光', '1', '0', '0', '/malibu/upload/image/news/201404/20140423012234_10505.jpg', '', '0', '0', '', '', '', '', '1398184687', '1398187359');
INSERT INTO `v_news` VALUES ('11', '马墙纸12', '12', '墙纸1', '1', '0', '0', '/malibu/upload/image/news/201404/20140423022111_55216.jpg', '', '0', '0', '', '', '', '', '1398190878', '1398190878');
INSERT INTO `v_news` VALUES ('12', '墙纸22', '12', '墙纸2', '1', '0', '0', '/malibu/upload/image/news/201404/20140423022134_19893.jpg', '', '0', '0', '', '', '', '', '1398190899', '1398190899');
INSERT INTO `v_news` VALUES ('13', '马利宝阳光水果3', '10', '', '1', '0', '0', '/malibu/upload/image/news/201404/20140423012151_17912.jpg', '', '0', '0', '', 'http://172.0.com', '', '', '1398187038', '1398195279');
INSERT INTO `v_news` VALUES ('14', '马利宝酷爽一夏3', '10', '', '1', '0', '0', '/malibu/upload/image/news/201404/20140423012121_10387.jpg', '', '0', '0', '', '', '', '', '1398187263', '1398187285');
INSERT INTO `v_news` VALUES ('15', '马利宝热情阳光3', '10', '马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光', '1', '0', '0', '/malibu/upload/image/news/201404/20140423012234_10505.jpg', '', '0', '0', '', '', '', '', '1398184687', '1398187359');
INSERT INTO `v_news` VALUES ('16', '墙纸13', '12', '墙纸1', '1', '0', '0', '/malibu/upload/image/news/201404/20140423022111_55216.jpg', '', '0', '0', '', '', '', '', '1398190878', '1398190878');
INSERT INTO `v_news` VALUES ('17', '墙纸23', '12', '墙纸2', '1', '0', '0', '/malibu/upload/image/news/201404/20140423022134_19893.jpg', '', '0', '0', '', '', '', '', '1398190899', '1398190899');
INSERT INTO `v_news` VALUES ('18', '马利宝阳光水果4', '10', '', '1', '0', '0', '/malibu/upload/image/news/201404/20140423012151_17912.jpg', '', '0', '0', '', 'http://172.0.com', '', '', '1398187038', '1398187965');
INSERT INTO `v_news` VALUES ('19', '马利宝酷爽一夏4', '10', '', '1', '0', '0', '/malibu/upload/image/news/201404/20140423012121_10387.jpg', '', '0', '0', '', '', '', '', '1398187263', '1398187285');
INSERT INTO `v_news` VALUES ('20', '马利宝热情阳光4', '10', '马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光', '1', '0', '0', '/malibu/upload/image/news/201404/20140423012234_10505.jpg', '', '0', '0', '', '', '', '', '1398184687', '1398187359');
INSERT INTO `v_news` VALUES ('23', '马利宝热情阳光5', '10', '马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光', '1', '0', '0', '/malibu/upload/image/news/201404/20140423012234_10505.jpg', '', '0', '0', '', '', '', '', '1398184687', '1398187359');
INSERT INTO `v_news` VALUES ('24', '墙纸15', '12', '墙纸1', '1', '0', '0', '/malibu/upload/image/news/201404/20140423022111_55216.jpg', '', '0', '0', '', '', '', '', '1398190878', '1398190878');
INSERT INTO `v_news` VALUES ('25', '墙纸25', '12', '墙纸2', '1', '0', '0', '/malibu/upload/image/news/201404/20140423022134_19893.jpg', '', '0', '0', '', '', '', '', '1398190899', '1398190899');
INSERT INTO `v_news` VALUES ('26', '马利宝阳光水果6', '10', '', '1', '0', '0', '/malibu/upload/image/news/201404/20140423012151_17912.jpg', '', '0', '0', '', 'http://172.0.com', '', '', '1398187038', '1398187965');
INSERT INTO `v_news` VALUES ('27', '马利宝酷爽一夏6', '10', '', '1', '0', '0', '/malibu/upload/image/news/201404/20140423012121_10387.jpg', '', '0', '0', '', '', '', '', '1398187263', '1398187285');
INSERT INTO `v_news` VALUES ('28', '马利宝热情阳光6', '10', '马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光', '1', '0', '0', '/malibu/upload/image/news/201404/20140423012234_10505.jpg', '', '0', '0', '', '', '', '', '1398184687', '1398187359');
INSERT INTO `v_news` VALUES ('29', '墙纸16', '12', '墙纸1', '1', '0', '0', '/malibu/upload/image/news/201404/20140423022111_55216.jpg', '', '0', '0', '', '', '', '', '1398190878', '1398190878');
INSERT INTO `v_news` VALUES ('30', '墙纸26', '12', '墙纸2', '1', '0', '0', '/malibu/upload/image/news/201404/20140423022134_19893.jpg', '', '0', '0', '', '', '', '', '1398190899', '1398190899');
INSERT INTO `v_news` VALUES ('31', '马利宝阳光水果7', '10', '', '1', '0', '0', '/malibu/upload/image/news/201404/20140423012151_17912.jpg', '', '0', '0', '', 'http://172.0.com', '', '', '1398187038', '1398187965');
INSERT INTO `v_news` VALUES ('32', '马利宝酷爽一夏7', '10', '', '1', '0', '0', '/malibu/upload/image/news/201404/20140423012121_10387.jpg', '', '0', '0', '', '', '', '', '1398187263', '1398187285');
INSERT INTO `v_news` VALUES ('33', '马利宝热情阳光7', '10', '马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光马利宝热情阳光', '1', '0', '0', '/malibu/upload/image/news/201404/20140423012234_10505.jpg', '', '0', '0', '', '', '', '', '1398184687', '1398187359');
INSERT INTO `v_news` VALUES ('34', '墙纸17', '12', '墙纸1', '1', '0', '0', '/malibu/upload/image/news/201404/20140423022111_55216.jpg', '', '0', '0', '', '', '', '', '1398190878', '1398190878');
INSERT INTO `v_news` VALUES ('35', '墙纸28', '12', '墙纸2', '1', '0', '0', '/malibu/upload/image/news/201404/20140423022134_19893.jpg', '', '0', '0', '', '', '', '', '1398190899', '1398190899');

-- ----------------------------
-- Table structure for v_news_comment
-- ----------------------------
DROP TABLE IF EXISTS `v_news_comment`;
CREATE TABLE `v_news_comment` (
  `id` int(10) NOT NULL,
  `news_id` int(10) NOT NULL,
  `member_id` int(10) NOT NULL,
  `content` text NOT NULL,
  `audit` int(1) NOT NULL DEFAULT '0',
  `hot` int(1) NOT NULL DEFAULT '0',
  `create_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_news_comment
-- ----------------------------

-- ----------------------------
-- Table structure for v_picture
-- ----------------------------
DROP TABLE IF EXISTS `v_picture`;
CREATE TABLE `v_picture` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `type_id` int(10) DEFAULT NULL,
  `content` text,
  `audit` int(11) DEFAULT '0',
  `hot` int(1) DEFAULT '0',
  `recommend` int(1) DEFAULT '0',
  `photo1` varchar(120) NOT NULL,
  `photo2` varchar(120) NOT NULL,
  `hit` int(10) DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `create_time` int(10) NOT NULL DEFAULT '0',
  `update_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_picture
-- ----------------------------

-- ----------------------------
-- Table structure for v_product
-- ----------------------------
DROP TABLE IF EXISTS `v_product`;
CREATE TABLE `v_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `category_id` int(10) DEFAULT NULL,
  `content` text,
  `audit` int(11) DEFAULT '0',
  `hot` int(1) DEFAULT '0',
  `recommend` int(1) DEFAULT '0',
  `photo1` varchar(120) NOT NULL,
  `photo2` varchar(120) NOT NULL,
  `photo3` varchar(120) NOT NULL,
  `photo4` varchar(120) NOT NULL,
  `photo5` varchar(120) NOT NULL,
  `hit` int(10) DEFAULT '0',
  `star` int(1) NOT NULL DEFAULT '0',
  `comment_number` int(10) NOT NULL DEFAULT '0',
  `price` decimal(10,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `create_time` int(10) NOT NULL DEFAULT '0',
  `update_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_product
-- ----------------------------
INSERT INTO `v_product` VALUES ('3', 'Burnin\' Up presented by Ne-Yo and Malibu Red', '9', 'Burnin\' Up presented by Ne-Yo and Malibu Red', '1', '0', '0', '/malibu/upload/image/product/201404/20140423021417_99843.jpg', '/malibu/upload/image/product/201404/20140423021836_95245.jpg', '/malibu/upload/image/product/201404/20140423022000_75299.jpg', '/malibu/upload/image/product/201404/20140423022002_76860.jpg', '/malibu/upload/image/product/201404/20140423022004_50437.jpg', '0', '0', '0', '12.00', null, null, '1398186081', '1398190808');

-- ----------------------------
-- Table structure for v_product_comment
-- ----------------------------
DROP TABLE IF EXISTS `v_product_comment`;
CREATE TABLE `v_product_comment` (
  `id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `member_id` int(10) NOT NULL,
  `content` text NOT NULL,
  `star` int(11) NOT NULL,
  `audit` int(1) NOT NULL DEFAULT '0',
  `hot` int(1) NOT NULL DEFAULT '0',
  `create_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_product_comment
-- ----------------------------

-- ----------------------------
-- Table structure for v_session
-- ----------------------------
DROP TABLE IF EXISTS `v_session`;
CREATE TABLE `v_session` (
  `id` char(32) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of v_session
-- ----------------------------
INSERT INTO `v_session` VALUES ('022usq4n53hp6conuqnr2usng6', '1398256379', '');
INSERT INTO `v_session` VALUES ('0bum4l2vpd0e35os5qv3hef9o7', '1398255650', '');
INSERT INTO `v_session` VALUES ('0cero340e2sg16t5b9nj156405', '1398253431', '');
INSERT INTO `v_session` VALUES ('0fhhghlioa7rseobl3uh0ob9t3', '1398255705', '');
INSERT INTO `v_session` VALUES ('1g3l7ck2226ngg8l81rm59gsl1', '1398256483', '');
INSERT INTO `v_session` VALUES ('1q32arhcercamu1gsg06s34t34', '1398253970', '');
INSERT INTO `v_session` VALUES ('1ukm08rim379pr3e6cmcp9s0t2', '1398256054', '');
INSERT INTO `v_session` VALUES ('23vo0f3hvupktjn2a3cm7smoc0', '1398256150', '');
INSERT INTO `v_session` VALUES ('3e9kobaedqgadoi618mqrielr7', '1398253902', '');
INSERT INTO `v_session` VALUES ('48en8br51q2kdk1tvbuc9uh6q1', '1398253580', '');
INSERT INTO `v_session` VALUES ('4adhceeb62g1hg404npr7ps2d6', '1398256654', '');
INSERT INTO `v_session` VALUES ('4b0p6sh9enppk4b6bgqm89l501', '1398254971', '');
INSERT INTO `v_session` VALUES ('4uv99617nvdoa51svc6n1cguj4', '1398255716', '');
INSERT INTO `v_session` VALUES ('5drgmakn5usmshf7f9iha9b1l0', '1398254420', '');
INSERT INTO `v_session` VALUES ('5h4qur81l7vrlkj8psdpub6ai6', '1398256392', '');
INSERT INTO `v_session` VALUES ('5imt9gpgbk8d9sfbc9obs4lu17', '1398256492', '');
INSERT INTO `v_session` VALUES ('5it42n3jk65lqplbernl4ia6b5', '1398256390', '');
INSERT INTO `v_session` VALUES ('5v0hia0namm5tdtvt8dufgt2g3', '1398256651', '');
INSERT INTO `v_session` VALUES ('5v8v0fm5fugujrikrdd98jvp94', '1398255102', '');
INSERT INTO `v_session` VALUES ('6m8kl4uf7bijkoudlb3b0ovls5', '1398256372', '');
INSERT INTO `v_session` VALUES ('6r823ioqn0gn3kva5vsddo4sv5', '1398255711', '');
INSERT INTO `v_session` VALUES ('6tavmd7qt38v3gser9bgpmhbf6', '1398255653', '');
INSERT INTO `v_session` VALUES ('76tpco8csedj8rlg5s4flh0hg2', '1398253432', '');
INSERT INTO `v_session` VALUES ('7ap26hu2vora1jsanr7fu4cr41', '1398255623', '');
INSERT INTO `v_session` VALUES ('7d34jkf9sr6gss343k7ihd4ct7', '1398253584', '');
INSERT INTO `v_session` VALUES ('90t80oo2cg2eou0fsqilngda12', '1398256122', '');
INSERT INTO `v_session` VALUES ('9pei9m9pjii16fbannfv18ehv5', '1398253575', '');
INSERT INTO `v_session` VALUES ('9ql5qc93od336h9qfv655dlif7', '1398254806', '');
INSERT INTO `v_session` VALUES ('9v98td2m5eddn0pou6udj3mim2', '1398256495', '');
INSERT INTO `v_session` VALUES ('a0qeeiqc2ksl8j1vhv8arf4vm2', '1398255557', '');
INSERT INTO `v_session` VALUES ('ae6sc657o11oonio07u0a0db01', '1398255216', '');
INSERT INTO `v_session` VALUES ('am0atn39o28kaa878asp1r41u4', '1398255730', '');
INSERT INTO `v_session` VALUES ('b3263ehd45ojdv01rf0mgjlhk1', '1398254041', '');
INSERT INTO `v_session` VALUES ('b4hclgllagqbr7q3dh2kta5066', '1398253589', '');
INSERT INTO `v_session` VALUES ('b4j45g38kj301eldm87hg7pm73', '1398255562', '');
INSERT INTO `v_session` VALUES ('b9f3lphh3r35ee7cpengfp8mv7', '1398256490', '');
INSERT INTO `v_session` VALUES ('bkift4maf9v3mvhkokqssuh4e7', '1398255384', '');
INSERT INTO `v_session` VALUES ('c3dj6j4pvas5qk93tobj7ida63', '1398255490', '');
INSERT INTO `v_session` VALUES ('div5cvfmb4c3d0fsfqcr3an3o5', '1398256247', '');
INSERT INTO `v_session` VALUES ('dnuh7bpt0qca8gef05mrh63pb1', '1398256487', '');
INSERT INTO `v_session` VALUES ('do7touumqg2h4tt29g0vvg5p96', '1398256030', '');
INSERT INTO `v_session` VALUES ('doq6tlf5nim8asn4eunli2jju5', '1398255106', '');
INSERT INTO `v_session` VALUES ('ecm525cmpk3elt6tqsjkbv6i31', '1398255728', '');
INSERT INTO `v_session` VALUES ('ektbect2mj5onoufare50bs5c6', '1398254417', '');
INSERT INTO `v_session` VALUES ('fjvrkerlgdo4pv3m8pj94kovk1', '1398253587', '');
INSERT INTO `v_session` VALUES ('g6mb54d396j02a4f1knkpdf8a6', '1398255556', '');
INSERT INTO `v_session` VALUES ('g7ckrhqlul3j4g8uqvjql6ort3', '1398253577', '');
INSERT INTO `v_session` VALUES ('gk22dpoeepq86vjlsk52pg8fs0', '1398256241', '');
INSERT INTO `v_session` VALUES ('gvqjtqbjsv065ek1kfnqa0qud0', '1398254779', '');
INSERT INTO `v_session` VALUES ('h8cp9t38ubs312efd0l66qrra1', '1398256078', '');
INSERT INTO `v_session` VALUES ('h9769jere1p2hnbat8hl1nu6o2', '1398255495', '');
INSERT INTO `v_session` VALUES ('hcreg5n3p4fh0om3vf6v6m55c2', '1398256497', '');
INSERT INTO `v_session` VALUES ('ht5es9a6q61j1dgcum6npkhpp0', '1398256508', '');
INSERT INTO `v_session` VALUES ('humk1fqijlaj0vt1orea47kdk3', '1398255493', '');
INSERT INTO `v_session` VALUES ('i4cdvt3q47lhfp4vhof6uduk53', '1398256195', '');
INSERT INTO `v_session` VALUES ('ig8p012moe8mpv53t7p2noc2e5', '1398254197', '');
INSERT INTO `v_session` VALUES ('irbn6od3j91am9jvpehqmsibc7', '1398255499', '');
INSERT INTO `v_session` VALUES ('jc3m6ahmi3lpr2dps6cjaha427', '1398254964', '');
INSERT INTO `v_session` VALUES ('jjgf029bucu68uhm8m4sh2l364', '1398253430', '');
INSERT INTO `v_session` VALUES ('jjr2fschv951aapvrdt1mq1k36', '1398256109', '');
INSERT INTO `v_session` VALUES ('jm1kjr6d9c3fu3uis3q1tac086', '1398255724', '');
INSERT INTO `v_session` VALUES ('jpeuacfbbdksg8o1u3141m7j92', '1398256381', '');
INSERT INTO `v_session` VALUES ('l9m46km9evi7fap6v4o4nuqt27', '1398254222', '');
INSERT INTO `v_session` VALUES ('n1sdslsqoqjjl7ths372f7ua42', '1398254483', '');
INSERT INTO `v_session` VALUES ('ne2613hu5i7qijq5p1q8ime1p1', '1398256005', '');
INSERT INTO `v_session` VALUES ('nfg4r1e7oes0fqh522km1gkap2', '1398255739', '');
INSERT INTO `v_session` VALUES ('o6jocv12941t17nbjhiapvh286', '1398256484', '');
INSERT INTO `v_session` VALUES ('oau17dulm0lu4pejuadsj5qef4', '1398256375', '');
INSERT INTO `v_session` VALUES ('ohku9ptemtrl9qtvegfjpajbf2', '1398255227', '');
INSERT INTO `v_session` VALUES ('orc1kq33o45tc9ik9b0ferjnr2', '1398256377', '');
INSERT INTO `v_session` VALUES ('os1kmuumlr0gdmd7j778o3su47', '1398253574', '');
INSERT INTO `v_session` VALUES ('p36cen7jvnnvfc50640mr0gli2', '1398256500', '');
INSERT INTO `v_session` VALUES ('p53dona3vodau5pom3jmefiim4', '1398256647', '');
INSERT INTO `v_session` VALUES ('p9p8t6uhcdie479an8avkujej2', '1398254316', '');
INSERT INTO `v_session` VALUES ('pck77vsqppfs2h2bm5c1dts613', '1398255110', '');
INSERT INTO `v_session` VALUES ('pdu9cng40ktkg1urp3ps9ro1e1', '1398255097', '');
INSERT INTO `v_session` VALUES ('peltm7vp800vn70p67u4sva974', '1398255566', '');
INSERT INTO `v_session` VALUES ('pj9lbquog4ta2k5osabvrsk9u3', '1398256501', '');
INSERT INTO `v_session` VALUES ('pjm6m4gimdu0neid8mji43off2', '1398255487', '');
INSERT INTO `v_session` VALUES ('q68epd1n4sj3t6oqjrebi6fke7', '1398255559', '');
INSERT INTO `v_session` VALUES ('qhdlhp2u0hj413tco39f8q30s4', '1398253425', '');
INSERT INTO `v_session` VALUES ('s45n3ebkv8a908jvmh56df74p2', '1398255506', '');
INSERT INTO `v_session` VALUES ('s5t05np2l37juhf27tvkk0mdt2', '1398256193', '');
INSERT INTO `v_session` VALUES ('s6l5opmgv36jnoamu9k676n5q7', '1398255105', '');
INSERT INTO `v_session` VALUES ('sgjjfaotlqvrsv2rqios6h39b3', '1398253589', '');
INSERT INTO `v_session` VALUES ('stgahamq8t04rjdok482faipg7', '1398255637', '');
INSERT INTO `v_session` VALUES ('td2itqiejhnehcocknqlrk1gh6', '1398254762', '');
INSERT INTO `v_session` VALUES ('tkdjhf1to5d63h19eggcfg0g96', '1398256318', '');
INSERT INTO `v_session` VALUES ('un2a2he2cvupf3fb1631087ue6', '1398256313', '');
INSERT INTO `v_session` VALUES ('vb2e1fl17cia3uegt6cof3m307', '1398255099', '');
INSERT INTO `v_session` VALUES ('vsr2onih3vftfirma02fthc045', '1398253575', '');

-- ----------------------------
-- Table structure for v_site
-- ----------------------------
DROP TABLE IF EXISTS `v_site`;
CREATE TABLE `v_site` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `photo1` varchar(100) DEFAULT NULL,
  `http` varchar(100) DEFAULT NULL,
  `copyright` text,
  `update_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_site
-- ----------------------------
INSERT INTO `v_site` VALUES ('1', '广州', '/upload/image/site/201402/20140225090016_87599.jpg', 'http://www.baidu.com/', '广州', '1398185692');

-- ----------------------------
-- Table structure for v_type
-- ----------------------------
DROP TABLE IF EXISTS `v_type`;
CREATE TABLE `v_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `component` varchar(50) DEFAULT NULL,
  `lft` int(10) NOT NULL DEFAULT '0',
  `rgt` int(10) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `depth` int(10) DEFAULT '1',
  `content` text,
  `audit` int(1) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `update_time` int(15) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `lft` (`lft`,`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of v_type
-- ----------------------------
