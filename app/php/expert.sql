DROP DATABASE IF EXISTS expert;

CREATE DATABASE expert CHARSET=UTF8;

USE expert;

CREATE TABLE experts(
  id INT AUTO_INCREMENT,
  name VARCHAR(20),
  img VARCHAR(50),
  title VARCHAR(20),
  major VARCHAR(10),
  detail VARCHAR(600),
  PRIMARY KEY(id)
);

INSERT INTO experts(name,img,title,major,detail) values('郑海','user_avatar.jpg','正高级','制造专家','任职于机械科学研究总院中机生产力促进中心，长期从事精密检测与机电工程项目研发、工业机器人研制及其自动化生产线开发应用,核电燃料智能运载设备,石油石化自动化作业及在线检测设备和轨道交通检测设备等方面的研发工作。
主持完成了国内第一台步进式电机小型电动机器人研发与应用,获得机械工业部科技进步一等奖,主持完成伺服内喷涂机器人生产应用列入国家”九五”攻关项目,主持完成龙门仿形喷涂机器人获得机械工业部科技进步二等奖。主持研发钢卷涂镀生产线设备10多套，获机械工业联合会，机械工程学会科技进步二等奖。
');

INSERT INTO experts(name,img,title,major,detail) values('刘军','user_avatar.jpg','正高级','制造专家','工作业绩
1、2015年完成重载齿轮提高承载能力优化设计及工艺参数的基础研究（第一阶段）
2、2011年获火箭发射活动平台支撑臂减速器发明专利
3、2007年新型高参数双圆弧齿轮箱关键技术研究或院二等奖
4、2013年至今U8E无人直升机主、尾减速器研制
工作经历
1983.8-1985.8 长治钢铁厂  助工；
1988.8- 郑州机械研究所
著作论文
基于有限元的高铁齿轮箱箱体载荷计算及结构分析，2016.2，机械传动
Current Development Situation and Prospect of Circular-arc Gear 2011.10 动力传动国际会议（西安）
ZY-1型双圆弧齿轮的精确建模与动态接触分析 2012.6 机械传动
');

INSERT INTO experts(name,img,title,major,detail) values('张涛','user_avatar.jpg','副高级','材料专家','82年～84年，从事建筑科研，参与了南京扬子30万吨乙烯工程地基的天然地基、单桩、群桩、斜桩和联合基础的动力性能测试和研究。87年～92年，从事结构设计，分别负责和参与了以下工业和民用建筑结构的设计。工业：蚌埠明胶厂、蚌埠酒厂、合肥矿机厂、蚌埠八一化工厂、淮阴液压件厂、榆次液压件厂、苏州液压件厂、临朐石油机械厂、来安轴承厂等；民用：固镇工商局综合楼、扬子石化综合商场、深圳西五幢（高层）、合肥市政府商住楼等。93年至今，从事建设监理工作，主要在武汉经济开发区神龙工程，负责10万平方米的全钢多跨多层油漆车间的监理，同时还监理了神龙的总装车间、冲压车间、备件库及库区工程等。97年通过了国家注册监理工程师资格考试；并参加了第四期总监研讨班的学习，取得结业证书。');

INSERT INTO experts(name,img,title,major,detail) values('李强','userlogo1.png','副高级','制造专家','工作经历：
1994年7 月—2000年4月	郑州机械研究所	计算机应用
2000年5月—2003年7月	郑州机械研究所	经营经济管理
2003年8月—  今	郑州机械研究所	钎焊生产、研发、销售及技术支持
工作业绩：
2006年7月
～2007年12月	《基于绿色制造的新型无镉钎料》	主要负责人	
院科技成果奖
一等奖
2008年7月
～2011年12月	《粉状钎料产业化关键技术研究》	主要负责人	河南省科技进步二等奖
2009年12月
～2010年10月	《铜磷钎料生产技术》	主要负责人	院科技成果奖
一等奖
2012年	实用新型专利《铜磷细丝无模拉拔装置》	主要负责人	已获授权
2012年	实用新型专利《一种生产铜磷焊片的切片装置》	参加	已获授权');


INSERT INTO experts(name,img,title,major,detail) values('刘文慧','userlogo5.png','副高级','制造专家','工作业绩
负责行业会议、标准制修订、科技成果鉴定、资格认证、标准制定等
工作经历
2001年7月至2016年3月中国焊接协会工作，从事焊接行业工作。
著作论文
2011年，《焊接厂房烟尘的危害及整体除尘处理方案》合著
2011年，《高速列车转向架焊接机器人离线编程系统的分析与开发》 
2012年，《轨道车辆不锈钢车体变形分析及解决措施》');

INSERT INTO experts(name,img,title,major,detail) values('吴军','userlogo2.png','正高级','制造专家','机电工程、智能制造及装备制造业战略规划专家、工学博士、教授级高工。
现任中国机械科学研究总院装备制造业发展研究中心（系统分析研究所）所长。
期从事机电控制技术与高端装备开发及装备制造业发展战略规划研究工作。
主持及参与了自然基金、智能制造、863、军工配套专项等科研项目20余项，参与了工信部、工程院系列装备制造业国家战略规划研究编写工作，在机械工程学报等核心期刊发表论文近20篇。');

INSERT INTO experts(name,img,title,major,detail) values('王亮','userlogo3.png','副高级','制造专家','工作业绩：
负责和参与的项目达50余项，合同金额近1.2亿元。获得 机械科学研究总院科技成果三等奖一项。
工作经历：
2004.7-至今	郑州机械研究所');

INSERT INTO experts(name,img,title,major,detail) values('王伟','userlogo5.png','副高级','材料专家','工作经历：
1991年7月-至今	郑州机械研究所热处理室	负责真空热处理工艺段的技术咨询，生产安排，工艺制定，质量检验及过程控制	高级工程师
工作业绩：
1.神州五号航天员面罩模具s-136的真空热处理及畸变控制，采用的分段预热和防变形开裂措施较好地满足了客户对硬度和畸变的要求；2.3Cr2W8V钢等多种热作模具钢制造的多个规格型号铜材轧制分流锥的真空热处理，从客户的原材料分析，工艺制定，质量检验等多个环节层层把控，使分流锥质量稳定，交货及时，年处理量1000多只，是我室的重要客户之一；');

INSERT INTO experts(name,img,title,major,detail) values('李文','userlogo4.png','副高级','材料专家','工作业绩
编辑出版发行的四种国家级焊接专业期刊，获中国精品科技期刊、全国优秀期刊、机械行业优秀期刊、黑龙江省出版精品工程奖等多项荣誉，被国际（美国《工程索引》（EI）、美国《化学文摘》（CA）等）和国内（中国科技论文统计源期刊、中文核心期刊、中国学术期刊网络出版总库、中国核心期刊（遴选）数据库等）多家权威检索机构收录。工作经历
2005-2010年，在哈尔滨焊接研究所，从事学术期刊编辑出版工作，历任责任编辑，主编，社长助理。
著作论文
1. Formation and evolution of intermetallic compounds at interfaces of Cu/Sn-9Zn/Al joints by ultrasonic-assisted soldering. Journal of Materials Processing Technology, 2015, 223: 1–7. ，合著');

INSERT INTO experts(name,img,title,major,detail) values('李伟强','userlogo3.png','副高级','材料专家','工作业绩：
1.研究出曲轴用剖分式空心渗碳淬火齿轮先进加工方法工艺，解决了原加工工艺费时费力易变形的问题。
2.完成中冶东方工程研究院竖冷窑回收余热蒸汽发电工程上料卷扬设备项目（115万），该项目我方制作机械设备总重将近50吨。
3.研制成功水冷拉矫减速机，应用在多家客户。
4.独立完成各种重型轧机的设计工作，应用在多家客户。
《直进式无滑动减速机研制》 008年获机械总院科技成果三等奖
大型冷床主传动减速器系列产品研发》2009年获机械总院科技成果三等奖
工作经历：
2001.7至今	郑州机械研究所	机械设计');


