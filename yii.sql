/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50535
Source Host           : localhost:3306
Source Database       : c2malibu

Target Server Type    : MYSQL
Target Server Version : 50535
File Encoding         : 65001

Date: 2014-04-25 13:56:08
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
INSERT INTO `v_admin` VALUES ('1', 'admin', 'admin1234', '1', '1', '超级管理员', '0', 'dr@te.gd', '1562231414', '广州', '1398404727', '1398216742', '1296', '1328864440', '1398216742');
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
  `photo1` varchar(120) DEFAULT NULL,
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
INSERT INTO `v_menu` VALUES ('1', '马利宝品牌', 'index', '1', '2', '0', '1', '/upload/image/menu/201404/20140423162226_51748.png', '<p>\r\n	&nbsp;正如其白色瓶身上绘以棕榈树和加勒比红日，马利宝是350年朗姆酒制造历史上悠闲的一环。马利宝的故乡是西印度群岛朗姆酒酿酒厂，传统工艺和现代技术的结合使它与众不同。至今人们仍采用群岛上出产的甘蔗榨出的优质糖浆、纯净的泉水以及精选的酵母来促成发酵，最后的点睛之笔是椰汁和糖，这样就制成了顺滑清爽的朗姆酒。<br />\r\n&nbsp;<br />\r\n1980年，马利宝首次来到英国，被形容为“天堂般的味道”。两年后，随着它的广泛流行，这款烈酒也被销往欧洲其他国家。1983年马利宝登陆美国，被认为是“比朗姆更有趣的酒”。<br />\r\n&nbsp;<br />\r\n如今，马利宝已经成为世界上最畅销的加勒比海椰子朗姆酒，以其招牌的白色酒瓶和清新的风味著称于世。它可直接饮用，也可用于调配多姿多彩的鸡尾酒，让每一个平淡日子都变为迷人假日。马利宝独特的广告语“开启你的阳光海岸”，时刻向人们传递着加勒比海活力无限的生活态度。\r\n</p>', '1', '马利宝', null, null, '1398281040');
INSERT INTO `v_menu` VALUES ('2', '马利宝产品', 'product', '3', '8', '0', '1', '', null, '1', '马利宝产品', null, null, '1398243937');
INSERT INTO `v_menu` VALUES ('3', '椰子味朗姆预调酒', 'rtd', '4', '5', '2', '2', '/upload/image/menu/201404/20140423162324_58271.png', '马利宝近日为追求个性、创新的广大中国年轻消费者们，特别推出三款口感清爽、易于饮用的预调酒。<br />\r\n&nbsp;- 酷爽椰子风味<br />\r\n&nbsp;- 阳光柠檬风味（含椰子味）<br />\r\n&nbsp;- 热情可乐风味（含椰子味）<br />\r\n&nbsp;<br />\r\n由100%进口马利宝加勒比朗姆酒调制，独特的椰子风味带来清爽鲜活口感，马利宝椰子味朗姆预调酒再次向人们传递加勒比海活力无限与悠然自得的生活态度。<br />\r\n<br />\r\n快让一瓶冰镇马利宝椰子味朗姆预调酒带你感受热带加勒比的自由愉悦，乐活所有细胞。不论独饮，还是约上三五好友，无乐不作的你，岂能错过！ <br />\r\n<br />', '1', '椰子味朗姆预调酒', null, null, '1398246955');
INSERT INTO `v_menu` VALUES ('5', '媒体中心', 'media', '9', '14', '0', '1', '', null, '1', '媒体中心', null, null, '1398243976');
INSERT INTO `v_menu` VALUES ('10', '朗姆酒', 'original', '6', '7', '2', '2', '/upload/image/menu/201404/20140423162353_34927.png', '全球排名第一的加勒比海椰子朗姆酒、以其白色酒瓶和清新风味著称于世；<br />\r\n产自加勒比海地区西印度群岛朗姆酒酿酒厂、具有加勒比海真实的风味；<br />\r\n世界上最古老的通过蒸馏生产的烈酒、也是350年朗姆酒制造历史上悠闲的一环；<br />\r\n原料：西印度群岛上出产的新鲜甘蔗汁、蔗糖或糖蜜以及纯净泉水。<br />\r\n<br />\r\n马利宝拥有丰饶圆润的椰子芳香和淡淡的烘焙香，味道就象饱满多脂的椰子，同时混合了香草和奶油冰淇淋。较低的酒精度（21%），更易于饮用。无论是纯饮，加冰块，或是按照个人喜好来调配，马利宝都令饮品充满了醉人的加勒比风情。', '1', '朗姆酒', null, null, '1398246974');
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
  `photo1` varchar(120) DEFAULT NULL,
  `photo2` varchar(120) DEFAULT NULL,
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
INSERT INTO `v_news` VALUES ('4', '马利宝阳光水果', '10', '给生活酷爽感觉，往你的马利宝朗姆酒中加入可乐，完成一杯清爽的饮料。<br />\r\n<br />\r\n包括：<br />\r\n- 50ml马利宝朗姆酒 &nbsp; - 100ml可乐 &nbsp; - 少许安哥士苦精 &nbsp; - 半只酸橙<br />\r\n<br />\r\n如何调制：<br />\r\n用高酒杯混合新鲜酸橙和安古斯图腊树苦补药以及马利宝朗姆酒，加上冰块并最后加入可乐。<br />', '1', '0', '0', '/upload/image/news/201404/20140423012151_17912.jpg', null, '0', '0', null, '<iframe height=400 width=520 src=\"http://player.youku.com/embed/XNzAzMjAxNDcy\" frameborder=0 allowfullscreen></iframe>', null, null, '1398187038', '1398345996');
INSERT INTO `v_news` VALUES ('5', '马利宝酷爽一夏', '10', '给生活酷爽感觉，往你的马利宝朗姆酒中加入可乐，完成一杯清爽的饮料。<br />\r\n<br />\r\n包括：<br />\r\n- 50ml马利宝朗姆酒 &nbsp; - 100ml可乐 &nbsp; - 少许安哥士苦精 &nbsp; - 半只酸橙<br />\r\n<br />\r\n如何调制：<br />\r\n用高酒杯混合新鲜酸橙和安古斯图腊树苦补药以及马利宝朗姆酒，加上冰块并最后加入可乐。<br />', '1', '0', '0', '/upload/image/news/201404/20140423012121_10387.jpg', null, '0', '0', null, '<iframe height=400 width=520 src=\"http://player.youku.com/embed/XNzAzMjAxNDcy\" frameborder=0 allowfullscreen></iframe>', null, null, '1398187263', '1398346012');
INSERT INTO `v_news` VALUES ('3', '马利宝热情阳光', '10', '<span>给生活酷爽感觉，往你的马利宝朗姆酒中加入可乐，完成一杯清爽的饮料。</span><br />\r\n<br />\r\n<span>包括：</span><br />\r\n<span>- 50ml马利宝朗姆酒 &nbsp; - 100ml可乐 &nbsp; - 少许安哥士苦精 &nbsp; - 半只酸橙</span><br />\r\n<br />\r\n<span>如何调制：</span><br />\r\n<span>用高酒杯混合新鲜酸橙和安古斯图腊树苦补药以及马利宝朗姆酒，加上冰块并最后加入可乐。</span>', '1', '0', '0', '/upload/image/news/201404/20140423012234_10505.jpg', null, '0', '0', null, '<iframe height=400 width=520 src=\"http://player.youku.com/embed/XNzAzMjAxNDcy\" frameborder=0 allowfullscreen></iframe>', null, null, '1398184687', '1398346024');
INSERT INTO `v_news` VALUES ('6', '墙纸1', '12', '墙纸1', '1', '0', '0', '/upload/image/news/201404/20140423022111_55216.jpg', '', '0', '0', null, null, null, null, '1398190878', '1398190878');
INSERT INTO `v_news` VALUES ('7', '墙纸2', '12', '墙纸2', '1', '0', '0', '/upload/image/news/201404/20140425134734_42266.jpg', '', '0', '0', null, null, null, null, '1398190899', '1398404855');
INSERT INTO `v_news` VALUES ('8', '马利宝阳光水果2', '10', '如何调制：', '1', '0', '0', '/upload/image/news/201404/20140423012151_17912.jpg', null, '0', '0', null, '<iframe height=400 width=520 src=\"http://player.youku.com/embed/XNzAzMjAxNDcy\" frameborder=0 allowfullscreen></iframe>', null, null, '1398187038', '1398345883');
INSERT INTO `v_news` VALUES ('9', '马利宝酷爽一夏2', '10', '<span>给生活酷爽感觉，往你的马利宝朗姆酒中加入可乐，完成一杯清爽的饮料。</span><br />\r\n<br />\r\n<span>包括：</span><br />\r\n<span>- 50ml马利宝朗姆酒 &nbsp; - 100ml可乐 &nbsp; - 少许安哥士苦精 &nbsp; - 半只酸橙</span><br />\r\n<br />\r\n<span>如何调制：</span><br />\r\n<span>用高酒杯混合新鲜酸橙和安古斯图腊树苦补药以及马利宝朗姆酒，加上冰块并最后加入可乐。</span>', '1', '0', '0', '/upload/image/news/201404/20140423012121_10387.jpg', null, '0', '0', null, '<iframe height=400 width=520 src=\"http://player.youku.com/embed/XNzAzMjAxNDcy\" frameborder=0 allowfullscreen></iframe>', null, null, '1398187263', '1398401001');
INSERT INTO `v_news` VALUES ('10', '马利宝热情阳光2', '10', '<span>给生活酷爽感觉，往你的马利宝朗姆酒中加入可乐，完成一杯清爽的饮料。</span><br />\r\n<br />\r\n<span>包括：</span><br />\r\n<span>- 50ml马利宝朗姆酒 &nbsp; - 100ml可乐 &nbsp; - 少许安哥士苦精 &nbsp; - 半只酸橙</span><br />\r\n<br />\r\n<span>如何调制：</span><br />\r\n<span>用高酒杯混合新鲜酸橙和安古斯图腊树苦补药以及马利宝朗姆酒，加上冰块并最后加入可乐。</span>', '1', '0', '0', '/upload/image/news/201404/20140423012234_10505.jpg', null, '0', '0', null, null, null, null, '1398184687', '1398346083');
INSERT INTO `v_news` VALUES ('11', '马墙纸12', '12', '墙纸1', '1', '0', '0', '/upload/image/news/201404/20140423022111_55216.jpg', '', '0', '0', '', '', '', '', '1398190878', '1398190878');
INSERT INTO `v_news` VALUES ('12', '墙纸22', '12', '墙纸2', '1', '0', '0', '/upload/image/news/201404/20140425134556_38405.jpg', '', '0', '0', '', '', '', '', '1398190899', '1398404757');
INSERT INTO `v_news` VALUES ('13', '马利宝阳光水果3', '10', '<span>给生活酷爽感觉，往你的马利宝朗姆酒中加入可乐，完成一杯清爽的饮料。</span><br />\r\n<br />\r\n<span>包括：</span><br />\r\n<span>- 50ml马利宝朗姆酒 &nbsp; - 100ml可乐 &nbsp; - 少许安哥士苦精 &nbsp; - 半只酸橙</span><br />\r\n<br />\r\n<span>如何调制：</span><br />\r\n<span>用高酒杯混合新鲜酸橙和安古斯图腊树苦补药以及马利宝朗姆酒，加上冰块并最后加入可乐。</span>', '1', '0', '0', '/upload/image/news/201404/20140423012151_17912.jpg', null, '0', '0', null, '<iframe height=400 width=520 src=\"http://player.youku.com/embed/XNzAzMjAxNDcy\" frameborder=0 allowfullscreen></iframe>', null, null, '1398187038', '1398401201');
INSERT INTO `v_news` VALUES ('14', '马利宝酷爽一夏3', '10', '<span>给生活酷爽感觉，往你的马利宝朗姆酒中加入可乐，完成一杯清爽的饮料。</span><br />\r\n<br />\r\n<span>包括：</span><br />\r\n<span>- 50ml马利宝朗姆酒 &nbsp; - 100ml可乐 &nbsp; - 少许安哥士苦精 &nbsp; - 半只酸橙</span><br />\r\n<br />\r\n<span>如何调制：</span><br />\r\n<span>用高酒杯混合新鲜酸橙和安古斯图腊树苦补药以及马利宝朗姆酒，加上冰块并最后加入可乐。</span>', '1', '0', '0', '/upload/image/news/201404/20140423012121_10387.jpg', null, '0', '0', null, '<iframe height=400 width=520 src=\"http://player.youku.com/embed/XNzAzMjAxNDcy\" frameborder=0 allowfullscreen></iframe>', null, null, '1398187263', '1398401245');
INSERT INTO `v_news` VALUES ('15', '马利宝热情阳光3', '10', '<span>给生活酷爽感觉，往你的马利宝朗姆酒中加入可乐，完成一杯清爽的饮料。</span><br />\r\n<br />\r\n<span>包括：</span><br />\r\n<span>- 50ml马利宝朗姆酒 &nbsp; - 100ml可乐 &nbsp; - 少许安哥士苦精 &nbsp; - 半只酸橙</span><br />\r\n<br />\r\n<span>如何调制：</span><br />\r\n<span>用高酒杯混合新鲜酸橙和安古斯图腊树苦补药以及马利宝朗姆酒，加上冰块并最后加入可乐。</span>', '1', '0', '0', '/upload/image/news/201404/20140423012234_10505.jpg', null, '0', '0', null, '<iframe height=400 width=520 src=\"http://player.youku.com/embed/XNzAzMjAxNDcy\" frameborder=0 allowfullscreen></iframe>', null, null, '1398184687', '1398401267');
INSERT INTO `v_news` VALUES ('16', '墙纸13', '12', '墙纸1', '1', '0', '0', '/upload/image/news/201404/20140423022111_55216.jpg', '', '0', '0', '', '', '', '', '1398190878', '1398190878');
INSERT INTO `v_news` VALUES ('17', '墙纸23', '12', '墙纸2', '1', '0', '0', '/upload/image/news/201404/20140423022134_19893.jpg', '', '0', '0', '', '', '', '', '1398190899', '1398190899');
INSERT INTO `v_news` VALUES ('24', '墙纸15', '12', '墙纸1', '1', '0', '0', '/upload/image/news/201404/20140423012151_17912.jpg', '', '0', '0', '', '', '', '', '1398190878', '1398190878');
INSERT INTO `v_news` VALUES ('25', '墙纸25', '12', '墙纸2', '1', '0', '0', '/upload/image/news/201404/20140423012121_10387.jpg', '', '0', '0', '', '', '', '', '1398190899', '1398190899');
INSERT INTO `v_news` VALUES ('29', '墙纸16', '12', '墙纸1', '1', '0', '0', '/upload/image/news/201404/20140423012234_10505.jpg', '', '0', '0', '', '', '', '', '1398190878', '1398190878');
INSERT INTO `v_news` VALUES ('30', '墙纸26', '12', '墙纸2', '1', '0', '0', '/upload/image/news/201404/20140423022111_55216.jpg', '', '0', '0', '', '', '', '', '1398190899', '1398190899');
INSERT INTO `v_news` VALUES ('34', '墙纸17', '12', '墙纸1', '1', '0', '0', '/upload/image/news/201404/20140423022134_19893.jpg', '', '0', '0', '', '', '', '', '1398190878', '1398190878');
INSERT INTO `v_news` VALUES ('35', '墙纸28', '12', '墙纸2', '1', '0', '0', '/upload/image/news/201404/20140423012151_17912.jpg', '', '0', '0', '', '', '', '', '1398190899', '1398190899');

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
INSERT INTO `v_session` VALUES ('0ddgiorg6iljd00nqf2nf7und7', '1398408322', '');
INSERT INTO `v_session` VALUES ('0fagclunoj9tjskotfsgapbcv0', '1398406492', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938333435333830223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323934223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('0q6phl0d4dem7h26rt93v3ggl3', '1398404867', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938323830373137223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323933223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D61646D696E5969692E43576562557365722E666C6173682E7375626D69747C733A32313A22E4BFA1E681AFE68F90E4BAA4E68890E58A9FEFBC81223B61646D696E5969692E43576562557365722E666C617368636F756E746572737C613A313A7B733A363A227375626D6974223B693A303B7D);
INSERT INTO `v_session` VALUES ('208tpliq83qrmb1tvljnrosqd0', '1398406367', '');
INSERT INTO `v_session` VALUES ('20o6vgue2dp14tnuqi1b6p6pb5', '1398406486', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938333435333830223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323934223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('2j4ckh57dncio10mji30luf3i7', '1398408437', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938343032383831223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323935223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('3lebsb2lj236i1de2rm9e2n5n4', '1398408438', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938343032383831223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323935223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('4ad91o8su79ed91hfck6ubv884', '1398406481', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938333435333830223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323934223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('5jmg1ao3453ld68u6qmr89dnk2', '1398404873', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938323830373137223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323933223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('6pcfjptl29tvoenas3h0iviua0', '1398408333', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938343032383831223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323935223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('7dogj2sjv8cb51lvpi442erel5', '1398405101', '');
INSERT INTO `v_session` VALUES ('7eviptg2ss38q08r1880qaaab6', '1398404867', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938323830373137223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323933223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('94kr1kkl75fmmnoaajghph6j05', '1398406367', 0x61646D696E5F5F72657475726E55726C7C733A363A222F61646D696E223B);
INSERT INTO `v_session` VALUES ('9kfq4lu7htcnbpeqkebv8ggqk0', '1398408332', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938343032383831223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323935223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('a8i85n9tuctj3c905v635i3pu3', '1398408330', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938343032383831223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323935223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('a928cj0bdfscjhvrgn5a96skg5', '1398408433', '');
INSERT INTO `v_session` VALUES ('al0bp5qgg8k5igg8oo57l2i870', '1398406482', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938333435333830223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323934223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('amarib7la0rt4ramu6a3lmui60', '1398406485', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938333435333830223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323934223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('c5dbnoe4ftc703f2acbcvpa305', '1398408327', 0x61646D696E5F5F61646D696E496E666F7C613A31353A7B733A323A226964223B733A313A2231223B733A383A22757365726E616D65223B733A353A2261646D696E223B733A383A2270617373776F7264223B733A393A2261646D696E31323334223B733A383A2267726F75705F6964223B733A313A2231223B733A353A226175646974223B733A313A2231223B733A343A226E616D65223B733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B733A363A2267656E646572223B733A313A2230223B733A353A22656D61696C223B733A383A2264724074652E6764223B733A353A2270686F6E65223B733A31303A2231353632323331343134223B733A373A2261646472657373223B733A363A22E5B9BFE5B79E223B733A31353A226C6173745F6C6F67696E5F74696D65223B733A31303A2231333938343032383831223B733A31363A226C6173745F6C6F676F75745F74696D65223B733A31303A2231333938323136373432223B733A31313A226C6F67696E5F74696D6573223B733A343A2231323935223B733A31313A226372656174655F74696D65223B733A31303A2231333238383634343430223B733A31313A227570646174655F74696D65223B733A31303A2231333938323136373432223B7D61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938343032383831223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323935223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('ccc1f1d1oho8pvlc4jid8olen7', '1398404857', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938323830373137223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323933223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('co5r1rvhgi5e6nrlmaj8el8eh5', '1398408303', '');
INSERT INTO `v_session` VALUES ('cttguggmn87h0sbc3oinaulvg5', '1398406481', 0x61646D696E5F5F61646D696E496E666F7C613A31353A7B733A323A226964223B733A313A2231223B733A383A22757365726E616D65223B733A353A2261646D696E223B733A383A2270617373776F7264223B733A393A2261646D696E31323334223B733A383A2267726F75705F6964223B733A313A2231223B733A353A226175646974223B733A313A2231223B733A343A226E616D65223B733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B733A363A2267656E646572223B733A313A2230223B733A353A22656D61696C223B733A383A2264724074652E6764223B733A353A2270686F6E65223B733A31303A2231353632323331343134223B733A373A2261646472657373223B733A363A22E5B9BFE5B79E223B733A31353A226C6173745F6C6F67696E5F74696D65223B733A31303A2231333938333435333830223B733A31363A226C6173745F6C6F676F75745F74696D65223B733A31303A2231333938323136373432223B733A31313A226C6F67696E5F74696D6573223B733A343A2231323934223B733A31313A226372656174655F74696D65223B733A31303A2231333238383634343430223B733A31313A227570646174655F74696D65223B733A31303A2231333938323136373432223B7D61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938333435333830223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323934223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('dqd53mu4b4c0baktt8aht98452', '1398406342', '');
INSERT INTO `v_session` VALUES ('drjc9ip1if8ueklioovkgdtmn5', '1398408442', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938343032383831223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323935223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('e58c0mg7u11b2bebri02qvqka4', '1398408330', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938343032383831223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323935223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('f559mffbt2pmqjkpaojenrqj53', '1398408447', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938343032383831223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323935223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('fov6li67p70obpniommvick8j7', '1398408440', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938343032383831223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323935223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('fpcodt8gun3qngb009spc6ngj0', '1398406482', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938333435333830223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323934223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('hvemdetkckmt9bsejag04bqr77', '1398408441', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938343032383831223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323935223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('i2l9v55kpiil1fhu8kd9eesid7', '1398406494', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938333435333830223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323934223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('kdceo3vliv5vmdb8r25shcqi66', '1398408334', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938343032383831223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323935223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('kkvog88bq34d982igu3l9toms4', '1398408333', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938343032383831223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323935223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('kt8scbb7081bq5phc1f2rhkag4', '1398408443', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938343032383831223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323935223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('kv2ibqmv869j9grfna921ect20', '1398404928', '');
INSERT INTO `v_session` VALUES ('l184j6k7e5elj12ljpfkt6bve5', '1398408328', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938343032383831223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323935223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('m0383c6ri9tg0cvs5lc30se4f0', '1398404903', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938323830373137223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323933223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D61646D696E5969692E43576562557365722E666C6173682E7375626D69747C733A32313A22E588A0E999A4E68F90E4BAA4E68890E58A9FEFBC81223B61646D696E5969692E43576562557365722E666C617368636F756E746572737C613A313A7B733A363A227375626D6974223B693A303B7D);
INSERT INTO `v_session` VALUES ('mj5f9vcccp0i6m2are24doegt2', '1398408343', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938343032383831223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323935223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('ml80v84rndahhnmv4efqnhcga1', '1398406482', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938333435333830223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323934223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('mqkko3g0n793eu7c779jh6a9v0', '1398408329', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938343032383831223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323935223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('mugn8sahk4n025ijlmdgp4u5n6', '1398406476', '');
INSERT INTO `v_session` VALUES ('ndpq8rmisvhsvdbi0i0n3gppj4', '1398404923', '');
INSERT INTO `v_session` VALUES ('p64gnv77ekfls0edbmhora5qm2', '1398406351', '');
INSERT INTO `v_session` VALUES ('pi5mn3i1qvadjmq656s9q8vvd2', '1398408440', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938343032383831223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323935223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('poagmu507p2d46aie4boidv407', '1398408455', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938343032383831223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323935223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('psi7qv23p7i6lrqi8q6a5leub1', '1398404904', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938323830373137223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323933223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('qb8maveq6f5g65rcui8d1duo87', '1398406481', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938333435333830223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323934223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('qeb25lribulnrpubst22mm74f0', '1398404908', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938323830373137223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323933223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('sp3bsvobqesmfn9ungmc2ti1u7', '1398406488', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938333435333830223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323934223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('t6jklbu5nvhsursmh17p1nosb1', '1398408357', 0x61646D696E5F5F69647C733A313A2231223B61646D696E5F5F6E616D657C733A353A2261646D696E223B61646D696E69647C733A313A2231223B61646D696E757365726E616D657C733A353A2261646D696E223B61646D696E70617373776F72647C733A393A2261646D696E31323334223B61646D696E67726F75705F69647C733A313A2231223B61646D696E61756469747C733A313A2231223B61646D696E6E616D657C733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B61646D696E67656E6465727C733A313A2230223B61646D696E656D61696C7C733A383A2264724074652E6764223B61646D696E70686F6E657C733A31303A2231353632323331343134223B61646D696E616464726573737C733A363A22E5B9BFE5B79E223B61646D696E6C6173745F6C6F67696E5F74696D657C733A31303A2231333938343032383831223B61646D696E6C6173745F6C6F676F75745F74696D657C733A31303A2231333938323136373432223B61646D696E6C6F67696E5F74696D65737C733A343A2231323935223B61646D696E6372656174655F74696D657C733A31303A2231333238383634343430223B61646D696E7570646174655F74696D657C733A31303A2231333938323136373432223B61646D696E5F5F7374617465737C613A31353A7B733A323A226964223B623A313B733A383A22757365726E616D65223B623A313B733A383A2270617373776F7264223B623A313B733A383A2267726F75705F6964223B623A313B733A353A226175646974223B623A313B733A343A226E616D65223B623A313B733A363A2267656E646572223B623A313B733A353A22656D61696C223B623A313B733A353A2270686F6E65223B623A313B733A373A2261646472657373223B623A313B733A31353A226C6173745F6C6F67696E5F74696D65223B623A313B733A31363A226C6173745F6C6F676F75745F74696D65223B623A313B733A31313A226C6F67696E5F74696D6573223B623A313B733A31313A226372656174655F74696D65223B623A313B733A31313A227570646174655F74696D65223B623A313B7D);
INSERT INTO `v_session` VALUES ('v1o9i536acc5sm4eafiii5ses0', '1398408321', 0x61646D696E5F5F72657475726E55726C7C733A31333A222F6D616C6962752F61646D696E223B);
INSERT INTO `v_session` VALUES ('vn3idbsq79eobm4dngiv1e32d6', '1398404914', '');

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
