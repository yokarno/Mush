require("hy.common.cmd")
require("hy.common.common")

hasling = 0

function stepwalking_start()
	Common_AddCustomerAlias("pfmkill_alias", "pfmkill", "perform parry.yin")
	
	Common_AddCustomerTrigger("stepwalking1", "stepwalking1","^(?P<front>.*)ֻ�ܶ�ս���еĶ���ʹ�á�", "/stepwalking_stepnofight(\"%<front>\")")
	Common_AddCustomerTrigger("stepwalking2", "stepwalking1","^(?P<front>.*)ֻ����ս����ʹ�á�", "/stepwalking_stepnofight(\"%<front>\")")
	Common_AddCustomerTrigger("stepwalking3", "stepwalking1","^(?P<front>.*)ֻ����ս���жԶ���ʹ�á�", "/stepwalking_stepnofight(\"%<front>\")")
	Common_AddCustomerTrigger("stepwalking4", "stepwalking1","^(?P<front>.*)ֻ�ܶԶ���ʹ�á�", "/stepwalking_stepnofight(\"%<front>\")")
	Common_AddCustomerTrigger("stepwalking5", "stepwalking1","^��Ҫ��˭ʩչ��һ��(?P<front>.*)", "/stepwalking_stepnofight(\"%<front>\")")


	--����ȥ
	Common_AddCustomerTrigger("stepwalking_goguanwai1", "stepwalking_goguanwai","^�������ᶳ����׳���Ӳȱ�����", "/stepwalking_guanwaibing()")
	Common_AddCustomerTrigger("stepwalking_goguanwai2", "stepwalking_goguanwai","^�������߳�һ�����򣬵����ۿ����㡣���滯�������ǳ˴��ɣ�", "/stepwalking_guanwaiboat()")
	Common_AddCustomerTrigger("stepwalking_goguanwai3", "stepwalking_goguanwai","^�������Ա����۵����㿴�����滯�������ǳ˴��ɣ�", "/stepwalking_guanwaiboat()")
	Common_AddCustomerTrigger("stepwalking_goguanwai4", "stepwalking_goguanwai","^���ſ��� - northeast��west", "/stepwalking_NextGo()")

	--�����
	Common_AddCustomerTrigger("stepwalking_guanwaireturn1", "stepwalking_guanwaireturn","^�������ᶳ����׳���Ӳȱ�����", "/stepwalking_guanwaireturnbing()")
	Common_AddCustomerTrigger("stepwalking_guanwaireturn2", "stepwalking_guanwaireturn","^�����߳�һ������վ�ڱ��ϵ����ۿ����㡣���滯�������ǳ˴��ɣ�", "/stepwalking_guanwaireturnboat()")
	Common_AddCustomerTrigger("stepwalking_guanwaireturn3", "stepwalking_guanwaireturn","^�������Ա����۵����㿴�����滯�������ǳ˴��ɣ�", "/stepwalking_guanwaireturnboat()")
	Common_AddCustomerTrigger("stepwalking_guanwaireturn4", "stepwalking_guanwaireturn","^���� - east��south", "/stepwalking_NextReturn()")

	--̨��ȥ
	Common_AddCustomerTrigger("stepwalking_gotaiwan1", "stepwalking_gotaiwan","^�����ڵִ��˴���һ�����졣�����´�����", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gotaiwan2", "stepwalking_gotaiwan","^ս�����ڵִ���̨���һ���ưܳ��С������´�����", "/stepwalking_NextGo()")

	--̨���
	Common_AddCustomerTrigger("stepwalking_taiwanreturn1", "stepwalking_taiwanreturn","^�����ڵִ�����ԭ��һ���������С������´���", "/stepwalking_NextReturn()")
	Common_AddCustomerTrigger("stepwalking_taiwanreturn2", "stepwalking_taiwanreturn","^�������ڵִ��˺�Ͽ��һ���󵺡������´�����", "/stepwalking_NextReturn()")

	--����ׯȥ
	Common_AddCustomerTrigger("stepwalking_goguiyun1", "stepwalking_goguiyun","^�����˿�����һ�������ҡ�����������ƽ�͵�ԶԶ���˳�ȥ", "/stepwalking_guiyunyellboat()")
	Common_AddCustomerTrigger("stepwalking_goguiyun2", "stepwalking_goguiyun","^����˵���������ϰ��ɡ����漴��һ��̤�Ű���ϵ̰�", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goguiyun3", "stepwalking_goguiyun","^��������˵���������´��ɣ���", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goguiyun4", "stepwalking_goguiyun","^����û�������", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goguiyun5", "stepwalking_goguiyun","^����Ҷ������йء�all������Ϣ��", "/stepwalking_guiyundokill()")

	--����ׯ��
	Common_AddCustomerTrigger("stepwalking_guiyunreturn1", "stepwalking_guiyunreturn","^�����˿�����һ�������ҡ�����������ƽ�͵�ԶԶ���˳�ȥ", "/stepwalking_guiyunreturnyellboat()")
	Common_AddCustomerTrigger("stepwalking_guiyunreturn2", "stepwalking_guiyunreturn","^����˵���������ϰ��ɡ����漴��һ��̤�Ű���ϵ̰�", "/stepwalking_NextReturn()")
	Common_AddCustomerTrigger("stepwalking_guiyunreturn3", "stepwalking_guiyunreturn","^��������˵���������´��ɣ���", "/stepwalking_NextReturn()")

	--�һ�������
	Common_AddCustomerTrigger("stepwalking_gotaohuachuan1", "stepwalking_gotaohuachuan","^����û�������", "/stepwalking_gotaohuanochuanfu()")
	Common_AddCustomerTrigger("stepwalking_gotaohuachuan2", "stepwalking_gotaohuachuan","^�����ϴ�������йء�����������Ϣ��", "/stepwalking_gotaohuachuan()")
		
	--ȥ�һ���
	Common_AddCustomerTrigger("stepwalking_gotaohua1", "stepwalking_gotaohua","^������ͣ����һ��С���ߡ������´�����", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gotaohua2", "stepwalking_gotaohua","^�һ����� - north��south", "/stepwalking_gotaohuanmizhen()")
	Common_AddCustomerTrigger("stepwalking_gotaohua3", "stepwalking_gotaohua","^ͻȻһ���һ��������㼲����", "/stepwalking_gotaohuanmizhen()")
	Common_AddCustomerTrigger("stepwalking_gotaohua4", "stepwalking_gotaohua","^�Խ�ͤ - north��south", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gotaohua5", "stepwalking_gotaohua","^����û�������", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gotaohua6", "stepwalking_gotaohua","^�������ʹ����йء�all������Ϣ��", "/stepwalking_gotaohuadokill()")

	--�һ�������
	Common_AddCustomerTrigger("stepwalking_taohuareturn3", "stepwalking_taohuareturn","^�һ����� - north��south", "/stepwalking_taohuareturnmizhen()")
	Common_AddCustomerTrigger("stepwalking_taohuareturn1", "stepwalking_taohuareturn","^ͻȻһ���һ��������㼲����", "/stepwalking_taohuareturnmizhen()")
	Common_AddCustomerTrigger("stepwalking_taohuareturn2", "stepwalking_taohuareturn","^�Խ�ͤ - north��south", "/stepwalking_NextReturn()")


	--ȥ���ɽ
	Common_AddCustomerTrigger("stepwalking_goqingcheng1", "stepwalking_goqingcheng","^����û�������", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goqingcheng2", "stepwalking_goqingcheng","^�������˺������йء�all������Ϣ��", "/stepwalking_goqingchengdokill()")

	--��ٹ�ȥ
	Common_AddCustomerTrigger("stepwalking_gowanjiegu1", "stepwalking_gowanjiegu","^���׽��� - east��westup", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gowanjiegu2", "stepwalking_gowanjiegu","^�������ϻ���һ��", "/stepwalking_gowanjiegubridge()")
	Common_AddCustomerTrigger("stepwalking_gowanjiegu3", "stepwalking_gowanjiegu","^��������һ��", "/stepwalking_gowanjiegubridge()")

	--��ٹȻ�
	Common_AddCustomerTrigger("stepwalking_wanjiegureturn1", "stepwalking_wanjiegureturn","^���˶� - east��west", "/stepwalking_NextReturn()")
	Common_AddCustomerTrigger("stepwalking_wanjiegureturn2", "stepwalking_wanjiegureturn","^�������ϻ���һ��", "/stepwalking_wanjiegureturnbridge()")
	Common_AddCustomerTrigger("stepwalking_wanjiegureturn3", "stepwalking_wanjiegureturn","^��������һ��", "/stepwalking_wanjiegureturnbridge()")

	--��������ȥ
	Common_AddCustomerTrigger("stepwalking_goyangzhouyamen1", "stepwalking_goyangzhouyamen","^�������۴����йء�all������Ϣ��", "/stepwalking_goyangzhouyamen()")
	Common_AddCustomerTrigger("stepwalking_goyangzhouyamen2", "stepwalking_goyangzhouyamen","^�����˭Ϊʦ", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goyangzhouyamen3", "stepwalking_goyangzhouyamen","^����û�������", "/stepwalking_NextGo()")

	--�������Ż�
	Common_AddCustomerTrigger("stepwalking_yangzhouyamenreturn1", "stepwalking_yangzhouyamenreturn","^�����Ŵ��š�", "/stepwalking_NextReturn()")
	Common_AddCustomerTrigger("stepwalking_yangzhouyamenreturn2", "stepwalking_yangzhouyamenreturn","^������������", "/stepwalking_yangzhouyamenreturnzhengting()")
	Common_AddCustomerTrigger("stepwalking_yangzhouyamenreturn3", "stepwalking_yangzhouyamenreturn","^����լ��", "/stepwalking_yangzhouyamenreturnneizhai()")
	
	--ȥѩɽ 
	Common_AddCustomerTrigger("stepwalking_goxueshan1", "stepwalking_goxueshan","^ֻ����Ƭ�Ļ�ѩ��ɽ���ϱ��ڶ���", "/stepwalking_goxueshanshanbeng()")
	Common_AddCustomerTrigger("stepwalking_goxueshan2", "stepwalking_goxueshan","^��ѩɽɽ�� - ", "/stepwalking_NextGo()")

	--ȥѩɽ��
	Common_AddCustomerTrigger("stepwalking_goxueshansi1", "stepwalking_goxueshansi","^����û�������", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goxueshansi3", "stepwalking_goxueshansi","^��������ɮ�������йء�all������Ϣ��", "/stepwalking_goxueshansidokill()")

	--ȥ����
	Common_AddCustomerTrigger("stepwalking_gobaituo1", "stepwalking_gobaituo","^����û�������", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gobaituo2", "stepwalking_gobaituo","^�������������йء�all������Ϣ��", "/stepwalking_gobaituodokill()")
	Common_AddCustomerTrigger("stepwalking_gobaituo3", "stepwalking_gobaituo","^����ɽ��ͷ�����йء�all������Ϣ��", "/stepwalking_gobaituodokillshanzei()")
	Common_AddCustomerTrigger("stepwalking_gobaituo4", "stepwalking_gobaituo","^�������ߴ����йء�all������Ϣ", "/stepwalking_gobaituodokillshe()")

	--���ջ�
	Common_AddCustomerTrigger("stepwalking_baituoreturn1", "stepwalking_baituoreturn","^����û�������", "/stepwalking_NextReturn()")
	Common_AddCustomerTrigger("stepwalking_baituoreturn3", "stepwalking_baituoreturn","^�������������йء�all������Ϣ��", "/stepwalking_baituoreturndokill()")

	--ȥ���һ�����
	Common_AddCustomerTrigger("stepwalking_goemhuacang1", "stepwalking_goemhuacang","^������ʦ̫�����йء�all������Ϣ��", "/stepwalking_goemhuacangdokill()")
	Common_AddCustomerTrigger("stepwalking_goemhuacang2", "stepwalking_goemhuacang","^����û�������", "/stepwalking_NextGo()")

	--���һ����ַ���
	Common_AddCustomerTrigger("stepwalking_emhuacangreturn1", "stepwalking_emhuacangreturn","^����������� - ", "/stepwalking_NextReturn()")
	Common_AddCustomerTrigger("stepwalking_emhuacangreturn2", "stepwalking_emhuacangreturn","^������䡿 - ", "/stepwalking_emhuacangreturnnohuacang()")
	Common_AddCustomerTrigger("stepwalking_emhuacangreturn3", "stepwalking_emhuacangreturn","^���ؾ��� - ", "/stepwalking_emhuacangreturnnohuacang()")

	--ȥ�����޹�
	Common_AddCustomerTrigger("stepwalking_goemqingong1", "stepwalking_goemqingong","^��������������йء�all������Ϣ��", "/stepwalking_goemqingongdokill()")
	Common_AddCustomerTrigger("stepwalking_goemqingong2", "stepwalking_goemqingong","^����û�������", "/stepwalking_NextGo()")

	--ȥ����һƷ��
	Common_AddCustomerTrigger("stepwalking_golingzhou1", "stepwalking_golingzhou","^����û�������", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_golingzhou2", "stepwalking_golingzhou","^����(.*?)�����йء�all������Ϣ��", "/stepwalking_golingzhoudokill()")

	--ȥ����
	Common_AddCustomerTrigger("stepwalking_gotangmen1", "stepwalking_gotangmen","^�����˿�����һ�������ҡ�����������ƽ�͵�ԶԶ���˳�ȥ", "/stepwalking_tangmenyellboat()")
	Common_AddCustomerTrigger("stepwalking_gotangmen2", "stepwalking_gotangmen","^����˵�����������ϰ��ɡ����漴��һ��̤�Ű���ϵ̰���", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gotangmen3", "stepwalking_gotangmen","^��������˵���������´��ɣ���", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gotangmen4", "stepwalking_gotangmen","^����û�������", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gotangmen5", "stepwalking_gotangmen","^����(.*?)�����йء�all������Ϣ��", "/stepwalking_tangmendokill()")
	
	--���Ż�
	Common_AddCustomerTrigger("stepwalking_tangmenreturn1", "stepwalking_tangmenreturn","^�����˿�����һ�������ҡ�����������ƽ�͵�ԶԶ���˳�ȥ", "/stepwalking_tangmenreturnyellboat()")
	Common_AddCustomerTrigger("stepwalking_tangmenreturn2", "stepwalking_tangmenreturn","^����˵���������ϰ��ɡ����漴��һ��̤�Ű���ϵ̰�", "/stepwalking_NextReturn()")
	Common_AddCustomerTrigger("stepwalking_tangmenreturn3", "stepwalking_tangmenreturn","^��������˵���������´��ɣ���", "/stepwalking_NextReturn()")

	--�����ж�����
	Common_AddCustomerTrigger("stepwalking_gotangmenshen1", "stepwalking_gotangmenshen","^������ʿ�Ȳ�����κ����ɣ�Ҳû�п�ɽ���ɣ����ܰ�ʦ", "/stepwalking_tangmenshen()")
	
	--���ݴ�Ա��
	Common_AddCustomerTrigger("stepwalking_goyangzhoucui1", "stepwalking_goyangzhoucui","^����û�������", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goyangzhoucui2", "stepwalking_goyangzhoucui","^����(.*?)�����йء�all������Ϣ��", "/stepwalking_yangzhoucuidokill()")

	--ȥ��������
	Common_AddCustomerTrigger("stepwalking_goluoyangwangjia1", "stepwalking_goluoyangwangjia","^����û�������", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goluoyangwangjia2", "stepwalking_goluoyangwangjia","^����(.*?)�����йء�all������Ϣ��", "/stepwalking_goluoyangwangjiadokill()")

	--ȥ�㵴
	Common_AddCustomerTrigger("stepwalking_goyandang1", "stepwalking_goyandang","^����û�������", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goyandang2", "stepwalking_goyandang","^����(.*?)�����йء�all������Ϣ��", "/stepwalking_goyandangdokill()")

	--ȥ��ɽ������
	Common_AddCustomerTrigger("stepwalking_gotianshan1", "stepwalking_gotianshan","^����û�������", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gotianshan2", "stepwalking_gotianshan","^����(.*?)�����йء�all������Ϣ��", "/stepwalking_gotianshandokill()")

	--ȥ������
	Common_AddCustomerTrigger("stepwalking_gojingdezhen1", "stepwalking_gojingdezhen","^�ֵ� - east��north��south", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gojingdezhen2", "stepwalking_gojingdezhen","^���� - east��north��southwest", "/stepwalking_gojingdezhenshulin()")

	--�������
	Common_AddCustomerTrigger("stepwalking_jingdezhenreturn1", "stepwalking_jingdezhenreturn","^���� - east��north��southwest", "/stepwalking_jingdezhenreturnshulin()")
	Common_AddCustomerTrigger("stepwalking_jingdezhenreturn2", "stepwalking_jingdezhenreturn","^����� - east��north��southwest��west", "/stepwalking_NextGo()")

	--ȥ�ྩ
	Common_AddCustomerTrigger("stepwalking_goyanjing1", "stepwalking_goyanjing","^����û�������", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goyanjing2", "stepwalking_goyanjing","^����(.*?)�����йء�all������Ϣ��", "/stepwalking_goyanjingdokill()")

	--ȥ�߲���
	Common_AddCustomerTrigger("stepwalking_gogaochangcheng1", "stepwalking_gogaochangcheng","^��� - east��west", "/stepwalking_gogaochangchenggebi()")
	Common_AddCustomerTrigger("stepwalking_gogaochangcheng2", "stepwalking_gogaochangcheng","^С· - east��west", "/stepwalking_NextGo()")

	--�߲��Ƿ���
	Common_AddCustomerTrigger("stepwalking_gaochangchengreturn1", "stepwalking_gaochangchengreturn","^��� - east��west", "/stepwalking_gaochangchengreturngebi()")
	Common_AddCustomerTrigger("stepwalking_gaochangchengreturn2", "stepwalking_gaochangchengreturn","^����ɽ - east��west", "/stepwalking_NextReturn()")

	--ȥ��������
	Common_AddCustomerTrigger("stepwalking_gokunming1", "stepwalking_gokunming","^����û�������", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gokunming2", "stepwalking_gokunming","^����(.*?)�����йء�all������Ϣ��", "/stepwalking_gokunmingdokill()")
	
	--ȥ����
	Common_AddCustomerTrigger("stepwalking_gomingjiao1", "stepwalking_gomingjiao","^��һ��С�Ľ���̤�˸���", "/stepwalking_gomingjiaopaifang()")
	Common_AddCustomerTrigger("stepwalking_gomingjiao2", "stepwalking_gomingjiao","^ջ�� - northup��southdown", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gomingjiao3", "stepwalking_gomingjiao","^��ʯ�� - eastdown��westup", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gomingjiao4", "stepwalking_gomingjiao","^����ס��˵����(.*?)����±���", "/stepwalking_gomingjiaoweapon()")

	--ȥ̩ɽ
	Common_AddCustomerTrigger("stepwalking_gotaishan1", "stepwalking_gotaishan","^��һ��С�Ľ���̤�˸���", "/stepwalking_gotaishanlongmen()")
	Common_AddCustomerTrigger("stepwalking_gotaishan2", "stepwalking_gotaishan","^���� - northup��southdown", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gotaishan3", "stepwalking_gotaishan","^�������ŵ��˴����йء�all������Ϣ��", "/stepwalking_gotaishandokill()")
	Common_AddCustomerTrigger("stepwalking_gotaishan4", "stepwalking_gotaishan","^����û�������", "/stepwalking_NextGo()")

	--ȥ��ɽ
	Common_AddCustomerTrigger("stepwalking_gohuashan1", "stepwalking_gohuashan","^����߸��������йء�all������Ϣ��", "/stepwalking_gohuashandokill()")
	Common_AddCustomerTrigger("stepwalking_gohuashan2", "stepwalking_gohuashan","^����û�������", "/stepwalking_NextGo()")

	--ȥ����
	Common_AddCustomerTrigger("stepwalking_goshaolin1", "stepwalking_goshaolin","^������(.*?)�����йء�all������Ϣ��", "/stepwalking_goshaolindokill()")
	Common_AddCustomerTrigger("stepwalking_goshaolin2", "stepwalking_goshaolin","^����û�������", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goshaolin3", "stepwalking_goshaolin","^��ͨ��ס��˵������λ(.*?)����±���", "/stepwalking_goshaolinweapon()")
	Common_AddCustomerTrigger("stepwalking_goshaolin4", "stepwalking_goshaolin","^����������������ǰ��˫�ֺ�ʲ˵���������ӷ�(.*?)������", "/stepwalking_goshaolinweapon()")
	Common_AddCustomerTrigger("stepwalking_goshaolin5", "stepwalking_goshaolin","^���ʸ񲻹������ܽ��뷽���ҡ�", "/stepwalking_goshaolinnofangzhang()")
	Common_AddCustomerTrigger("stepwalking_goshaolin6", "stepwalking_goshaolin","^������ - ", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goshaolin7", "stepwalking_goshaolin","^ʯ�� - northup��westdown", "/stepwalking_NextGo()")

	--ȡ��
	Common_AddCustomerTrigger("stepwalking_goshaolinling1", "stepwalking_goshaolinling","^(?P<ling>.*) ��(.*?)����Ӣ����(.*?)����", "/stepwalking_redeemling(\"%<ling>\")")
	Common_AddCustomerTrigger("stepwalking_goshaolinling3", "stepwalking_goshaolinling","^����Ȳ�����κ����ɣ�Ҳû�п�ɽ���ɣ����ܰ�ʦ", "/stepwalking_noling()")
	Common_AddCustomerTrigger("stepwalking_goshaolinling4", "stepwalking_goshaolinling","^����û�������", "/stepwalking_noseng()")
	Common_AddCustomerTrigger("stepwalking_goshaolinling5", "stepwalking_goshaolinling","^�в�ɮ����", "/stepwalking_hasseng()")

	--ȥ��ɽ
	Common_AddCustomerTrigger("stepwalking_gosongshan1", "stepwalking_gosongshan","^�����һԾ��ȴ���ٲ�������һ�ɶ�Զ�������ǰ׷�������", "/stepwalking_sjcyup()")
	Common_AddCustomerTrigger("stepwalking_gosongshan2", "stepwalking_gosongshan","^��ʹ����һ�ģ����ٲ�����������Զ�͵���������ˤ�ı������ס�", "/stepwalking_sjcyup()")
	Common_AddCustomerTrigger("stepwalking_gosongshan3", "stepwalking_gosongshan","^������������ٲ���ֻ��һ����ˣ��ټӰѾ���", "/stepwalking_sjcyup()")
	Common_AddCustomerTrigger("stepwalking_gosongshan4", "stepwalking_gosongshan","^����Ͽ - down��northup", "/stepwalking_NextGo()")		
	Common_AddCustomerTrigger("stepwalking_gosongshan5", "stepwalking_gosongshan","^����û�������", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gosongshan6", "stepwalking_gosongshan","^�����ֺ�����йء�all������Ϣ��", "/stepwalking_gosongshandokill()")

	--ȥĽ��
	Common_AddCustomerTrigger("stepwalking_gomurong1", "stepwalking_gomurong","^���ڵ���С���ߣ������С�ۿ��ڰ��ߣ����´��ɡ�", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gomurong2", "stepwalking_gomurong","^�����С�ۿ��ڰ��ߣ����´��ɡ�", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gomurong3", "stepwalking_gomurong","^���ڵ��˰��ߣ������С�ۿ��ڰ��ߣ����´��ɡ�", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gomurong4", "stepwalking_gomurong","^��������˵���������´��ɣ���", "/stepwalking_NextGo()")

	--Ľ�ݻ�
	Common_AddCustomerTrigger("stepwalking_murongreturn1", "stepwalking_murongreturn","^�����˿�����һ�������ҡ�����������ƽ�͵�ԶԶ���˳�ȥ", "/stepwalking_murongreturnyellboat()")
	Common_AddCustomerTrigger("stepwalking_murongreturn2", "stepwalking_murongreturn","^����˵���������ϰ��ɡ����漴��һ��̤�Ű���ϵ̰�", "/stepwalking_NextReturn()")
	Common_AddCustomerTrigger("stepwalking_murongreturn3", "stepwalking_murongreturn","^�����С�ۿ��ڰ��ߣ����´��ɡ�", "/stepwalking_NextReturn()")
	Common_AddCustomerTrigger("stepwalking_murongreturn4", "stepwalking_murongreturn","^��������˵���������´��ɣ���", "/stepwalking_NextReturn()")
	
	--ؤ��ȥ
	Common_AddCustomerTrigger("stepwalking_gogaibang1", "stepwalking_gogaibang","^��Ҫ��˭ʲô����", "/stepwalking_gaibang()")
	
	--����ɽȥ �����
	Common_AddCustomerTrigger("stepwalking_gozhongtiaoshan1", "stepwalking_gozhongtiaoshan","^Ӵ����Ǹ�����������æ���ء��������Ժ�", "/stepwalking_zhongtiaoshanbuyfire()")
	Common_AddCustomerTrigger("stepwalking_gozhongtiaoshan2", "stepwalking_gozhongtiaoshan","^�������������������һ֧���ۡ�", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gozhongtiaoshan3", "stepwalking_gozhongtiaoshan","^����(.*?)�����йء�all������Ϣ��", "/stepwalking_zhongtiaoshanbuyfire()")
	Common_AddCustomerTrigger("stepwalking_gozhongtiaoshan4", "stepwalking_gozhongtiaoshan","^����û�������", "/stepwalking_zhongtiaoshannoYang()")

	--ȥ��������
	Common_AddCustomerTrigger("stepwalking_gokangqingwangfu1", "stepwalking_gokangqingwangfu","^����û�������", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gokangqingwangfu2", "stepwalking_gokangqingwangfu","^����(.*?)�����йء�all������Ϣ��", "/stepwalking_gokangqingwangfudokill()")

	--Ľ�ݻ�
	Common_AddCustomerTrigger("stepwalking_kangqingwangfureturn1", "stepwalking_kangqingwangfureturn","^���������š� -", "/stepwalking_kangqingwangfureturndamen()")
	Common_AddCustomerTrigger("stepwalking_kangqingwangfureturn2", "stepwalking_kangqingwangfureturn","^��������Ժ�� -", "/stepwalking_kangqingwangfureturndayuan()")

	--ȥ����
	Common_AddCustomerTrigger("stepwalking_goannan1", "stepwalking_goannan","^��˳��̤�Ű����ϰ�ȥ", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goannan2", "stepwalking_goannan","^�����ڵִ��˰��ϡ������´�����", "/stepwalking_NextGo()")
	
	--���ϻ�
	Common_AddCustomerTrigger("stepwalking_annanreturn1", "stepwalking_annanreturn","^�����ڵִ����й����ϡ������´�����", "/stepwalking_NextReturn()")
	Common_AddCustomerTrigger("stepwalking_annanreturn2", "stepwalking_annanreturn","^��˳��̤�Ű����ϰ�ȥ��", "/stepwalking_NextReturn()")
	
	--ȥ����
	Common_AddCustomerTrigger("stepwalking_gojinan1", "stepwalking_gojinan","^���۱�ȭ��������������н���", "uwi;s")
	Common_AddCustomerTrigger("stepwalking_gojinan2", "stepwalking_gojinan","^��ͻ�� - north��south��southeast", "/stepwalking_NextGo()")
	
	--ȥ÷ׯ
	Common_AddCustomerTrigger("stepwalking_gomeizhuang1", "stepwalking_gomeizhuang","^������ǰȥ������ͭ���������¡�����һ���Ҷ�������ֱ�����˽�ȥ��", "/stepwalking_gomeizhuangdizi()")
	Common_AddCustomerTrigger("stepwalking_gomeizhuang2", "stepwalking_gomeizhuang","^������ǰȥ������ͭ���������¡�", "/stepwalking_gomeizhuangnotdizi()")
	Common_AddCustomerTrigger("stepwalking_gomeizhuang3", "stepwalking_gomeizhuang","^���쾮 - north��south", "/stepwalking_gomeizhuanggateopen()")
	
	--Ľ�ݰ���ͬ
	Common_AddCustomerTrigger("stepwalking_gomurongbao1", "stepwalking_gomurongbao","^����ͬ��ס��˵����(.*?)����±��С�Ϊ�˱�ʾ�Թ���Ľ�ݵľ���������±���������Ľ�ݡ�", "/stepwalking_gomurongbaoweapon()")
	Common_AddCustomerTrigger("stepwalking_gomurongbao2", "stepwalking_gomurongbao","^С�� - east��west", "/stepwalking_NextGo()")
	
	Common_AddCustomerTimer("stepwalking1", "stepwalking",0, 0, 1, "pfmkill")
	stepwalking_DisableAll()
end

function stepwalking_DisableAll()
	EnableTriggerGroup("stepwalking1", false)

	EnableTriggerGroup("stepwalking_goguanwai", false)
	EnableTriggerGroup("stepwalking_guanwaireturn", false)
	EnableTriggerGroup("stepwalking_gotaiwan", false)
	EnableTriggerGroup("stepwalking_taiwanreturn", false)
	EnableTriggerGroup("stepwalking_goguiyun", false)
	EnableTriggerGroup("stepwalking_guiyunreturn", false)
	EnableTriggerGroup("stepwalking_gotaohua", false)
	EnableTriggerGroup("stepwalking_gotaohuachuan", false)
	EnableTriggerGroup("stepwalking_taohuareturn", false)
	EnableTriggerGroup("stepwalking_goqingcheng", false)
	EnableTriggerGroup("stepwalking_gowanjiegu", false)
	EnableTriggerGroup("stepwalking_wanjiegureturn", false)
	EnableTriggerGroup("stepwalking_goyangzhouyamen", false)
	EnableTriggerGroup("stepwalking_yangzhouyamenreturn", false)
	EnableTriggerGroup("stepwalking_goxueshan", false)
	EnableTriggerGroup("stepwalking_goxueshansi", false)
	EnableTriggerGroup("stepwalking_gobaituo", false)
	EnableTriggerGroup("stepwalking_baituoreturn", false)
	EnableTriggerGroup("stepwalking_goemhuacang", false)
	EnableTriggerGroup("stepwalking_emhuacangreturn", false)
	EnableTriggerGroup("stepwalking_golingzhou", false)
	EnableTriggerGroup("stepwalking_gotangmen", false)
	EnableTriggerGroup("stepwalking_tangmenreturn", false)
	EnableTriggerGroup("stepwalking_gotangmenshen", false)
	EnableTriggerGroup("stepwalking_goyangzhoucui", false)
	EnableTriggerGroup("stepwalking_goyangzhoulichun", false)
	EnableTriggerGroup("stepwalking_goluoyangwangjia", false)
	EnableTriggerGroup("stepwalking_goyandang", false)
	EnableTriggerGroup("stepwalking_gotianshan", false)
	EnableTriggerGroup("stepwalking_gojingdezhen", false)
	EnableTriggerGroup("stepwalking_jingdezhenreturn", false)
	EnableTriggerGroup("stepwalking_goyanjing", false)
	EnableTriggerGroup("stepwalking_gogaochangcheng", false)
	EnableTriggerGroup("stepwalking_gaochangchengreturn", false)
	EnableTriggerGroup("stepwalking_gokunming", false)
	EnableTriggerGroup("stepwalking_gomingjiao", false)
	EnableTriggerGroup("stepwalking_gotaishan", false)
	EnableTriggerGroup("stepwalking_gohuashan", false)
	EnableTriggerGroup("stepwalking_goshaolin", false)
	EnableTriggerGroup("stepwalking_goshaolinling", false)
	EnableTriggerGroup("stepwalking_gosongshan", false)
	EnableTriggerGroup("stepwalking_gomurong", false)
	EnableTriggerGroup("stepwalking_murongreturn", false)
	EnableTriggerGroup("stepwalking_gogaibang", false)
	EnableTriggerGroup("stepwalking_gozhongtiaoshan", false)
	EnableTriggerGroup("stepwalking_gokangqingwangfu", false)
	EnableTriggerGroup("stepwalking_kangqingwangfureturn", false)
	EnableTriggerGroup("stepwalking_goannan", false)
	EnableTriggerGroup("stepwalking_annanreturn", false)
	EnableTriggerGroup("stepwalking_goemqingong", false)
	EnableTriggerGroup("stepwalking_gojinan", false)
	EnableTriggerGroup("stepwalking_gomeizhuang", false)
	EnableTriggerGroup("stepwalking_gomurongbao", false)
	
	EnableTimerGroup("stepwalking", false)
end

function stepwalking_stepnofight()
	if Common_FilterTxt(txt) == nil then
		return
	end 
	EnableTriggerGroup("stepwalking1", false)
	EnableTimer("stepwalking1",false)

	local killover = GetVariable("killover")
	Common_SendToWorld(killover)
end

function stepwalking_guanwaibing()
	Common_SendToWorld("e")
end

function stepwalking_guanwaiboat()
	Common_SendToWorld("give 1 gold to chuan fu")
	Common_SendToWorld("give 100 silver to chuan fu")
end

function stepwalking_guanwaireturnbing()
	Common_SendToWorld("w")
end

function stepwalking_guanwaireturnboat()
	Common_SendToWorld("give 1 gold to chuan fu")
	Common_SendToWorld("give 100 silver to chuan fu")
end


function stepwalking_guiyunyellboat()
	DoAfterSpecial(2,"yell boat;enter",10)
end

function stepwalking_guiyundokill()
	SetVariable("killover","/stepwalking_guiyundokill()")
	Common_SendToWorld("kill jia ding")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_guiyunreturnyellboat()
	DoAfterSpecial(2,"yell boat;enter",10)
end

function stepwalking_gotaohuachuan()
	local shimen = GetVariable("shimen")
	if string.find(shimen,"�һ���") then
	else
		Common_SendToWorld("give 1 gold to lao chuanfu")
	end
	stepwalking_NextGo()
end

function stepwalking_gotaohuanochuanfu()
	stepwalking_DisableAll()
	DoAfterSpecial(2,  "/Common_SendToWorld(\"#3 w;n;n;#10 w;/stepwalking_TargetFail()\")"  , 10)
end

function stepwalking_gotaohuadokill()
	SetVariable("killover","/stepwalking_gotaohuadokill()")
	Common_SendToWorld("kill ya pu")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_gotaohuanmizhen()
	Common_SendToWorld("s")
end

function stepwalking_taohuareturnmizhen()
	Common_SendToWorld("s")
end

function stepwalking_goqingchengdokill()
	SetVariable("killover","/stepwalking_NextGo()")
	Common_SendToWorld("kill yu renhao")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_gowanjiegubridge()
	DoAfterSpecial(1, "wuwu;w", 10)
end

function stepwalking_wanjiegureturnbridge()
	DoAfterSpecial(1,"wuwu;e",10)
end

function stepwalking_goyangzhouyamen()
	local exp = tonumber(GetVariable("experi"))
	if exp > 2700000 then 
		SetVariable("killover","/stepwalking_goyangzhouyamen()")
		Common_SendToWorld("kill ya yi")
		EnableTriggerGroup("stepwalking1", true)
		EnableTimer("stepwalking1",true)
		return
	end
	
	SetVariable("jobstep",0)
	stepwalking_NextReturn()

end

function stepwalking_yangzhouyamenreturnzhengting()
	Common_SendToWorld("s;/stepwalking_NextReturn()")
end

function stepwalking_yangzhouyamenreturnneizhai()
	Common_SendToWorld("s;s;/stepwalking_NextReturn()")
end

function stepwalking_goxueshanshanbeng()
	Common_SendToWorld("su;wu;su")
end

function stepwalking_goxueshansidokill()
	SetVariable("killover","/stepwalking_goxueshansidokill()")
	Common_SendToWorld("kill seng bing")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_gobaituodokill()
	local zhengqi = tonumber(GetVariable("zhengqi"))
	if zhengqi > 0 then
		SetVariable("killover","/stepwalking_gobaituodokill()")
		Common_SendToWorld("kill men wei")
		EnableTriggerGroup("stepwalking1", true)
		EnableTimer("stepwalking1",true)
		return
	end
	stepwalking_NextGo()
end

function stepwalking_gobaituodokillshanzei()
	SetVariable("killover","/stepwalking_NextGo()")
	Common_SendToWorld("kill shanzei tou")
	EnableTriggerGroup("stepwalking1", true)	
	EnableTimer("stepwalking1",true)
end

function stepwalking_gobaituodokillshei()
	SetVariable("killover","/stepwalking_NextGo()")
	Common_SendToWorld("kill mang she")
	EnableTriggerGroup("stepwalking1", true)	
	EnableTimer("stepwalking1",true)
end

function stepwalking_baituoreturndokill()
	local zhengqi = tonumber(GetVariable("zhengqi"))
	if zhengqi > 0 then
		SetVariable("killover","/stepwalking_baituoreturndokill()")
		Common_SendToWorld("kill men wei")
		EnableTriggerGroup("stepwalking1", true)
		EnableTimer("stepwalking1",true)
		return
	end
	stepwalking_NextReturn()
end


function stepwalking_goemhuacangdokill()
	local exp = tonumber(GetVariable("experi"))
	if exp > 5000000 then 
		SetVariable("killover","/stepwalking_NextGo()")
		Common_SendToWorld("kill jingxin shitai")
		EnableTriggerGroup("stepwalking1", true)
		EnableTimer("stepwalking1",true)
		return
	end
	SetVariable("jobstep",0)
	stepwalking_NextReturn()
end

function stepwalking_goemqingongdokill()
	SetVariable("killover","/stepwalking_NextGo()")
	Common_SendToWorld("kill song qingshu")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_emhuacangreturnnohuacang()
	Common_SendToWorld("d;n;n;n;w;n;/stepwalking_NextReturn()")
end

function stepwalking_golingzhoudokill()
	SetVariable("killover","/stepwalking_golingzhoudokill()")
	Common_SendToWorld("kill wu shi")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_tangmenreturnyellboat()
	DoAfterSpecial(2,"yell boat;enter",10)
end

function stepwalking_tangmendokill()
	SetVariable("killover","/stepwalking_NextGo()")
	Common_SendToWorld("kill tang buping")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_tangmenyellboat()
	DoAfterSpecial(2,"yell boat;enter",10)
end

function stepwalking_tangmenshen()
	local zhengqi = tonumber(GetVariable("zhengqi"))
	if zhengqi > 0 then
		stepwalking_NextGo()
		return
	end
	stepwalking_OnTargetFail()
end

function stepwalking_yangzhoucuidokill()
	SetVariable("killover","/stepwalking_NextGo()")
	Common_SendToWorld("kill cui yuanwai")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_goluoyangwangjiadokill()
	SetVariable("killover","/stepwalking_goluoyangwangjiadokill()")
	Common_SendToWorld("kill zhuang han")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_goyandangdokill()
	SetVariable("killover","/stepwalking_goyandangdokill()")
	Common_SendToWorld("kill menwei")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_gotianshandokill()
	SetVariable("killover","/stepwalking_NextGo()")
	Common_SendToWorld("kill bayi")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)

end

function stepwalking_gojingdezhenshulin()
	Common_SendToWorld("n")
end

function stepwalking_jingdezhenreturnshulin()
	Common_SendToWorld("e")
end

function stepwalking_goyanjingdokill()
	SetVariable("killover","/stepwalking_goyanjingdokill()")
	Common_SendToWorld("kill qin bing")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_gogaochangchenggebi()
	Common_SendToWorld("e")
end

function stepwalking_gaochangchengreturngebi()
	Common_SendToWorld("w")
end

function stepwalking_gokunmingdokill()
	local exp = tonumber(GetVariable("experi"))
	if exp > 2700000 then 
		SetVariable("killover","/stepwalking_gokunmingdokill()")
		Common_SendToWorld("kill qin bing")
		EnableTriggerGroup("stepwalking1", true)
		EnableTimer("stepwalking1",true)
		return
	end
	SetVariable("jobstep",0)
	stepwalking_NextReturn()
end


function stepwalking_gomingjiaopaifang()
	DoAfterSpecial(1,"nu;enter;nu;nu",10)
end

function stepwalking_gomingjiaoweapon()
	Common_SendToWorld("uwi;wu;wi")
end

function stepwalking_gotaishanlongmen()
	DoAfterSpecial(1,"yj;yq;#4 nu;#2 n;nu;nu;n;n;nu;nu;wu;nu;n;n;wu;wu;n;n;nw;#4 nu",10)
end

function stepwalking_gotaishandokill()
	local exp = tonumber(GetVariable("experi"))
	if exp > 40000000 then 
		SetVariable("killover","/stepwalking_NextGo()")
		Common_SendToWorld("kill tianmen daoren")
		EnableTriggerGroup("stepwalking1", true)
		EnableTimer("stepwalking1",true)
		return
	end
	SetVariable("jobstep",0)
	stepwalking_NextReturn()
end

function stepwalking_gohuashandokill()
	SetVariable("killover","/stepwalking_NextGo()")
	Common_SendToWorld("kill gao genming")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_goshaolindokill()
	local xingbie = GetVariable("xingbie")
	if xingbie == "Ů" then
		SetVariable("killover","/stepwalking_goshaolindokill()")
		Common_SendToWorld("kill xu")
		EnableTriggerGroup("stepwalking1", true)
		EnableTimer("stepwalking1",true)
		return
	end
	stepwalking_NextGo()
end

function stepwalking_goshaolinweapon()
	Common_SendToWorld("uwi;eu;wi")
end

function stepwalking_redeemling(ling)
	EnableTriggerGroup("stepwalking_goshaolinling", false)
	Common_SendToWorld("redeem "..tonumber(ling))
	hasling = 1
	stepwalking_NextGo()
end

function stepwalking_noling()
	if hasling == 0 then 
		Common_SendToWorld("w;w;s;give 1 gold to tuobo seng")
		return
	end
	stepwalking_NextGo()
end

function stepwalking_noseng()
	Common_SendToWorld("n;n;/stepwalking_TargetFail()")
end

function stepwalking_hasseng()
	Common_SendToWorld("n;e;e;/stepwalking_NextGo()")
end

function stepwalking_goshaolinnofangzhang()
	SetVariable("jobstep",0)
	stepwalking_NextReturn()
end

function stepwalking_sjcyup()
	Common_SendToWorld("up")
end

function stepwalking_gosongshandokill()
	SetVariable("killover","/stepwalking_NextGo()")
	Common_SendToWorld("kill yao hou")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_murongreturnyellboat()
	DoAfterSpecial(2,"yell boat;enter",10)
end


function stepwalking_gaibang()
	local shimen = GetVariable("shimen")
	if string.find(shimen,"ؤ��") then
		stepwalking_NextGo()
		return
	else
		stepwalking_TargetFail()
		return
	end
end

function stepwalking_zhongtiaoshanbuyfire()
	DoAfterSpecial(0.5,"buy fire",10)
end

function stepwalking_zhongtiaoshannoYang()
	stepwalking_DisableAll()
	stepwalking_TargetFail()
end

function stepwalking_gokangqingwangfudokill()
	local exp = tonumber(GetVariable("experi"))
	if exp > 2700000 then 
		SetVariable("killover","/stepwalking_gokangqingwangfudokill()")
		Common_SendToWorld("kill shi wei")
		EnableTriggerGroup("stepwalking1", true)
		EnableTimer("stepwalking1",true)
		return
	end
	SetVariable("jobstep",0)
	stepwalking_NextReturn()
end

function stepwalking_kangqingwangfureturndamen()
	Common_SendToWorld("#3 halt;/stepwalking_NextReturn()")
end

function stepwalking_kangqingwangfureturndayuan()
	Common_SendToWorld("#3 halt;s;/stepwalking_NextReturn()")
end

function stepwalking_gomeizhuangdizi()
	stepwalking_DisableAll()
	Common_SendToWorld("out;s;wd;n;/stepwalking_NextGo()")
end

function stepwalking_gomeizhuangnotdizi()
	stepwalking_DisableAll()
	Common_SendToWorld("#4 n;/stepwalking_NextGo()")
end

function stepwalking_gomeizhuanggateopen()
	stepwalking_DisableAll()
	Common_SendToWorld("#3 n;/stepwalking_NextGo()")
end

function stepwalking_gomurongbaoweapon()
	Common_SendToWorld("uwi;w;wi")
end

--================================================================
--stepwalkingͨ�ýӿ�
--����
function stepwalking_GoTarget()
	local State = GetVariable("currstats")
	if State == "" then 
		return
	end
	stepwalking_DisableAll()
	Common_SendToWorld("/"..State.."_OnGoTarget()")	
end

--����
function stepwalking_TargetReturn()
	local State = GetVariable("currstats")
	if State == "" then 
		return
	end
	stepwalking_DisableAll()
	Common_SendToWorld("/"..State.."_OnTargetReturn()")	
end

--ʧ��
function stepwalking_TargetFail()
	local State = GetVariable("currstats")
	if State == "" then 
		return
	end
	stepwalking_DisableAll()
	Common_SendToWorld("/"..State.."_OnTargetFail()")	
end

--�ֲ���
function stepwalking_GoStep(where)
	hasling = 0
	EnableTriggerGroup("stepwalking_go"..where, true)
end

--�ֲ���
function stepwalking_StepReturn(where)
	hasling = 0
	EnableTriggerGroup("stepwalking_"..where.."return", true)
end

--������
function stepwalking_NextGo()
	local State = GetVariable("currstats")
	if State == "" then 
		return
	end
	stepwalking_DisableAll()
	Common_SendToWorld("/"..State.."_OnNextGo()")	
end

--������
function stepwalking_NextReturn()
	local State = GetVariable("currstats")
	if State == "" then 
		return
	end
	stepwalking_DisableAll()
	Common_SendToWorld("/"..State.."_OnNextReturn()")	
end

--================================================================