create table project_data (
  id integer primary key autoincrement,
  proj_no varchar(50) not null,
  proj_nm varchar(255) not null,
  proj_type varchar(10) not null default '0',
  proj_status char(1) not null default '0',
  proj_cust varchar(255) not null,
  proj_desc clob,
  proj_task clob
);
create unique index uk_project_data_proj_no on project_data(proj_no);
create unique index uk_project_data_projnm_projcust on project_data(proj_nm,proj_cust);

create table company (
  id integer primary key autoincrement,
  company_nm varchar(255) not null,
  company_desc clob
);
create unique index uk_company_nm on company(company_nm);

insert into company(company_nm,company_desc) values('安徽兆尹信息科技股份有限公司','公司描述');
insert into company(company_nm,company_desc) values('北京安信远腾科技有限公司','公司描述');
insert into company(company_nm,company_desc) values('北京京北方科技有限公司','公司描述');
insert into company(company_nm,company_desc) values('深圳智慧盾科技有限公司','公司描述');
insert into company(company_nm,company_desc) values('上海理想信息产业（集团）有限公司','公司描述');
insert into company(company_nm,company_desc) values('杭州新利软件(集团)股份有限公司','公司描述');
insert into company(company_nm,company_desc) values('中软国际信息技术有限公司','公司描述');
insert into company(company_nm,company_desc) values('同和软件信息有限公司','公司描述');
insert into company(company_nm,company_desc) values('深圳亿达信息技术有限公司','公司描述');
insert into company(company_nm,company_desc) values('重庆泛语科技有限公司','公司描述');
insert into company(company_nm,company_desc) values('宏思远信息技术有限公司','公司描述');
insert into company(company_nm,company_desc) values('上海青晗软件有限公司','公司描述');
insert into company(company_nm,company_desc) values('重庆嘉易成科技有限公司','公司描述');
insert into company(company_nm,company_desc) values('惠普(重庆）有限公司','公司描述');
insert into company(company_nm,company_desc) values('上海微创软件有限公司','公司描述');
insert into company(company_nm,company_desc) values('文思海辉','公司描述');
insert into company(company_nm,company_desc) values('北京百度网讯科技有限公司','公司描述');
insert into company(company_nm,company_desc) values('北京奇虎科技有限公司','公司描述');
insert into company(company_nm,company_desc) values('河南齐辉电子商务有限公司','公司描述');
insert into company(company_nm,company_desc) values('软通动力信息技术有限公司','公司描述');
insert into company(company_nm,company_desc) values('北京前海汇信息科技有限公司','公司描述');
insert into company(company_nm,company_desc) values('软通动力(上海)信息科技有限公司','公司描述');
insert into company(company_nm,company_desc) values('博彦科技(上海)有限公司','公司描述');
insert into company(company_nm,company_desc) values('深圳市智软软件开发有限公司','公司描述');
insert into company(company_nm,company_desc) values('上海引旅信息技术服务有限公司','公司描述');
insert into company(company_nm,company_desc) values('浙江网新恒天软件有限公司','公司描述');
insert into company(company_nm,company_desc) values('上海裕宁信息科技有限公司','公司描述');
insert into company(company_nm,company_desc) values('上海有大信息科技有限公司','公司描述');

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

insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro,proj_task) values('PJ-0135','投行与金融市场风向标项目','0','0','兴业','整合本行现有的各项业务系统资源，引进业务系统资源，引进现代信息技术，构建“投金风向标”系统，力图实现全集团的专业管理类产品的数据汇集、组合分析、绩效归因和风险管理功能。统一的数据管理平台:聚合非标系统、统一授信系统、托管系统、Murex系统等内部系统以及万得、中债等外部系统的数据资源，同时提供手工上传数据源功能，打造各部门共享的产品信息、资产信息、持仓信息、行情信息、指数信息、收益率曲线信息等统一的数据平台。在统一数据平台基础上，建立集组合分析、持仓分析、绩效归因、风向控制等业务功能为一体的中台管理系统，整体提高全行的合规监督、绩效管理及分线控制水平。建立统一的绩效评估及风向控制报告平台，进行报表模块的自定义、报表生成、审核及发布','开发前后端功能模块包括估值表上传、组合编辑模块、以及维护优化静态数据、交易数据模块等;负责开发适配器，解析上游每日来的定长双文件根据增量全量导入到接口表中;处理业务表数据，通过写SQL语句来处理业务数据，每天根据增量全量数据接入到业务表中;负责批处理模块的开发，将适配器模块处理不了的数据放到批处理模块进行每日跑批;负责管理数据库所有脚本以方便生产环境下发以及SQL优化');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro,proj_task) values('PJ-0136','浦银大学在线学习和考试管理系统','0','0','浦发银行','针对浦发银行总行以及全国各省市分行开发的在线学习培训管理系统和网络考试系统。在线学习系统主要由计划管理，讲师管理，课程管理，培训班管理，培训项目管理，直播，混合式培训，报表统计，调查评估问卷，积分管理，管理驾驶舱，课程前景图等等。网络考试系统主要由考试管理，考试统计，题库管理（试题管理，试卷管理），证书管理，配置管理，系统管理等。','主要负责浦银大学系统课程标签和培训班中课程标签设置：数字标签，事实标签，内容标签，对象标签，应用场景标签等标签功能开发,app端接口对接;用户登陆统一认证，课程全景图页面功能展现;报表功能：学员持证明细，参训记录，参考记录，授课记录，学习课程记录，学员一人一册报表，学员参训记录报表');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro,proj_task) values('PJ-0137','银医一卡通系统','0','0','宁夏工行','银医一卡通系统是结合医院HIS系统、银行结算系统、发卡系统、对账系统，后台记录患者的诊疗信息和费用，实现患者自助挂号，自助缴费，自助打印发票等操作，减少挂号、缴费的排队时间，用户可以通过银行柜面办理建卡，换卡，圈存圈提，查余，卡卡转帐，挂失，解挂，止付，解付，销卡，行业应用，流水查询等主要业务，可以通过自助机，pos机网延伸至网上银行等渠道进行挂号，缴费，圈存，圈提，查余，查流水等相关行业应用，拥有银行和医疗行业服务','主要负责联名卡和院内卡资金清算系统和报表清单功能开发，升级，实施;网银总额转账清算功能，网银转账清单展现');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro,proj_task) values('PJ-0138','银交一卡通(ETC支付系统)','0','0','宁夏工行','ETC收费系统结合高速服务系统、银行结算系统、发卡系统、对账系统，通过“车载单元（OBU）+IC卡”(安装于车辆前挡风玻璃内侧)与ETC车道内的路侧单元（RSU）进行微波通讯，实现车辆不停车支付高速公路通行费功能的全自动收费系统。缩短了车主通过收费站的时间，降低了排放和环境污染','主要负责高速IC卡交易平台，清算系统，报表清单展现模块开发，升级，实施;');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro,proj_task) values('PJ-0139','手机银行对私贷款项目','0','0','交通银行','交通银行手机银行贷款项目是为了优化贷款产品结构，以满足移动端用户贷款需求。主要方便 用户在手机端
进行贷款申请，签约放款，还款。主要模块有：贷款申请、签约放款，提前还款，贷 款凭证上传，还款卡号变更等模块。','参与需求分析，协助编写测试计划，编写所负责模块的测试用例;负责模块的主要功能点进行测试，执行测试用例，编写缺陷报告');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro,proj_task) values('PJ-0140','个人理财项目','0','0','交通银行','交通银行手机银行理财项目专门为移动终端客户量身定制的移动金融服务平台，秉承以客户为 中心、拓展服
务渠道，提供丰富的移动金融服务，注重客户体验，打造多元的移动增值服务。我主 要参与理财产品的测试，涉及的模块有风评、购买、赎回、交易记录查询等模块','参与项目需求分析，熟悉项目;');


insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro,proj_task) values('PJ-0141','手机银行','0','0','浙江稠州商业银行','手机银行集金融服务、生活服务、优惠服务于一身。以前只有到网点柜面才能操作的交易也可通过手机银行操作完成，如转账汇款、理财购买、外汇、贷款、社区生活等，让用户能够足丌出户也能尽享各种便捷的金融服务。我主要负责的是转账汇款中的行内转账和跨行转账模块。','');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro,proj_task) values('PJ-0142','催收项目','0','0','浙江稠州商业银行','该项目信用卡中心催收业务主要是对催收业务的加强管理，因为现在客户的反催收意识和能力都有所提升，使得催收业务难度日益提升。所以全面铺开、下沉催收，精细化开展催收工作已成为催收工作的主要方向。为解决当前催收工作的难点、痛点，卡中心积极立足于科技创新，重构出新的适应业务发展需求的、自劢化的、智能的、实时化催收业务平台。主要模块分为：首页登录、系统管理、催收库管理、催收事件管理、催收历叱事件查询。我主要负责催收库管理模块。','');
insert into project_data(proj_no,proj_nm,proj_type,proj_status,proj_cust,proj_intro,proj_task) values('PJ-0143','信用卡审批系统','0','0','浙江稠州商业银行','信用卡审批系统，主要是给银行内部工作人员使用，主要功能是银行录入申请人信息幵对客户是否发卡和发卡额度审批的一个系统。包含的主要模块有：录入，录入复核，自劢数据采集，准入征信欺诈检查，预审，自劢评分，人工授信和发卡等。我负责的是自劢评分、准入征信欺诈调查模块的测试工作。','');

