require("hy.common.cmd")
require("hy.common.common")

--ʵ�ְ�·������������
function autosearch_Start(cmd)
	Common_AddCustomerTrigger("autosearch_fight1", "autosearch_fight","^(?P<front>.*)ֻ�ܶ�ս���еĶ���ʹ�á�", "/autosearch_stepnofight(\"%<front>\")")
	Common_AddCustomerTrigger("autosearch_fight2", "autosearch_fight","^(?P<front>.*)ֻ����ս����ʹ�á�", "/autosearch_stepnofight(\"%<front>\")")
	Common_AddCustomerTrigger("autosearch_fight3", "autosearch_fight","^(?P<front>.*)ֻ����ս���жԶ���ʹ�á�", "/autosearch_stepnofight(\"%<front>\")")
	Common_AddCustomerTrigger("autosearch_fight4", "autosearch_fight","^(?P<front>.*)ֻ�ܶԶ���ʹ�á�", "/autosearch_stepnofight(\"%<front>\")")

	--����
	Common_AddCustomerTrigger("autosearch_mingjiao1", "autosearch_mingjiao","^��һ��С�Ľ���̤�˸���", "/autosearch_mingjiaopaifang()")
	Common_AddCustomerTrigger("autosearch_mingjiao2", "autosearch_mingjiao","^ջ�� - northup��southdown", "/autosearch_nextgo()")
	Common_AddCustomerTrigger("autosearch_mingjiao3", "autosearch_mingjiao","^�����һԾ��ȴ��ʯ������һ�ɶ�Զ�������ǰ׷�����", "/autosearch_xuantianyaup()")
	Common_AddCustomerTrigger("autosearch_mingjiao4", "autosearch_mingjiao","^��ʹ����һ�ģ���ʯ����������Զ�͵���������ˤ�ı�������", "/autosearch_xuantianyaup()")
	Common_AddCustomerTrigger("autosearch_mingjiao5", "autosearch_mingjiao","^�����������ʯ��ֻ��һ����ˣ��ټӰѾ�", "/autosearch_xuantianyaup()")
	Common_AddCustomerTrigger("autosearch_mingjiao6", "autosearch_mingjiao","^����ʯ - down", "/autosearch_nextgo()")

	--��ɽ
	Common_AddCustomerTrigger("autosearch_huashan1", "autosearch_huashan","^����߸��������йء�all������Ϣ��", "/autosearch_huashandokill()")
	Common_AddCustomerTrigger("autosearch_huashan2", "autosearch_huashan","^����û�������", "/autosearch_nextgo()")

	--����
	Common_AddCustomerTrigger("autosearch_shaolin1", "autosearch_shaolin","^������(.*?)�����йء�all������Ϣ��", "/autosearch_shaolindokill()")
	Common_AddCustomerTrigger("autosearch_shaolin2", "autosearch_shaolin","^����û�������", "/autosearch_nextgo()")

	--��ɽ
	Common_AddCustomerTrigger("autosearch_songshan1", "autosearch_songshan","^�����һԾ��ȴ���ٲ�������һ�ɶ�Զ�������ǰ׷�������", "/autosearch_sjcyup()")
	Common_AddCustomerTrigger("autosearch_songshan2", "autosearch_songshan","^��ʹ����һ�ģ����ٲ�����������Զ�͵���������ˤ�ı������ס�", "/autosearch_sjcyup()")
	Common_AddCustomerTrigger("autosearch_songshan3", "autosearch_songshan","^������������ٲ���ֻ��һ����ˣ��ټӰѾ���", "/autosearch_sjcyup()")
	Common_AddCustomerTrigger("autosearch_songshan4", "autosearch_songshan","^����Ͽ - down��northup", "/autosearch_nextgo()")		
	Common_AddCustomerTrigger("autosearch_songshan5", "autosearch_songshan","^����û�������", "/autosearch_nextgo()")
	Common_AddCustomerTrigger("autosearch_songshan6", "autosearch_songshan","^�����ֺ�����йء�all������Ϣ��", "/autosearch_songshandokill()")

	Common_AddCustomerTimer("autosearch1", "autosearch",0, 0, 1, "pfm")
	
	SetVariable("searchstep",1)
	
	if cmd ~= nil then
		SetVariable("searchcmd",cmd)
	else
		SetVariable("searchcmd","")
	end
end

function autosearch_DisableAll()
	EnableTriggerGroup("autosearch_fight", false)
	EnableTriggerGroup("autosearch_mingjiao", false)
	EnableTriggerGroup("autosearch_huashan", false)
	EnableTriggerGroup("autosearch_shaolin", false)
	EnableTriggerGroup("autosearch_songshan", false)
	EnableTimerGroup("autosearch",false)
end

function autosearch_GoStep(typeid,cmd)
	EnableTriggerGroup("autosearch_"..typeid, true)
	SetVariable("searchstepcmd",cmd)
end

function autosearch_StepNext(cmd)
	local searchstep = tonumber(GetVariable("searchstep"))
	searchstep = searchstep + 1
	SetVariable("searchstep",searchstep)
  	if string.find(cmd,"/autosearch_GoStep") then
		Common_SendToWorld(cmd)
	else
		local searchcmd = GetVariable("searchcmd")
		Common_SendToWorld(cmd..";"..searchcmd)
	end 
end

function autosearch_StepReturn(cmd)
	autosearch_DisableAll()
	Common_SendToWorld(cmd..";sigh4")
end

function autosearch_StepFail()
	local searchstep = tonumber(GetVariable("searchstep"))
	searchstep = searchstep - 1
	SetVariable("searchstep",searchstep)
end

function autosearch_stepnofight(txt)
	if Common_FilterTxt(txt) == nil then
		return
	end 
	EnableTriggerGroup("autosearch_fight", false)
	EnableTimer("autosearch1",false)
	local searchkillover = GetVariable("searchkillover")
	Common_SendToWorld(searchkillover)
end


function autosearch_nextgo()
	autosearch_DisableAll()
	local searchstepcmd = GetVariable("searchstepcmd")
	local searchcmd = GetVariable("searchcmd")
	Common_SendToWorld(searchstepcmd..";"..searchcmd)
end

function autosearch_mingjiaopaifang()
	Common_SendToWorld("yj;yq;nu;enter;nu;nu")
end

function autosearch_xuantianyaup()
	Common_SendToWorld("up")
end

function autosearch_huashandokill()
	SetVariable("searchkillover","/autosearch_nextgo()")
	Common_SendToWorld("kill gao genming")
	EnableTriggerGroup("autosearch_fight", true)
	EnableTimer("autosearch1",true)
end

function autosearch_shaolindokill()
	local xingbie = GetVariable("xingbie")
	if xingbie == "Ů" then
		SetVariable("searchkillover","/autosearch_shaolindokill()")
		Common_SendToWorld("kill xu")
		EnableTriggerGroup("autosearch_fight", true)
		EnableTimer("autosearch1",true)
		return
	end
	autosearch_nextgo()
end

function autosearch_sjcyup()
	Common_SendToWorld("up")
end

function autosearch_gosongshandokill()
	SetVariable("searchkillover","/autosearch_nextgo()")
	Common_SendToWorld("kill yao hou")
	EnableTriggerGroup("autosearch_fight", true)
	EnableTimer("autosearch1",true)
end