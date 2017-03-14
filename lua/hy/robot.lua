require("hy.common.common")
require("hy.common.cmd")
require("hy.materialtbl")

require("hy.skill.xuexi")
require("hy.skill.yanjiu")
require("hy.skill.dushu")
require("hy.skill.dazuo")

require("hy.job.liaotian")
require("hy.job.liandan")
require("hy.job.hsxunshan")
require("hy.job.xyzhihuan")
require("hy.job.huangjob")

EndRobot = 0
DeadTimes = 0
Deaded = 0
Poison = ""
JobMsg = ""
ChatID = "zhm"
MemberChan = 0
ReplaceLogin = 1

function sclient()
	SetVariable("IsSlient",1)
end

function nosclient()
	SetVariable("IsSlient",0)
end

function bredeem(nStart,nEnd)
	local tt = 0
	local member = tonumber(GetVariable("member",0))
	if member == 1 then
		for i=nStart,nEnd do
			if	member == 1 then
				DoAfterSpecial(tt+0.2,"mredeem "..i,10)
			else
				DoAfterSpecial(tt+0.2,"redeem "..i,10)
			end
			tt = tt + 0.1
		end
	end
end

--����
function liaotian()
	World_CloseAll()
	_G.EndRobot = 0
	liaotian_start()
end

--ѧϰ
function xuexi()
	World_CloseAll()
	_G.EndRobot = 0
	xuexi_start()
end

--����
function liandan()
	World_CloseAll()
	_G.EndRobot = 0
	liandan_start()
end

--Ѳɽ
function hsxunshan()
	World_CloseAll()
	_G.EndRobot = 0
	hsxunshan_start()
end

--�о�
function yanjiu()
	World_CloseAll()
	_G.EndRobot = 0
	yanjiu_start()
end

--����
function dushu()
	World_CloseAll()
	_G.EndRobot = 0
	dushu_start()
end

--����
function dazuo()
	World_CloseAll()
	_G.EndRobot = 0
	dazuo_start()
end

--��ңָ��
function xyzhihuan()
	World_CloseAll()
	_G.EndRobot = 0
	xyzhihuan_start()
end

--����job
function huangjob()
	World_CloseAll()
	_G.EndRobot = 0
	huangjob_start()
end

--=================================================================
--�����Ϻ��Զ�Robot
function World_Triggers()

	require("hy.idset."..WorldName())
	Common_AddCustomerTrigger("common1", "common","^�� ��  �� ��(.+?)\/(.+?)\((.+?)�� ��  �� ��(.+?)\/(.+?)\((.*?)", "/World_SetV1(%1,%2,%4,%5)")
	Common_AddCustomerTrigger("common2", "common","^�� ��  Ѫ ��(.+?)\/(.+?)\((.+?)�� ��  �� ��(.+?)\/(.+?)\((.*?)", "/World_SetV2(%1,%2,%4,%5)")
	Common_AddCustomerTrigger("common3", "common","^�� ʳ  �� ��(.+?)\/(.+?)�� Ǳ  �� ��(.+?)\\\((.*?)\\\)", "/World_SetV3(%1,%2,%3,%4)")
	Common_AddCustomerTrigger("common4", "common","^�� ��  ˮ ��(.+?)\/(.+?)�� ��  �� ��(.+?)$", "/World_SetV4(%1,%2,%3)")
	Common_AddCustomerTrigger("common5", "common","^�� ��  �� ��(.+?)���������ޡ�(.+?)", "/World_SetV5(%1)")
	Common_AddCustomerTrigger("common6", "common","^����ҩ��ҩ�ԡ�(.*?)��", "/World_SetV9(\"%1\")")
	Common_AddCustomerTrigger("common7", "common","^�� ��Ա�ȼ���(.*?)��Ա(.*?)", "/World_SetV10(\"%1\")")	
	Common_AddCustomerTrigger("common8", "common","^(.*?)������(.*?)ǰ��", "get all")
	Common_AddCustomerTrigger("common9", "common","^���ϴι��� ����(.*?)��(.*?)���ӵġ�", "/World_OnConnect()")
	Common_AddCustomerTrigger("common10", "common","^����������ϡ�", "/World_OnReconnect()")
	Common_AddCustomerTrigger("common11", "common","^���Ź� \- north", "/World_Dead()")
	Common_AddCustomerTrigger("common12", "common","^�� ��Ա�ȼ���һ�����(.*?)", "/World_SetV11(\"%1\")")
	
	
	Common_AddCustomerTrigger("common14", "common","^һ�������Ũ��ͻȻ���֣��ܿ�ذ�Χ���㡣", "/World_OnDead()")
	Common_AddCustomerTrigger("common15", "common","^�ϴ峤����˵������λ(.*?)��Ҫ����������ָ��(.*?) - ", "/World_OnNewbie()")
	Common_AddCustomerTrigger("common23", "common","^���(.*?)������ϡ�����(.*?)", "yun wanfaguizong")
	Common_AddCustomerTrigger("common24", "common","^��ɳ�������óɹ�!", "jump;ya;say ��ɳ�������óɹ�!")
	Common_AddCustomerTrigger("common25", "common","^������ɹ���������!", "jump;ya;say ������ɹ���������!")
	Common_AddCustomerTrigger("common26", "common","^����ĺ�����Χ�����ȫ���������۳ɱ��飡", "eat badan;eat guo")
	Common_AddCustomerTrigger("common27", "common","^��Ե�ҩ��ҩ�Թ��ˣ�", "sc")
	Common_AddCustomerTrigger("common28", "common","^���������顿(.*?)����", "/World_OnEndRobot()")
	Common_AddCustomerTrigger("common29", "common","^���������¡� ֻ��hxsd�߾�˫�֣���ȣ���ȥ����!��, ֻ������һ���������", "/World_OnEvent()")
	Common_AddCustomerTrigger("common30", "common","^���������¡� �������ױ�������������ŵ��ϱ�ȥ����", "/World_OnEvent()")
	Common_AddCustomerTrigger("common31", "common","^���������¡� ��գ�  ��Ȼ�㲻��������͸����һ��ս��", "/World_OnEvent()")
	Common_AddCustomerTrigger("common32", "common","^���������¡�(.*?)���¹ⱦ������һ�ף���������ĳ��ͷ��", "/World_OnEvent()")
	Common_AddCustomerTrigger("common33", "common","^���������¡� ����...", "/World_OnEvent()")
	Common_AddCustomerTrigger("common34", "common","^���������¡� ���ƣ�������������������������������", "/World_OnEvent()")
	Common_AddCustomerTrigger("common35", "common","^������ҥ�ԡ�ĳ�ˣ��㲻С�Ĳȵ�һ�ѹ�ʺ,����ʺ��ȴ�ҵ��˾�ת��!!", "/World_OnJindan()")
	Common_AddCustomerTrigger("common38", "common","^                ������(.*?)�����������뾡��浵", "/World_OnEndRobot()")
	Common_AddCustomerTrigger("common39", "common","^�����Ա�(.*?)��(.*?)��", "/World_SetV6(\"%1\")")
	Common_AddCustomerTrigger("common40", "common","^�������ɡ�(.*?)��","/World_SetV7(\"%1\")")
	Common_AddCustomerTrigger("common42", "common","^�������䡿(.*?)��", "/World_SetV8(\"%1\")")
	Common_AddCustomerTrigger("common43", "common","^ֻ��һ�����ɽ�������ڣ��������ȼ�����(.*?)", "sc")
	Common_AddCustomerTrigger("common44", "common","^��Ҫ����һ�������е���ͬ����ϳ�ȥ(.*?)", "/World_ReplaceLogin()")
	
	Common_AddCustomerTrigger("common101", "common1","^(?P<target>.*)\\((?P<targetid>.*)\\)�����㣺(.*?)", "/World_OnReceiveMessage(\"%<target>\",\"%<targetid>\",\"%<ccmd>\")")

	Common_AddCustomerTrigger("common551", "common6","^(?P<daoju>.*) = (?P<daojuid>.*)", "/World_getdaoju(\"%<daoju>\")")
	Common_AddCustomerTrigger("common552", "common6","^�����Լ���", "/World_daojucomplete()")
	
	Common_AddCustomerTrigger("common601", "common7","^(?P<chan>.*) ��(.*?)�쾦�����(.*?)", "/World_redeemchan(\"%<chan>\")")
	Common_AddCustomerTrigger("common602", "common7","^�����Լ���", "/World_chancomplete()")
	
	--Common_AddCustomerTimer("autoconnect", "autoconnect",0, 0, 5, "world.Connect()",17441,12)
	
	Common_AddCustomerTimer("autoemote", "autoemote",0, 3, 0, "/World_RandomEmote(\""..WorldName().."\",\"xiangling\",\"\")")
	Common_AddCustomerTimer("chahp", "chahp",0, 21, 0, "/World_Idle()", 17409)
	
	EnableTriggerGroup("common", true)
	EnableTriggerGroup("common1", true)
	EnableTriggerGroup("common6", false)
	EnableTriggerGroup("common7", false)
	
	Accelerator ("F1+Ctrl", "/World_OnEndRobot()")
	Accelerator ("F1+Alt", "/World_ContinueRobot()")
	Accelerator ("Alt+S", "/liaotian()")
	Accelerator ("F1+Shift", "/World_StopAll()")

	local currstats = GetVariable("currstats")
	if currstats == nil then 
		SetVariable("currstats","liaotian")
	end
end

function World_OnConnect()
	Common_GetWorldAddress()
	_G.EndRobot = 0
	_G.ReplaceLogin = 1
	EnableTriggerGroup("common6", true)
	Common_SendToWorld("hp;sc;id;tell "..WorldName().." aa")
end

function World_OnReconnect()
	Common_GetWorldAddress()
	local currstats = GetVariable("currstats")
	if currstats == nil then 
		return
	end
	if currstats == "" then
		return
	end
	Common_SendToWorld("/"..currstats.."_OnReconnect()")
end

function World_OnDisconnect()
	Common_CloseAll()
	local IsSlient = world.GetVariable("IsSlient") or 0
	if IsSlient ~= 0 then
		Common_ClearWorldAddress()
		world.DoAfterSpecial(10,"Common_SetWorldAddress()",12)
	end
	
end

function World_OnEvent()
	local currstats = GetVariable("currstats")
	if currstats == nil then 
		return
	end
	if currstats == "" then
		return
	end
	
	Common_SendToWorld("/"..currstats.."_OnEvent()")
end

function World_OnEndRobot()
	_G.EndRobot = 1
end

function World_ContinueRobot()
	_G.EndRobot = 0
end

function World_ReplaceLogin()
	if _G.ReplaceLogin ~= 0 then
		Common_SendToWorld("y")
	end
end

function World_OnJindan()
	local yaoxing = GetVariable("yaoxing")
	if yaoxing == "����" then
		Common_SendToWorld("eat jin dan")
	end
end

function World_OnNewbie()
	if _G.Newbie ~= nil then
		return
	end
	Common_SendToWorld("ask lao about ����;w;ask hua about ����;w;n;w")
end

function World_CloseAll()
	Common_CloseAll()
	World_Triggers()
	EnableTimer("autoemote", true)
end

function World_StopAll()
	Common_StopAll()
  	World_Triggers()
  	EnableTimer("autoemote", true)
end

function World_RandomEmote(name1,name2,name3)
	Common_RandomEmote(name1,name2,name3)
end

function World_SetV1(jing,jing_max,jingli,jingli_max)
	SetVariable("jing",jing)
	SetVariable("jing_max",jing_max)
	SetVariable("jingli",jingli)
	SetVariable("jingli_max",jingli_max)
end

function World_SetV2(qi,qi_max,neili,neili_max)
	SetVariable("qi",qi)
	SetVariable("qi_max",qi_max)
	SetVariable("neili",neili)
	SetVariable("neili_max",neili_max)
end

function World_SetV3(food,food_max,pot,pot_max)
	SetVariable("food",food)
	SetVariable("food_max",food_max)
	SetVariable("pot",pot)
	SetVariable("pot_max",pot_max)
	
	if _G.FullSkill == 0 then
		return
	end
	
	if tonumber(pot) >= tonumber(pot_max) then
		local currstats = GetVariable("currstats")
		if currstats == "xuexi" then
			return
		elseif currstats == "lianxi" then
			return
		elseif currstats == "yanjiu" then
			return
		elseif currstats == "dushu" then
			return
		end
		_G.EndRobot = 2
		SetVariable("currstats","liaotian")
		world.DoAfterSpecial(10,"tell ".._G.ChatID.." pot ����",10)
	end
end 

function World_SetV4(water,water_max,zhengqi)
	SetVariable("water",water)
	SetVariable("water_max",water_max)
	SetVariable("zhengqi",zhengqi)
end 

function World_SetV5(experi)
	SetVariable("experi",experi)
	World_RefreshStatus()
end

function World_SetV6(xingbie)
	xingbie = Trim(xingbie)
	SetVariable("xingbie",xingbie)
end

function World_SetV7(shimen)
	shimen = Trim(shimen)
	SetVariable("shimen",shimen)
end

function World_SetV8(age)
	age = Trim(age)
	SetVariable("age",age)
end

function World_SetV9(yaoxing)
	yaoxing = Trim(yaoxing)
	SetVariable("yaoxing",yaoxing)
	if yaoxing == "����" then

	end
end

function World_SetV10(member)
	SetVariable("member",1)
end

function World_SetV11(member)
	SetVariable("member",0)
end

function World_Dead()
	_G.DeadTimes = _G.DeadTimes + 1
	
	World_StopAll()
	World_Triggers()
end

function World_OnDead()
	World_StopAll()
	World_Triggers()
	_G.Deaded = 1
	Common_SendToWorld("hp;#8 yj;yq;cry")
	World_RefreshStatus()
	DoAfterSpecial(10,"quit",10)
end

function World_getdaoju(txt)
	if Common_FilterTxt(txt) == nil then
		return
	end 
	
	txt = Trim(txt)
	if txt == "�쾦�����" then
		_G.MemberChan = 1
		Common_SendToWorld("mpawn chan")
	-- elseif txt == "��ȡѫ��" then
		-- _G.MemberDaoju = 1
		-- Common_SendToWorld("mpawn emblem")
	-- elseif txt == "ѧϰѫ��" then
		-- _G.MemberDaoju = 1
		-- Common_SendToWorld("mpawn emblem")
	end
end

function World_daojucomplete()
	EnableTriggerGroup("common6", false)
	local currstats = GetVariable("currstats")
	if currstats == nil then 
		currstats = "liaotian"
		SetVariable("currstats","liaotian")
	end
	
	if currstats == "" then 
		currstats = "liaotian"
		SetVariable("currstats","liaotian")
	end

	local member = tonumber(GetVariable("member"))
	if member == 1 then
		Common_SendToWorld("chen dache;ask bei chou about membergift;w;n;w")
	end
	
	if _G.Deaded == 1 then
		_G.Deaded = 0
		Common_SendToWorld("e;s;w;u;apply card;takeout 99 silver")
		DoAfterSpecial(3,"takeout 10 gold",10)
		DoAfterSpecial(5,"d;e;s;".."/"..currstats.."_OnConnect()",10)
		return
	else
		if _G.Poison == "1" then
			if _G.MemberChan == 1 then
				EnableTriggerGroup("common7", true)
				Common_SendToWorld("id;tell "..WorldName().." aa")
				
				DoAfterSpecial(1,"e;s;s;".."/"..currstats.."_OnConnect()",10)
				return
			end
		end
		
		if _G.Poison == "1" then
			_G.Poison = ""
			Common_SendToWorld("e;s;s;s;e;e;ask ".._G.ChatID.." about jiedu")
			DoAfterSpecial(3,"eat chan",10)
			DoAfterSpecial(7,"w;w;n;".."/"..currstats.."_OnConnect()",10)
			return
		else
			Common_SendToWorld("/"..currstats.."_OnConnect()")
		end
		
	end
end

function World_redeemchan(chan)
	EnableTriggerGroup("common7", false)
	Common_SendToWorld("redeem "..tonumber(chan)..";use chan;mpawn chan")
	_G.Poison = ""
end

function World_chancomplete()
	EnableTriggerGroup("common7", false)
end

function World_Idle()
	Common_SendToWorld("hp")
	world.Connect()
end

function World_StopAll()
	local activeworld = nil
	
	for k, v in pairs (GetWorldList()) do 
		activeworld = GetWorld (v)
		activeworld.DoAfterSpecial(0.1,"/World_OnEndRobot()",10)
		activeworld = nil
	end
end

function World_OnReceiveMessage(target,targetid,ccmd)
	if Common_FilterTxt(target) == nil then
		return
	end 

	if targetid == _G.ChatID then
		World_DoReceiveMessage(ccmd)
		return
	end
	
	if targetid == "spraydew" then
		World_DoReceiveMessage(ccmd)
		return
	end
end

function World_DoReceiveMessage(ccmd)
	if ccmd == "end reboot" then
		_G.EndRobot = 1
		return
	elseif ccmd == "stop reboot" then
		World_CloseAll()
		return
	elseif ccmd == "replace" then
		_G.ReplaceLogin = 0
		return
	elseif ccmd == "goon rebot" then
		_G.EndRobot = 0
		return
	elseif ccmd == "quit" then
		DoAfterSpecial(5, "quit", 10)	
		return
	end
end

function World_OnOpen()
	if(world.WorldAddress() == nil) then
		world.SetAlphaOption("site","hy.21sun.net")
	end
	
	if(world.WorldAddress() == "0.0.0.0") then
		world.SetAlphaOption("site","hy.21sun.net")
	end
end

function World_RefreshStatus()
	local msg = "���� "..GetVariable("experi") .. " Ǳ�� "..GetVariable("pot").. "/"..GetVariable("pot_max").." ���� "..tostring(_G.DeadTimes).."��"
	if _G.JobMsg ~= "" then
		msg = msg .. " ����" .. _G.JobMsg
	end
	SetStatus (msg)
end
