require("hy.common.common")
require("hy.common.cmd")
require("hy.xiuxi")

yanjiu_listindex = 1
yanjiu_maxexp = {}
yanjiu_maxexpindex = 0

--�о�
function yanjiu_start()
	Common_AddCustomerAlias("yanjiu_alias", "yanjiu", "yanjiu")

	Common_AddCustomerTrigger("yanjiu1", "yanjiu","^���о���һ�ᣬ(.*?)�ƺ�(.*?)��", "/doyanjiu()")
	Common_AddCustomerTrigger("yanjiu2", "yanjiu","^�������������", "/yanjiu_xiuxi()")
	Common_AddCustomerTrigger("yanjiu3", "yanjiu","^���Ժ����ԣ�", "/yanjiu_TooManyCommand()") 
	Common_AddCustomerTrigger("yanjiu4", "yanjiu","^��ľ�������ѧ�ˡ�", "/yanjiu_xiuxi()")
	Common_AddCustomerTrigger("yanjiu5", "yanjiu","^��ľ��������ˡ�", "/yanjiu_xiuxi()")

	Common_AddCustomerTrigger("yanjiu6", "yanjiu","^Ҳ����ȱ��ʵս����", "/yanjiu_addlist()")
	Common_AddCustomerTrigger("yanjiu9", "yanjiu","^����������û���о��ˡ�", "/yanjiu_addlist()")
	Common_AddCustomerTrigger("yanjiu10", "yanjiu","^(?P<front>.*)ֻ�ܿ���ѧϰ������ߵġ�", "/yanjiu_addlist2(\"%<front>\")")
	Common_AddCustomerTrigger("yanjiu12", "yanjiu","^����Ŀǰ��������û�а취�о����ּ��ܡ�", "/yanjiu_addlist()")
	Common_AddCustomerTrigger("yanjiu13", "yanjiu","^�����̫���ˣ����ʲôҲû���о��ɡ�", "/yanjiu_xiuxi()")
	Common_AddCustomerTrigger("yanjiu14", "yanjiu","^���Ǳ�ܲ����о���ô����ˡ�", "/yanjiu_nopot()")
	
	Common_AddCustomerTimer("timerpause", "timerpause",0, 1, 0, "/yanjiu_timerpause()",17409)
	
	yanjiu_DisableAll()
	SetVariable("currstats","yanjiu")
	EnableTimer("autoemote", true)
	EnableTriggerGroup("yanjiu", true)
	Common_SendToWorld("chd;pw")
	doyanjiu()
end

function yanjiu_DisableAll()
	EnableTriggerGroup("yanjiu", false)
end

function yanjiu_timerpause()
	if _G.EndRobot > 0 then
		EnableTimer("timerpause", false)
		yanjiu_DisableAll()
	else
		yanjiu_addlist()
	end
end

function doyanjiu()
	if _G.EndRobot > 0 then
		EnableTimer("timerpause", false)
		yanjiu_DisableAll()
	else
		ResetTimer("timerpause")

		yanjiu_listindex = yanjiu_listindex + 1
		local count = yanjiu_getmaxcount()
		if count < table.getn(_G.ResearchSkills_tbl) then
			if yanjiu_listindex > table.getn(_G.ResearchSkills_tbl) then
				yanjiu_listindex = 1
			end
			while yanjiu_maxexp[yanjiu_listindex] == 1 do
				yanjiu_listindex = yanjiu_listindex + 1
				if yanjiu_listindex > table.getn(_G.ResearchSkills_tbl) then
					yanjiu_listindex = 1
					break
				end
			end
		else 
			if yanjiu_listindex > table.getn(_G.ResearchSkills_tbl) then
				yanjiu_listindex = 1
			end
		end		
		DoAfterSpecial(0.1, "yanjiu ".._G.ResearchSkills_tbl[yanjiu_listindex].." ".._G.ResearchTimes..";yj", 10)
	end
end

function yanjiu_addlist()
	yanjiu_DisableAll()
	yanjiu_maxexp[yanjiu_listindex] = 1

	local count = yanjiu_getmaxcount()
	if count >= table.getn(_G.ResearchSkills_tbl) - 1   then
		EnableTimer("timerpause", false)
		Common_SendToWorld("tell ".._G.ChatID.." �о�ѧϰ����")
		yanjiu_listindex = 1
		yanjiu_maxexp = {}
		local preStats = GetVariable("prestats")
		if preStats ~= "" then 
			SetVariable("prestats","")
			SetVariable("currstats",preStats)
			DoAfterSpecial(2, "e;e;e;e;e;quit", 10)
		end
		return
	end
	
	EnableTriggerGroup("yanjiu", true)
	DoAfterSpecial(2, "/doyanjiu()", 10)
	
end

function yanjiu_addlist2(txt)
	if FilterTxt(txt) == nil then
		return
	end
	yanjiu_addlist() 
end

function yanjiu_nopot()
	yanjiu_DisableAll()
	Common_SendToWorld("tell ".._G.ChatID.." �о�ѧϰ����")
	yanjiu_listindex = 1
	yanjiu_maxexp = {} 
	EnableTimer("timerpause", false)
	local preStats = GetVariable("prestats")
	if preStats ~= "" then 
		SetVariable("prestats","")
		SetVariable("currstats",preStats)
		DoAfterSpecial(2, "e;e;e;e;e;quit", 10)
	end
end

function yanjiu_getmaxcount()
	local count = 0
	for i=1,table.getn(_G.ResearchSkills_tbl) do
		if yanjiu_maxexp[i] == 1 then
			count = count + 1
		end
	end
	return count
end


--=================================================================
--�����Ϻ��Զ�Robot
function yanjiu_OnConnect()
	Common_SendToWorld("e;s;s;#6 w;n;#5 w;/yanjiu_start()")
end

--�������ߺ�
function  yanjiu_OnReconnect()
	DoAfterSpecial(10, "/yanjiu_start()", 10)
end

--����̫��
function yanjiu_TooManyCommand()
	yanjiu_DisableAll()
	DoAfterSpecial(20, "/yanjiu_start()", 10)
end

--����
function yanjiu_OnEvent()
	yanjiu_DisableAll()
	world.Disconnect()
end

--��Ϣ
function yanjiu_doxiuxi()
	xiuxi_doxiuxi()
	DoAfterSpecial(0.1, "sleep", 10)
end

function yanjiu_xiuxi()
	yanjiu_DisableAll()
	DoAfterSpecial(1, "/xiuxi_start(\"yanjiu\")", 10)
end

function yanjiu_xiuxicomplete()  
	xiuxi_complete()
	DoAfterSpecial(0.5, "/yanjiu_start()", 10)
end