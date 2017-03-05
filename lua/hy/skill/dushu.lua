require("hy.common.common")
require("hy.common.cmd")
require("hy.xiuxi")

--����
function dushu_start()	
	Common_AddCustomerAlias("dushu_alias", "dushu", "yandu")

	Common_AddCustomerTrigger("dushu1", "dushu","^��(.*?)�ƺ�(.*?)�ĵá�", "/dodushu()")
	Common_AddCustomerTrigger("dushu2", "dushu","^�����������", "/dushu_xiuxi()")
	Common_AddCustomerTrigger("dushu3", "dushu","^���Ժ����ԣ�", "/dushu_TooManyCommand()") 
	Common_AddCustomerTrigger("dushu4", "dushu","^��ľ�����(.*?)", "/dushu_xiuxi()")
	Common_AddCustomerTrigger("dushu5", "dushu","^�����(.*?)���ƺ���(.*?)�е��ĵá�", "/dodushu()")
	Common_AddCustomerTrigger("dushu6", "dushu","^��(.*?)�ƺ��е��ĵá�", "/dodushu()")
	Common_AddCustomerTrigger("dushu7", "dushu","^���ж�(.*?)�����ĵá�", "/dodushu()")
	Common_AddCustomerTrigger("dushu8", "dushu","^����������", "/dushu_xiuxi()")
	Common_AddCustomerTrigger("dushu9", "dushu","^�����ڵ�ͷ��˼�йض�ת���Ƶ��������ѡ�", "/dodushu()")
	Common_AddCustomerTrigger("dushu10", "dushu","^�㰴��������������һ���ٶ������ж��������澭�����һ�ᣬ����е��ĵá�", "/dodushu()")
	Common_AddCustomerTrigger("dushu11", "dushu","^�����ڹ���ƣ�룬�޷�ר�������ж���֪��", "/dushu_xiuxi()")
	Common_AddCustomerTrigger("dushu12", "dushu","^�������ʯ�ھ�˼���ã��Խ��߽�����������", "/dodushu()")
	Common_AddCustomerTrigger("dushu13", "dushu","^����(.*?)����������ɽ�飬���е�(.*?)����(.*?)��", "/dodushu()")
	Common_AddCustomerTrigger("dushu14", "dushu","^����������㣬�޷���������ȥ��", "/dushu_xiuxi()")
	Common_AddCustomerTrigger("dushu15", "dushu","^��������ƺ�ʯ�ϵ���������ڤ˼����.�Ի����Ṧ�����ĵá�", "/dodushu()")
	Common_AddCustomerTrigger("dushu16", "dushu","^����ϥ����,Ƭ�̹����ɱ������Щ����", "/dodushu()")

	EnableTimer("autoemote", true)
	
	dushu_DisableAll()
	SetVariable("currstats","dushu")
	EnableTriggerGroup("dushu", true)
	dodushu()
end 

function dodushu()
	if _G.EndRobot > 0 then
		dushu_DisableAll()
	else
		DoAfterSpecial(0.1, "dushu", 10)
	end
	
end 

function dushu_DisableAll()
	EnableTriggerGroup("dushu", false)
end

--=================================================================
--�����Ϻ��Զ�Robot
function dushu_OnConnect()
	DoAfterSpecial(1, "/dushu_start()", 10)
end

--�������ߺ�
function  dushu_OnReconnect()
	DoAfterSpecial(10, "/dushu_start()", 10)
end

--����̫��
function dushu_TooManyCommand()
	dushu_DisableAll()
	DoAfterSpecial(20, "/dushu_start()", 10)
end

--����
function dushu_OnEvent()
	dushu_DisableAll()
	world.Disconnect()
end

--��Ϣ
function dushu_doxiuxi()
	xiuxi_doxiuxi()
	DoAfterSpecial(0.1, "w;sleep", 10)
end

function dushu_chihe()
	local food = tonumber(GetVariable("food"))
	local foodmax = tonumber(GetVariable("food_max"))
	local water = tonumber(GetVariable("water"))
	local watermax = tonumber(GetVariable("water_max"))
	if (food > foodmax/2) and (water > watermax/2) then
		return
	end 
	world.Execute ("e;s;s;s;s;w;buy doufu;eat doufu;drink;drop doufu;e;n;n;n;n;w")
end

function dushu_xiuxi()
	dushu_DisableAll()
	DoAfterSpecial(1, "/xiuxi_start(\"dushu\")", 10)
end

function dushu_xiuxicomplete()  
	xiuxi_complete()
	DoAfterSpecial(1, "e", 10)
	DoAfterSpecial(1.1, "/dushu_start()", 10)
end