require("hy.common.common")
require("hy.common.cmd")
require("hy.xiuxi")

xuexi_listindex = 1

--ѧϰ
function xuexi_start()
	Common_AddCustomerAlias("xuexi_alias", "xuexi", "learn")

	Common_AddCustomerTrigger("xuexi1", "xuexi","^������(?P<target>.*)��ָ��(.*?)�ƺ���Щ�ĵá�", "/doxuexi(\"%<target>\")")
	Common_AddCustomerTrigger("xuexi2", "xuexi","^�����������", "/xuexi_xiuxi()")
	Common_AddCustomerTrigger("xuexi3", "xuexi","^���Ժ����ԣ�", "/xuexi_TooManyCommand()") 
	Common_AddCustomerTrigger("xuexi4", "xuexi","^��ľ�����", "/xuexi_xiuxi()")
	Common_AddCustomerTrigger("xuexi5", "xuexi","^��ľ�������", "/xuexi_xiuxi()")
	Common_AddCustomerTrigger("xuexi21", "xuexi","^�����������", "/xuexi_xiuxi()")
	Common_AddCustomerTrigger("xuexi22", "xuexi","^��ľ�������", "/xuexi_xiuxi()")
	Common_AddCustomerTrigger("xuexi23", "xuexi","^�������̫��", "/xuexi_xiuxi()")
	
	Common_AddCustomerTrigger("xuexi5", "xuexi","^(?P<target>.*)˵������̫�����ˣ�����ô�ҵ���", "/xuexi_givegold(\"%<target>\")")
	Common_AddCustomerTrigger("xuexi6", "xuexi","^(?P<target>.*)�����ܳ�����һ����˵������̣�����ô�ҵ���", "/xuexi_givegold(\"%<target>\")")
	Common_AddCustomerTrigger("xuexi7", "xuexi","^(?P<target>.*)Ц��˵��������Ц�ˣ��������С�������ʸ�ָ�㡹��ʲô��", "/xuexi_givegold(\"%<target>\")")
	
	Common_AddCustomerTrigger("xuexi8", "xuexi","^���������±����ұ���ѧ�ˡ�", "/xuexi_addlist1()")
	Common_AddCustomerTrigger("xuexi9", "xuexi","^�������ĳ̶��Ѿ�������ʦ���ˡ�", "/xuexi_addlist1()")
	Common_AddCustomerTrigger("xuexi10", "xuexi","^(?P<target>.*)������üͷ�������������ȥ����ʦ������", "/xuexi_addlist2(\"%<target>\")")
	Common_AddCustomerTrigger("xuexi11", "xuexi","^(?P<target>.*)˵��(.*?)�������书��ʱ������", "/xuexi_addlist2(\"%<target>\")")
	Common_AddCustomerTrigger("xuexi12", "xuexi","^Ҳ����ȱ��ʵս���飬���(.*?)�Ļش������޷���ᡣ", "/xuexi_addlist1()")
	Common_AddCustomerTrigger("xuexi13", "xuexi","^���������һ�ѽ�������������", "/doxuexinoweapon()")
	Common_AddCustomerTrigger("xuexi14", "xuexi","^��(.*?)������֡�", "/doxuexiweapon()")
--	Common_AddCustomerTrigger("xuexi15", "xuexi","^(?P<target>.*)Ц��˵��������Ц�ˣ��������С�������ʸ�ָ�㡹��ʲô��", "/xuexi_givegold(\"%<target>\")")
	Common_AddCustomerTrigger("xuexi16", "xuexi","^�����̫���ˣ����ʲôҲû��ѧ����", "/xuexi_xiuxi()")
	Common_AddCustomerTrigger("xuexi17", "xuexi","^(?P<target>.*)˵��(.*?)�����������Ĵ�����֮��", "/xuexi_addlist2(\"%<target>\")")
	Common_AddCustomerTrigger("xuexi18", "xuexi","^�������̫�����޷���һ��ָ��", "/xuexi_xiuxi()")
	Common_AddCustomerTrigger("xuexi19", "xuexi","^ѧ(.*?)��Ҫ�ĺ���������������������ò���ѽ��", "/xuexi_addlist1()")
	Common_AddCustomerTrigger("xuexi20", "xuexi","^���Ǳ�ܲ���", "/xuexi_addlist1()")
	
	Common_AddCustomerTimer("timerpause", "timerpause",0, 1, 0, "/xuexi_timerpause()",17409)

	xuexi_DisableAll()
	SetVariable("currstats","xuexi")
	EnableTimer("autoemote", true)
	EnableTriggerGroup("xuexi", true)
	Common_SendToWorld("chd;pw")
	doxuexi()
end

function xuexi_DisableAll()
	EnableTriggerGroup("xuexi", false)
end

function xuexi_timerpause()
	if _G.EndRobot > 0 then
		xuexi_DisableAll()
	else
		xuexi_addlist1()
	end
end

function doxuexinoweapon()
	Common_SendToWorld("wi;/doxuexi()")
end

function doxuexiweapon()
	Common_SendToWorld("uwi;/doxuexi()")
end

function doxuexi()
	myid = WorldName()
	if _G.EndRobot > 0 then
		xuexi_DisableAll()
		EnableTimer("timerpause", false)
	else
		ResetTimer("timerpause")
		DoAfterSpecial(0.2, "learn ".._G.MasterId.." ".._G.LearnSkills_tbl[xuexi_listindex].." ".._G.LearnTimes..";yj;yq", 10)
	end
end

function xuexi_givegold(obj)
	if obj == _G.Master then
		Common_SendToWorld("give 10 gold to ".._G.MasterId)
		DoAfterSpecial(2, "/xuexi_start()", 10)
	end
end

function xuexi_addlist1()
	xuexi_DisableAll()
	xuexi_listindex = xuexi_listindex + 1
	if xuexi_listindex > table.getn(_G.LearnSkills_tbl) then	
		EnableTimer("timerpause", false)
		xuexi_listindex = 1
		Common_SendToWorld("tell ".._G.ChatID.." �о�ѧϰ����")
		return
	end
		
	DoAfterSpecial(2, "/xuexi_start()", 10)
end

function xuexi_addlist2(obj)
	if obj == _G.Master then
		xuexi_addlist1()
	end
end

function xuexi_nopot()
	xuexi_DisableAll()
	EnableTimer("timerpause", false)
	xuexi_listindex = 1
	Common_SendToWorld("tell ".._G.ChatID.." �о�ѧϰ����")
end

--=================================================================
--�����Ϻ��Զ�Robot
function xuexi_OnConnect()
	
end

--�������ߺ�
function  xuexi_OnReconnect()
	DoAfterSpecial(10, "/xuexi_start()", 10)
end


--����̫��
function xuexi_TooManyCommand()
	xuexi_DisableAll()
	DoAfterSpecial(20, "/xuexi_start()", 10)
end

--����
function xuexi_OnEvent()

end

--��Ϣ
function xuexi_doxiuxi()
	xuexi_xiuxicomplete()
end

function xuexi_xiuxi()
	xuexi_DisableAll()
	xiuxi_start("xuexi")
end

function xuexi_xiuxicomplete()  
	xiuxi_complete()
	DoAfterSpecial(1.1, "/xuexi_start()", 10)
end