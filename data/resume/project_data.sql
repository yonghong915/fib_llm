create table project_data (
  id integer primary key autoincrement,
  proj_no varchar(50) not null,
  proj_nm varchar(255) not null,
  proj_type varchar(10) not null default '0',
  proj_status char(1) not null default '0',
  proj_cust varchar(255) not null,
  proj_intro clob
);
create unique index uk_project_data_proj_no on project_data(proj_no);
create unique index uk_project_data_projnm_projcust on project_data(proj_nm,proj_cust);

insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0001','金融云贷款平台','0','0','南京银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0002','奇瑞金融对公运营平台项目','0','0','奇瑞金融','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0003','兴业银行个人互联网账户管理分布式系统','0','0','兴业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0004','兴业银行集中支付系统','0','0','兴业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0005','农信银资金清算中心系统运维','0','0','农信银资金清算中心','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0006','统一支付系统','0','0','天津银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0007','数据管理系统','0','0','渤海银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0008','兴业银行代客理财系统','0','0','兴业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0009','聚合支付系统','0','0','江苏银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0010','综合财务管理系统','0','0','平安银行','项目介绍');

insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0011','自助式数据分析及可视化平台','0','0','江苏太仓农村商业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0012','增值税信息管理系统','0','0','上海华瑞银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0013','企业网银','0','0','上海银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0014','综合信贷系统','0','0','中国银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0015','数据服务平台','0','0','民生银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0016','南京银行渠道整合平台项目','0','0','南京银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0017','统一支付项目','0','0','南京银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0018','线上营销管理系统','0','0','广州银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0019','商业汇票业务系统','0','0','浦发银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0020','数据分析云平台','0','0','浦发银行','项目介绍');

insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0021','数字档案系统','0','0','长沙银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0022','深圳中信银行积分商城改造','0','0','深圳中信银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0023','银联数据商务对账平台','0','0','中国银联','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0024','上海农商村镇银行企业手机银行','0','0','上海农商村镇银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0025','天津银行信用贷款管理系统','0','0','天津银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0026','天津银行渠道业务综合管理平台项目','0','0','天津银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0027','宁夏工行内网OA系统','0','0','宁夏工行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0028','宁夏工行银医一卡通系统','0','0','宁夏工行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0029','南京银行大零售PAD厅堂管理','0','0','南京银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0030','兴业银行会计登记簿系统','0','0','兴业银行','项目介绍');

insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0031','紫金银行大零售项目','0','0','紫金银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0032','保理系统','0','0','中国银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0033','浦发银行大零售项目','0','0','浦发银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0034','交通银行财务系统项目','0','0','交通银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0035','朗坤智慧科技运营管控平台','0','0','建设银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0036','支付服务微服务改造','0','0','南京银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0037','中信银行金融市场业务管理系统','0','0','中信银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0038','北京进出口银行转贷项目','0','0','北京进出口银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0039','民生银行催收卡系统','0','0','民生银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0040','中信银行渠道运维项目','0','0','中信银行','项目介绍');

insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0041','交通银行财务公司项目','0','0','交通银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0042','中华保险项目','0','0','中华财险','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0043','银联数据商务对账平台','0','0','北京银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0044','柳州银行项目','0','0','柳州银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0045','华瑞银行微众银行微粒贷项目','0','0','华瑞银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0046','智能柜台平台迁移项目','0','0','兴业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0047','征信二代计费系统','0','0','中国银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0048','商业汇票业务系统','0','0','交通银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0049','新核心业务系统','0','0','光大银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0050','核心业务系统','0','0','民生银行','项目介绍');

insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0051','产融一体化平台项目','0','0','温州商行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0052','电子账户小项目','0','0','民生银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0053','自动化测试工具开发项目','0','0','民生银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0054','台州银行业务枢纽三期项目','0','0','台州银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0055','商业保理供应链金融项目','0','0','渤海银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0056','大零售营销管理平台优化升级项目','0','0','兴业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0057','恒丰银行业务运营项目','0','0','恒丰银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0058','远程双录系统','0','0','包商银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0059','江苏银行全球信用卡项目','0','0','江苏银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0060','大脑银行系统','0','0','兴业银行','项目介绍');

insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0061','银行资金存管系统','0','0','兴业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0062','私行经营管理系统','0','0','上海银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0063','客户中心产品','0','0','中国农业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0064','新零售系统','0','0','江苏太仓农村商业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0065','银行电子账户体系建设','0','0','泉州银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0066','微众直连项目','0','0','包商银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0067','个人互联网账户管理分布式系统','0','0','兴业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0068','资金清算系统','0','0','农信银资金清算中心','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0069','产品管理系统','0','0','浦发银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0070','对公营销项目','0','0','天津银行','项目介绍');

insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0071','贷后管理系统','0','0','南京银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0072','网络查控系统','0','0','包商银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0073','银联短彩信平台','0','0','中国银联','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0074','信贷管理系统','0','0','建设银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0075','企业网银系统','0','0','渤海银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0076','中国农业银行托管系统','0','0','中国农业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0077','对公客户开户优化流程项目','0','0','中国银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0078','CRM系统','0','0','平安银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0079','数字化固定资产管理系统','0','0','中金集团','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0080','新一代客户信息系统','0','0','建设银行','项目介绍');

insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0081','手机银行爱车生活专区','0','0','中国银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0082','全流程信贷系统','0','0','中国银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0083','企业金融服务平台','0','0','中国农业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0084','新一代个人信贷系统','0','0','招商银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0085','对公险预警','0','0','平安银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0086','金融资产交易系统','0','0','北交所','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0087','南京银行核心系统升级','0','0','南京银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0088','南京银行网贷系统','0','0','南京银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0089','储能大集控智慧运营平台','0','0','建设银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0090','个贷智能营销与作业系统','0','0','中国农业银行','项目介绍');

insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0091','催收系统','0','0','兴业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0092','互联金融开发平台','0','0','浙商银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0093','精准营销系统','0','0','建设银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0094','网络平台电子信息系统','0','0','兴业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0095','上海农商银行CRM项目','0','0','上海农商','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0096','互联网金融账簿系统','0','0','兴业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0097','质量管理系统','0','0','中国农业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0098','新一代综合业务系统','0','0','太仓农商行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0099','供应链金融票税系统','0','0','阿里云计算有限公司','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0100','中交资本保理业务系统化建设','0','0','中交所','项目介绍');

insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0101','新一代公司客户营销管理平台项目','0','0','南京银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0102','综合业务管理系统','0','0','渤海银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0103','新一代核心总体建设项目','0','0','青岛农商','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0104','公司业务综合管理平台项目','0','0','天津银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0105','卡中心电子凭证项目','0','0','农业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0106','农业银行大宗分期项目','0','0','农业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0107','恒丰银行信用卡业务','0','0','恒丰银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0108','统一集中平台','0','0','上海银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0109','数字运营平台','0','0','兴业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0110','互联网金融平台项目','0','0','上海银行','项目介绍');

insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0111','精准营销管理系统','0','0','江苏银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0112','资产管理系统','0','0','浙江网商银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0113','交通银行数据仓库系统','0','0','交通银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0114','江苏银行直销银行开发','0','0','江苏银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0115','上海农商银行对私存款项目','0','0','上海农商银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0116','信用卡积分商城项目','0','0','恒丰银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0117','绩效统计系统','0','0','民生银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0118','中信银行风控系统','0','0','中信银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0119','兴业银行销管项目','0','0','兴业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0120','零售CRM标准化项目','0','0','兴业银行','项目介绍');

insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0121','曲靖商业银行网联项目','0','0','曲靖商业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0122','数字档案系统','0','0','兴业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0123','电子印章系统','0','0','兴业银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0124','红塔银行网贷平台','0','0','红塔银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0125','民生银行内部评级系统','0','0','民生银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0126','业务集中处理项目','0','0','湖北农商银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0127','新一代综合业务系统','0','0','华夏银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0128','业务集成系统','0','0','四川银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0129','综合业务集中系统','0','0','四川银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0130','客户关系管理系统','0','0','四川银行','项目介绍');

insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0131','安保系统','0','0','四川银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0132','二代支付系统','0','0','四川银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0133','超级网银系统','0','0','四川银行','项目介绍');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro) values('PJ-0134','网络查控系统','0','0','四川银行','项目介绍');