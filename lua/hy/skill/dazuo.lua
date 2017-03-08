require("hy.common.common")
require("hy.common.cmd")
require("hy.xiuxi")

--����������
function dazuo_start()

	Common_AddCustomerAlias("huifuneili_alias", "huifuneili", "\n")
	
	Common_AddCustomerTrigger("dazuo1", "dazuo","^��(.*?)վ��������", "/dodazuo()")
	Common_AddCustomerTrigger("dazuo2", "dazuo","^���������������뵤������۾������������һ������", "/dodazuo()")
	Common_AddCustomerTrigger("dazuo3", "dazuo","^�㽫��Ϣ����������ʮ�����죬���ص��ֻ����ȫ��ů����ġ�", "/dodazuo()")
	Common_AddCustomerTrigger("dazuo4", "dazuo","^�޾���ɱ�⻺��ɢ��ȫ�������ۣ�������һ������", "/dodazuo()")
	Common_AddCustomerTrigger("dazuo5", "dazuo","^������������!","/dazuo_xiuxi()")
	Common_AddCustomerTrigger("dazuo6", "dazuo","^�㽫����������������������һȦ���������뵤������֣�������һ������", "/dodazuo()")
	Common_AddCustomerTrigger("dazuo7", "dazuo","^������������������һ�����죬�����������ڵ������̧�����۾���", "/dodazuo()")
	Common_AddCustomerTrigger("dazuo8", "dazuo","^��Ȼ��(.*?)��û���һ��������ɴ������Ů��(.*?)", "/gag()",17444)
	Common_AddCustomerTrigger("dazuo9", "dazuo","^�̹�һ��(.*?)����Ů��Ͳ����ˡ�", "/gag()",17444)
	Common_AddCustomerTrigger("dazuo10", "dazuo","^(.*?)�е����･��ʧȥ��Ч�ã�", "/gag()",17444)
	Common_AddCustomerTrigger("dazuo11", "dazuo","^(.*?)��Ȼ�е���ɫ�Ļ𣬰�ɫ���׵�Χ����(.*?)�������٣�", "/gag()",17444)

	Common_AddCustomerTimer("timerpause", "timerpause",0, 1, 0, "/dazuo_timerpause()",17409)

	dazuo_DisableAll()
	
	SetVariable("currstats","dazuo")
	EnableTimer("autoemote", false)
	EnableTriggerGroup("dazuo", true)
	dodazuo()
end

function dazuo_DisableAll()
	EnableTriggerGroup("dazuo", false)
end

function dazuo_timerpause()
	Common_SendToWorld("sigh5")
	pausetimes = pausetimes + 1
	if pausetimes > 5 then
		pausetimes = 0
		changxi_DisableAll()
		DoAfterSpecial(10,"e;e;e;e;why;quit",10)
	end
end

function dodazuo()
	if _G.EndRobot > 0 then
		dazuo_DisableAll()
		EnableTimer("timerpause", false)
		EnableTimer("autoemote", true)
	else
		pausetimes = 0
		Common_SendToWorld("dazuo 10")
	end
end

--=================================================================
--�����Ϻ��Զ�Robot
function dazuo_OnConnect()
	Common_SendToWorld("e;s;s;#6 w;n;#5 w;u")
	DoAfterSpecial(1, "/dazuo_start()", 10)
end

--�������ߺ�
function  dazuo_OnReconnect()
	dazuo_DisableAll()
	DoAfterSpecial(10, "/dazuo_start()", 10)
end

--����̫��
function dazuo_TooManyCommand()
	dazuo_DisableAll()
	DoAfterSpecial(20, "/dazuo_start()", 10)
end

--����
function dazuo_OnEvent()
	dazuo_DisableAll()
	world.Disconnect()
end

--��Ϣ
function dazuo_doxiuxi()
	xiuxi_doxiuxi()
	--dazuo_chihe()
	DoAfterSpecial(1,"d;sleep",10)
end

function dazuo_chihe()
	local food = tonumber(GetVariable("food"))
	local foodmax = tonumber(GetVariable("food_max"))
	local water = tonumber(GetVariable("water"))
	local watermax = tonumber(GetVariable("water_max"))
	if (food > foodmax/2) and (water > watermax/2) then
		return
	end 
	
end

function dazuo_xiuxi()
	dazuo_DisableAll()
	xiuxi_start("dazuo")
end

function dazuo_xiuxicomplete()  
	xiuxi_complete()
	DoAfterSpecial(1, "u", 10)
	DoAfterSpecial(1.1, "/dazuo_start()", 10)
end