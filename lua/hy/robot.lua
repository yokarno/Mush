
m_Common = require("hy.common.common")

m_Endrobot = 0
m_Deadtimes = 0
m_Eatjindan = 0
m_Deaded = 0
m_Zhongdu = ""
m_Hasjindan = 0
m_Jobsite = ""
m_Jobstatus = ""

m_Liaotianid = "zhm"


--ѧϰ
function xuexi()
	CloseAll()
	m_Endrobot = 0
	xuexi_start()
end

--����
function dushu()
	CloseAll()
	m_Endrobot = 0
	dushu_start()
end 

--ץ��
function hszhuahou()
	CloseAll()
	m_Endrobot = 0
	hszhuahou_start()
end

--Ѳɽ
function hsxunshan()
	CloseAll()
	m_Endrobot = 0
	hsxunshan_start()
end 

--����������
function dazuo()
	CloseAll()
	m_Endrobot = 0
	dazuo_start()
end

--ռ��
function thlocation()
	CloseAll()
	m_Endrobot = 0
	thlocation_start()
end

--�о�
function yanjiu()
	CloseAll()
	m_Endrobot = 0
	yanjiu_start()
end

--��ϰ
function lianxi()
	CloseAll()
	m_Endrobot = 0
	lianxi_start()
end

--��9��
function lian9jian()
	CloseAll()
	m_Endrobot = 0
	lian9jian_start()
end

--��������
function tmshouwei()
	CloseAll()
	m_Endrobot = 0
	tmshouwei_start()
end

--Ѻ��
function yabiao()
	CloseAll()
	m_Endrobot = 0
	yabiao_start()
end

--����
function tasks()
	CloseAll()
	m_Endrobot = 0
	tasks_start()
end

--����
function liaotian()
	CloseAll()
	m_Endrobot = 0
	liaotian_start()
end

--����
function jiangjing()
	CloseAll()
	m_Endrobot = 0
	xsjiangjing_start()
end

--ɨѩ
function saoxue()
	CloseAll()
	m_Endrobot = 0
	lxsaoxue_start()
end

--��������
function lxliaoshang()
	CloseAll()
	m_Endrobot = 0
	lxliaoshang_start()
end

--��������
function lxshouwei()
	CloseAll()
	m_Endrobot = 0
	lxshouwei_start()
end

--̫��
function thinktx()
	CloseAll()
	m_Endrobot = 0
	thinktx_start()
end 

--team 
function teamjob()
	CloseAll()
	m_Endrobot = 0
	teamjob_start()
end

--���������� 
function tmzuoanqi()
	CloseAll()
	m_Endrobot = 0
	tmzuoanqi_start()
end

--��������
function tmliaoshang()
	CloseAll()
	m_Endrobot = 0
	tmliaoshang_start()
end

--����������
function wxliaoshang()
	CloseAll()
	m_Endrobot = 0
	wxliaoshang_start()
end

--����
function liandan()
	CloseAll()
	m_Endrobot = 0
	liandan_start()
end

--��������
function kllianqin()
	CloseAll()
	m_Endrobot = 0
	kllianqin_start()
end

--����Ȱ��
function emquanjia()
	CloseAll()
	m_Endrobot = 0
	emquanjia_start()
end

--��ɽռ��
function hslocation()
	CloseAll()
	m_Endrobot = 0
	hslocation_start()
end

--teach
function teach()
	CloseAll()
	m_Endrobot = 0
	teach_start()
end

--��ң
function xysing()
	CloseAll()
	m_Endrobot = 0
	xysing_start()
end

--���ɶ���
function menpaiduilian()
	CloseAll()
	m_Endrobot = 0
	menpaiduilian_start()
end

--�����ڻ�
function dlwahua()
	CloseAll()
	m_Endrobot = 0
	dlwahua_start()
end

--Ľ�ݽ���
function mrjiaohua()
	CloseAll()
	m_Endrobot = 0
	mrjiaohua_start()
end

--�һ�ɱ��
function thshaguan()
	CloseAll()
	m_Endrobot = 0
	thshaguan_start()
end


--����ĥҩ
function ftmoyao()
	CloseAll()
	m_Endrobot = 0
	ftmoyao_start()
end

--������Ϸ
function changxi()
	CloseAll()
	m_Endrobot = 0
	changxi_start()
end

--��ĹɱԪ˧
function gmshaguan()
	CloseAll()
	m_Endrobot = 0
	gmshaguan_start()
end

--��������ʹquest
function menpaiquest()
	CloseAll()
	m_Endrobot = 0
	menpaiquest_start()
end

--��������
function wmfanlaji()
	CloseAll()
	m_Endrobot = 0
	wmfanlaji_start()
end

--����team
function guojianxi()
	CloseAll()
	m_Endrobot = 0
	guojianxi_start()
end

--��������
function guobaohu()
	CloseAll()
	m_Endrobot = 0
	guobaohu_start()
end

--��������
function huangjob()
	CloseAll()
	m_Endrobot = 0
	huangjob_start()
end

--=================================================================
--�����Ϻ��Զ�Robot
function OnConnect()
	m_Endrobot = 0
	world.Execute("score")
	local currstats = GetVariable("currstats")
	if currstats == "" then 
		currstats = "liaotian"
		SetVariable("currstats","liaotian")
	end
	
	local memberstatus = GetVariable("member")
	if memberstatus == 1 then
		--goto gc and start job
	else
		--save�ص㲻������ĵ�������
		-- if currstats == "tasks" then 
		-- 	Common_Connectwithsilver()
		-- 	return
		-- elseif currstats == "tmshouwei" then 
		-- 	Common_Connectwithsilver()
		-- 	return
		-- elseif currstats == "tmliaoshang" then 
		-- 	Common_Connectwithsilver()
		-- 	return
		-- elseif currstats == "tmzuoanqi" then 
		-- 	Common_Connectwithsilver()
		-- 	return
		-- elseif currstats == "xsjiangjing" then 
		-- 	Common_Connectwithsilver()
		-- 	return
		-- elseif currstats == "thlocation" then 
		-- 	Common_Connectwithsilver()
		-- 	return
		-- elseif currstats == "emquanjia" then 
		-- 	Common_Connectwithsilver()
		-- 	return
		-- elseif currstats == "liaotian" then 
		-- 	Common_Connectwithsilver()
		-- 	return
		-- elseif currstats == "menpaiduilian" then 
		-- 	Common_Connectwithsilver()
		-- 	return
		-- elseif currstats == "thshaguan" then 
		-- 	Common_Connectwithsilver()
		-- 	return
		-- elseif currstats == "ftmoyao" then 
		-- 	Common_Connectwithsilver()
		-- 	return
		-- elseif currstats == "hslocation" then 
		-- 	Common_Connectwithsilver()
		-- 	return
		-- end
	end


	m_Zf zhongdu == "du" then
		m_Lorld.Execute("e;s;s;#6 w;n;#6 w;s;s;ask ".._G.liaotianid.." about jiedu")
		m_Zhongdu = ""
		DoAfterSpecial(5,"n;n;#6 e;s;#6 e;n;n;w",10)
		DoAfterSpecial(6,"/OnConnect()",10)
		return 
	m_Zlseif zhongdu == "handu" then
		m_Lorld.Execute("e;s;s;#6 w;n;#6 w;s;s;ask ".._G.liaotianid.." about jiehandu")
		m_Zhongdu = ""
		DoAfterSpecial(5,"n;n;#6 e;s;#6 e;n;n;w",10)
		DoAfterSpecial(6,"/OnConnect()",10)
		return 
	m_Zlseif zhongdu == "heal" then
		m_Lorld.Execute("e;s;s;#6 w;n;#6 w;s;s;ask ".._G.liaotianid.." about heal")
		m_Zhongdu = ""
		DoAfterSpecial(5,"n;n;#6 e;s;#6 e;n;n;w",10)
		DoAfterSpecial(6,"/OnConnect()",10)
		return 
	end
	
	m_Df deaded == 1 then
		world.Execute("e;s;w;u;apply card;takeout 99 silver")
		DoAfterSpecial(3,"takeout 10 gold",10)
		DoAfterSpecial(5,"d;e;n;w",10)
		m_Deaded = 0
		DoAfterSpecial(6,"EnableTimer(\"givesilver\", true)",12)
		EnableTriggerGroup("common3", true)
	else
		EnableTimer("givesilver", true)
		EnableTriggerGroup("common3", true)
	end
end

function OnReconnect()
	local currstats = GetVariable("currstats")
	if currstats == "" then 
		return
	end
	world.Execute("/"..currstats.."_OnReconnect()")
end

function OnEvent()
	local currstats = GetVariable("currstats")
	if currstats == "" then 
		return
	end
	world.Execute("/"..currstats.."_OnEvent()")
end

function EndRobot()
	m_Endrobot = 1
end

function ContinueRobot()
	m_Endrobot = 0
end

function gag()
end

function CloseAll()
	m_Common.CloseAll()
	CommonTriggers()
	EnableTimer("autoemote", true)
end

function StopAll()
	m_Common.StopAll()
  	CommonTriggers()
  	EnableTimer("autoemote", true)
end

function RandomEmote(name1,name2,name3)
	m_Common.RandomEmote(name1,name2,name3)
end

function Jiejiuyin()
	m_Common.AnswerZhou()	
	EnableTriggerGroup("zhou", true)
end

function CommonTriggers()
	
	
	m_Common.AddCustomerTrigger("common1", "common","^  �� �� �� ��(.+?)\\\/(.+?)\\\((.+?)�� �� �� ��(.+?)\\\/(.+?)\\\((.*?)", "/SetV1(%1,%2,%4,%5)")
	m_Common.AddCustomerTrigger("common2", "common","^  �� �� Ѫ ��(.+?)\\\/(.+?)\\\((.+?)�� �� �� ��(.+?)\\\/(.+?)\\\((.*?)", "/SetV2(%1,%2,%4,%5)")
	m_Common.AddCustomerTrigger("common3", "common","^  �� �� �� ��(.+?)����������(.*?)", "/SetV3(%1)")
	m_Common.AddCustomerTrigger("common4", "common","^  �� ��ҩҩ�� ��\\\:(?P<lingyao>.*)", "/SetV4(\"%<lingyao>\")")
	m_Common.AddCustomerTrigger("common5", "common","^  �� ��ͨҩ�� ��\\\:(?P<putongyao>.*)", "/SetV5(\"%<putongyao>\")")
	
	m_Common.AddCustomerTrigger("common6", "common","^  �� ʳ �� ��(.+?)\\\/(.+?)\\\[(.+?)�� Ǳ �� ��(.+?)����\\\[(.+?)\\\]", "/SetV6(%1,%2,%4,%5)")
	m_Common.AddCustomerTrigger("common7", "common","^  �� �� ˮ ��(.+?)\\\/(.+?)\\\[(.+?)�� �� �� ��(.+?)$", "/SetV7(%1,%2,%4)")
	
	m_Common.AddCustomerTrigger("common8", "common","^(.*?)������(.*?)ǰ��", "get all")
	m_Common.AddCustomerTrigger("common9", "common","^���ϴι��ٺ���(.*?)��(.*?)���ӵġ�", "/OnConnect()")
	m_Common.AddCustomerTrigger("common10", "common","^����������ϡ�", "/OnReconnect()")
	m_Common.AddCustomerTrigger("common11", "common","^���Ź� \- north", "/Common_Dead()")
	m_Common.AddCustomerTrigger("common12", "common","^  �� �� �� ��(.+?)����������(.*?)", "/SetV8(%1)")
	
	m_Common.AddCustomerTrigger("common13", "common","^(?P<front>.*)\\((?P<tellid>.*)\\)�����㣺eat jin dan", "/SetJindan(\"%<front>\",\"%<tellid>\")")
		
	m_Common.AddCustomerTrigger("common14", "common","^һ�������Ũ��ͻȻ���֣��ܿ�ذ�Χ���㡣", "/Common_OnDead()")
	
	m_Common.AddCustomerTrigger("common15", "common","^��ӭ���ٺ���II(.*?) - ", "cd;n;yz;w;w;n;w")


	m_Common.AddCustomerTrigger("common23", "common","^���(.*?)������ϡ�����(.*?)", "yun wanfaguizong")
	m_Common.AddCustomerTrigger("common24", "common","^��ɳ�������óɹ�!", "jump;ya;say ��ɳ�������óɹ�!")
	m_Common.AddCustomerTrigger("common25", "common","^������ɹ���������!", "jump;ya;say ������ɹ���������!")

	m_Common.AddCustomerTrigger("common26", "common","^����ĺ�����Χ�����ȫ���������۳ɱ��飡", "eat badan;eat guo")

	m_Common.AddCustomerTrigger("common27", "common","^��Ե�ҩ��ҩ�Թ��ˣ�", "hp")
	
	m_Common.AddCustomerTrigger("common28", "common","^���������顿(.*?)����", "/m_EndRobot()")
	
	m_Common.AddCustomerTrigger("common29", "common","^���������¡� ֻ��hxsd�߾�˫�֣���ȣ���ȥ����!��, ֻ������һ���������", "/OnEvent()")
	m_Common.AddCustomerTrigger("common30", "common","^���������¡� �������ױ�������������ŵ��ϱ�ȥ����", "/OnEvent()")

	m_Common.AddCustomerTrigger("common31", "common","^���������¡� ��գ�  ��Ȼ�㲻��������͸����һ��ս��", "/OnEvent()")
	m_Common.AddCustomerTrigger("common32", "common","^���������¡�(.*?)���¹ⱦ������һ�ף���������ĳ��ͷ��", "/OnEvent()")

	m_Common.AddCustomerTrigger("common33", "common","^���������¡� ����...", "/OnEvent()")
	m_Common.AddCustomerTrigger("common34", "common","^���������¡� ���ƣ�������������������������������", "/OnEvent()")

	m_Common.AddCustomerTrigger("common35", "common","^������ҥ�ԡ�ĳ�ˣ��㲻С�Ĳȵ�һ�ѹ�ʺ,����ʺ��ȴ�ҵ��˾�ת��!!", "/Common_OnJindan()")
	
	--m_Common.AddCustomerTrigger("common36", "common","^������ҥ�ԡ�ĳ�ˣ��㲻С�Ĳȵ�һ�ѹ�ʺ,����ʺ��ȴ�ҵ��˺��!!", "/Common_OnHongbao()")

	--m_Common.AddCustomerTrigger("common37", "common","^������ҥ�ԡ�ĳ�ˣ��㲻С�Ĳȵ�һ�ѹ�ʺ,����ʺ��ȴ�ҵ��˾�תС��!!", "/Common_OnXiaoJindan()")
	m_Common.AddCustomerTrigger("common38", "common","^                ������(.*?)�����������뾡��浵", "/m_EndRobot()")

	m_Common.AddCustomerTrigger("common39", "common","^���Ա�(.*?)��", "/SetV9(\"%1\")")

	m_Common.AddCustomerTrigger("common40", "common","^��ʦ�š�(.*?)��ʦ�Ź��ס�", "/SetV10(\"%1\")")
	m_Common.AddCustomerTrigger("common41", "common","^��ʦ�š�(.*?)��ʦ��׷ɱ��", "/SetV10(\"%1\")")
	m_Common.AddCustomerTrigger("common42", "common","^�����꡿(.*?)", "/SetV11(\"%1\")")

	m_Common.AddCustomerTrigger("common451", "common1","^û�������....��", "/Common_eatjindan()")
	m_Common.AddCustomerTrigger("common452", "common1","^����(.*?)�����йء�all������Ϣ��", "/Common_askjindan()")
	m_Common.AddCustomerTrigger("common453", "common1","^����û������ˡ�", "/Common_eatjindan()")
	m_Common.AddCustomerTrigger("common454", "common1","^�����(.*?)��give me jin dan", "/Common_askedjindan()")
	m_Common.AddCustomerTrigger("common455", "common1","^(?P<front>.*)����(.*?)��ת�𵤡�", "/Common_eatjindan(\"%<front>\")")
	m_Common.AddCustomerTrigger("common456", "common1","^(?P<front>.*)\\((?P<tellid>.*)\\)�����㣺no jin dan", "/Common_nojindan(\"%<front>\",\"%<tellid>\")")

	m_Common.AddCustomerTrigger("common501", "common2","^���������ʿ���˸��򸣡�", "/Common_goaskjindan()")
	m_Common.AddCustomerTrigger("common502", "common2","^��Ҫ��ʲô��", "/Common_SellComplete()")
	m_Common.AddCustomerTrigger("common503", "common2","^�����Լ���", "/Common_jindanComplete()")


	m_Common.AddCustomerTrigger("common301", "common3","^���(.*?)һЩ������", "/Common_Connectwithsilver()")
	m_Common.AddCustomerTrigger("common302", "common3","^�����������������ˡ�", "drop 1 silver")
	m_Common.AddCustomerTrigger("common303", "common3","^������û������������", "takeout 99 silver")
	m_Common.AddCustomerTrigger("common304", "common3","^��û����ô���(.*?)", "takeout 99 silver")
	m_Common.AddCustomerTrigger("common305", "common3","^�������ܱ��ֿ����ˡ�", "drop 1 silver")
	m_Common.AddCustomerTrigger("common306", "common3","^����ʺ���û���Ƕ�", "deposit gold;deposit silver")

	m_Common.AddCustomerTrigger("common351", "common4","^(?P<material>.*) = (?P<materialid>.*)", "/Common_sellcailiao(\"%<material>\",\"%<materialid>\")")
	
	m_Common.AddCustomerTrigger("common401", "common5","^(?P<material>.*) = (?P<materialid>.*)", "/Common_givecailiao(\"%<material>\",\"%<materialid>\")")
	
	m_Common.AddCustomerTimer("autoemote", "autoemote",0, 3, 0, "/RandomEmote(\""..WorldName().."\",\"xianglan\",\"\")")
	
	m_Common.AddCustomerTimer("chahp", "chahp",0, 21, 0, "/Common_Idle()", 17409)
	
	m_Common.AddCustomerTimer("givesilver", "givesilver",0, 0, 1, "give "..WorldName().." 9 silver")
	
	EnableTriggerGroup("common", true)
	EnableTriggerGroup("common1", false)
	EnableTriggerGroup("common2", false)
	EnableTriggerGroup("common3", false)
	EnableTriggerGroup("common4", false)
	EnableTriggerGroup("common5", false)
	
	Accelerator ("F1+Ctrl", "/m_EndRobot()")
	Accelerator ("F1+Alt", "/ContinueRobot()")
	Accelerator ("Alt+S", "/liaotian()")
	Accelerator ("F1+Shift", "/Common_StopAll()")

end

function SetV1(jing,jing_max,jingli,jingli_max)
	SetVariable("jing",jing)
	SetVariable("jing_max",jing_max)
	SetVariable("jingli",jingli)
	SetVariable("jingli_max",jingli_max)
end

function SetV2(qi,qi_max,neili,neili_max)
	SetVariable("qi",qi)
	SetVariable("qi_max",qi_max)
	SetVariable("neili",neili)
	SetVariable("neili_max",neili_max)
end

function SetV3(zhengqi)
	SetVariable("zhengqi",zhengqi)
end

function SetV4(lingyao)
	SetVariable("lingyao",lingyao)
end

function SetV5(putongyao)
	SetVariable("putongyao",putongyao)
	putongyao = string.gsub(putongyao, "^%s*(.-)%s*$", "%1")
	if putongyao == "��" then
		m_Ef noeatjindanid_tbl[WorldName()] ~= nil then
			return
		else
			m_Hf hasjindan > 0 then 
				m_Hasjindan = hasjindan - 1
				world.Execute("eat jin dan;hp")
			else
				m_Ef eatjindanid_tbl[WorldName()] ~= nil then 
					m_Ef eatjindan == 0 then
						if m_Endrobot ==0 then
							m_LoAfterSpecial(1,"tell "..liaotianid.." ҩ�Թ���",10)
						end
					end
				end
			end
		end
	end
end

function SetV6(food,food_max,pot,pot_max)
	SetVariable("food",food)
	SetVariable("food_max",food_max)
	SetVariable("pot",pot)
	SetVariable("pot_max",pot_max)
	if nopotid_tbl[WorldName()] ~= nil then
		return
	end
	if tonumber(pot) >= tonumber(pot_max) then
		local currstats = GetVariable("currstats")
		if currstats == "xuexi" then
			return
		end
		if currstats == "lianxi" then
			return
		end
		if currstats == "yanjiu" then
			return
		end
		if currstats == "dushu" then
			return
		end
		m_Endrobot = 2
		SetVariable("currstats","liaotian")
		m_LoAfterSpecial(10,"tell "..liaotianid.." pot ����",10)
	end
	
end 

function SetV7(water,water_max,experi)
	SetVariable("water",water)
	SetVariable("water_max",water_max)
	SetVariable("experi",experi)
	
	m_Common.status()
end 

function SetV8(zhengqi)
	SetVariable("zhengqi",-zhengqi)
end

function SetV9(xingbie)
	SetVariable("xingbie",xingbie)
end

function SetV10(shimen)
	SetVariable("shimen",shimen)
end

function SetV11(age)
	SetVariable("age",age)
end

function Common_ConnectPath(path)
	if path == 1 then
		connectwumiao = 1
	else
	end
end

function SetJindan(txt,id)
  if FilterTxt(txt) == nil then
		return
	end 
	m_Lf id ~= liaotianid then 
		return
	end	
	m_Ef eatjindanid_tbl[WorldName()] == nil then 
		return
	end
	m_Eatjindan = 1
	local currstats = GetVariable("currstats")
	if currstats == "liaotian" then
		m_LoAfterSpecial(5,"tell "..liaotianid.." give me jin dan",10)
	end
end

function Common_Dead()
	m_Deadtimes = deadtimes + 1
	
	m_Common.StopAll()
	CommonTriggers()
end

function Common_OnDead()
	
	m_Common.StopAll()

	CommonTriggers()
	m_Deaded = 1

	world.Execute("hp;#8 yj;yq;cry")
	m_Common.RefreshStatus()
	local currstats = GetVariable("currstats")
	--��Щjob���⴦�������¼�
	if currstats == "tmshouwei" then
		SetVariable("currstats","yabiao") --ȥyabiao
	elseif currstats == "tmliaoshang" then
		SetVariable("currstats","yabiao") --ȥyabiao
	elseif currstats == "tmliaoshang" then --������
	elseif currstats == "xsjiangjing" then --����������������ȥliaotian�Ƚϰ�ȫ��
		SetVariable("currstats","liaotian")
	elseif currstats == "ftmoyao" then --
		SetVariable("currstats","liaotian")
	elseif currstats == "hslocation" then --
		SetVariable("currstats","liaotian")
	elseif currstats == "tasks" then --
		return
	elseif currstats == "guojianxi" then --
		DoAfterSpecial(1,"team talk fail quit",10)
	else
	end

	DoAfterSpecial(10,"quit",10)
end

function Common_Connectwithsilver()
	
	EnableTimer("givesilver", false)
	EnableTriggerGroup("common3", false)
	local currstats = GetVariable("currstats")
	if currstats == "" then 
		EnableTimer("autoemote", true)
		return
	end
	m_Endrobot = 0
	world.Execute("/"..currstats.."_OnConnect()")
end

function Common_OnJindan()
	m_Hasjindan = hasjindan + 1
	world.Execute("hp")
end

function Common_OnXiaoJindan()
	m_Ef noeatjindanid_tbl[WorldName()] ~= nil then
		return
	else
		world.Execute("eat sjin dan")
	end
end

function Common_OnHongbao()
	m_Ef noeatjindanid_tbl[WorldName()] ~= nil then
		return
	else
		world.Execute("opengift")
	end
end


function Common_goaskjindan()
	EnableTriggerGroup("common2", false)
	m_LoAfterSpecial(2,"#6 w;n;#6 w;s;s;ask "..liaotianid.." about all",10)
	EnableTriggerGroup("common1", true)
end

function Common_askjindan()
	m_Lorld.Execute("tell "..liaotianid.." give me jin dan")
	EnableTriggerGroup("common1", true)
end

function Common_askedjindan()
	EnableTriggerGroup("common1", true)
end

function Common_jindanComplete()
	EnableTriggerGroup("common5", false)
	EnableTriggerGroup("common2", false)
	m_Eatjindan = 0
	EnableTriggerGroup("common4", true)
	world.Execute("n;id"..";sell "..WorldName())
	EnableTriggerGroup("common2", true)
end

m_Eunction Common_eatjindan(txt)
  if FilterTxt(txt) == nil then
		return
	end 
	EnableTriggerGroup("common1", false)
	local putongyao = GetVariable("putongyao")
	putongyao = string.gsub(putongyao, "^%s*(.-)%s*$", "%1")
	if putongyao ~= "��" then
		m_Lorld.Execute("sorry "..liaotianid..";give jin dan to "..liaotianid)
  	m_Eatjindan = 0
  	world.Execute("n")
	  Common_SellComplete()
	else
		world.Execute("eat jin dan;id;hp"..";tell "..WorldName().." eat")
		EnableTriggerGroup("common5", true)
		EnableTriggerGroup("common2", true)
	end
end

function Common_nojindan(txt,id)
  if FilterTxt(txt) == nil then
		return
	end 
	m_Lf id ~= liaotianid then 
		return
	end	
	m_Lorld.Execute("slap "..liaotianid)
	m_Eatjindan = 0
	world.Execute("n")
	Common_SellComplete()
end

function Common_givegem(txt,gem)
	gem = string.gsub(gem, "^%s*(.-)%s*$", "%1")
	if commonjindan_tbl[gem] == nil then
		return
	end
	m_Lorld.Execute("give "..txt.." "..commonjindan_tbl[gem].." to "..liaotianid)
end

function Common_givecailiao(txt,objid)
	if FilterTxt(txt) == nil then
		return
	end 
	
	txt = string.gsub(txt, "^%s*(.-)%s*$", "%1")
	local tt = txt
	local t = 0
	
--	if string.find(txt,"ϸ���") then
--		tt,t =  string.gsub(txt,"ϸ���","")
--		Common_givegem("chipped",tt) 
--		return
--	else
	if string.find(txt,"�ֲڵ�") then
		tt,t =  string.gsub(txt,"�ֲڵ�","")
		Common_givegem("flawed",tt) 
		return
	elseif string.find(txt,"��׼��") then
		tt,t =  string.gsub(txt,"��׼��","")
		Common_givegem("standard",tt) 
		return
	elseif string.find(txt,"�ֲڵ�") then
		tt,t =  string.gsub(txt,"�ֲڵ�","")
		Common_givegem("flawed",tt) 
		return
	elseif string.find(txt,"���µ�") then
		tt,t =  string.gsub(txt,"���µ�","")
		Common_givegem("flawless",tt) 
		return
	elseif string.find(txt,"������") then
		tt,t =  string.gsub(txt,"������","")
		Common_givegem("perfect",tt) 
		return
	elseif string.find(txt,"������") then
		tt,t =  string.gsub(txt,"������","")
		Common_givegem("diwang",tt) 
		return
	elseif string.find(txt,"ħ����") then
		tt,t =  string.gsub(txt,"ħ����","")
		Common_givegem("mowang",tt) 
		return
	elseif string.find(txt,"��ʥ��") then
		tt,t =  string.gsub(txt,"��ʥ��","")
		Common_givegem("tiansheng",tt) 
		return
	else
	end
	
	if commonmaterial_tbl[txt] ~= nil then 
		if commonmaterial_tbl[txt][2] == "g" then
			m_Lorld.Execute("give "..commonmaterial_tbl[txt][1].." to "..liaotianid)
		end
		return
	end
		
	for i=10,19 do
		if string.find(objid,"surcoat"..tostring(i)) then
			m_Lorld.Execute("give surcoat"..tostring(i).." to "..liaotianid)
			return
		elseif string.find(objid,"pifen"..tostring(i)) then
			m_Lorld.Execute("give pifen"..tostring(i).." to "..liaotianid)
			return
		elseif string.find(objid,"boots"..tostring(i)) then
			m_Lorld.Execute("give boots"..tostring(i).." to "..liaotianid)
			return
		elseif string.find(objid,"helmet"..tostring(i)) then
			m_Lorld.Execute("give helmet"..tostring(i).." to "..liaotianid)
			return
		elseif string.find(objid,"necklace"..tostring(i)) then
			m_Lorld.Execute("give necklace"..tostring(i).." to "..liaotianid)
			return
		elseif string.find(objid,"shield"..tostring(i)) then
			m_Lorld.Execute("give shield"..tostring(i).." to "..liaotianid)
			return
		elseif string.find(objid,"waist"..tostring(i)) then
			m_Lorld.Execute("give waist"..tostring(i).." to "..liaotianid)
			return
		elseif string.find(objid,"wrists"..tostring(i)) then
			m_Lorld.Execute("give wrists"..tostring(i).." to "..liaotianid)
			return
		else
		end
	end	
end

function Common_sellcailiao(txt,objid)

	if FilterTxt(txt) == nil then
		return
	end 

	txt = string.gsub(txt, "^%s*(.-)%s*$", "%1")
	
	if commonmaterial_tbl[txt] ~= nil then 
		if commonmaterial_tbl[txt][2] == "s" then
			world.Execute("sell "..commonmaterial_tbl[txt][1])
		end
		return
	end
		
	local tt = txt
	local t = 0
	
	if string.find(txt,"ϸ���") then
		tt,t =  string.gsub(txt,"ϸ���","")
		world.Execute("sell chipped "..commonjindan_tbl[tt])
		return
--	elseif string.find(txt,"�ֲڵ�") then
--		tt,t =  string.gsub(txt,"�ֲڵ�","")
--		world.Execute("sell flawed "..commonjindan_tbl[tt])
--		return
	else
	end
	

	
	for i=17,1,-1 do
		if string.find(objid,"surcoat"..tostring(i)) then
			world.Execute("sell surcoat"..tostring(i))
			return
		elseif string.find(objid,"pifen"..tostring(i)) then
			world.Execute("sell pifen"..tostring(i))
			return
		elseif string.find(objid,"boots"..tostring(i)) then
			world.Execute("sell boots"..tostring(i))
			return
		elseif string.find(objid,"helmet"..tostring(i)) then
			world.Execute("sell helmet"..tostring(i))
			return
		elseif string.find(objid,"necklace"..tostring(i)) then
			world.Execute("sell necklace"..tostring(i))
			return
		elseif string.find(objid,"shield"..tostring(i)) then
			world.Execute("sell shield"..tostring(i))
			return
		elseif string.find(objid,"waist"..tostring(i)) then
			world.Execute("sell waist"..tostring(i))
			return
		elseif string.find(objid,"wrists"..tostring(i)) then
			world.Execute("sell wrists"..tostring(i))
			return
		else
		end
	end	
end

function Common_SellComplete()
	EnableTriggerGroup("common4", false)
	EnableTriggerGroup("common2", false)
	if m_Endrobot > 0 then 
		SetVariable("currstats","liaotian")
	end
	
	local currstats = GetVariable("currstats")
	--��Щjob���⴦��ʼ�ص�
	if currstats == "tmshouwei" then
		world.Execute("s;yj;yq;enable spells magic-earth;perform spells.portal")
	elseif currstats == "tmzuoanqi" then
		world.Execute("s;yj;yq;enable spells magic-earth;perform spells.portal")
	elseif currstats == "tmliaoshang" then
		world.Execute("s;yj;yq;enable spells magic-earth;perform spells.portal")
	elseif currstats == "xsjiangjing" then
		world.Execute("n;#6 e;s;#6 e;gc-xs;n;n")
	elseif currstats == "liaotian" then
		world.Execute("s")
		liaotian_start()
		return
	elseif currstats == "tasks" then
		world.Execute("s")
		tasks_start()
		return
	else
		DoAfterSpecial(2,"n;#6 e;s;#6 e;n;n;w",10)
	end

	DoAfterSpecial(5,"/"..currstats.."_OnConnect()",10)
end

function givebaoshi()
	world.Execute("id")
	EnableTriggerGroup("common5", true)
	DoAfterSpecial(2,"EnableTriggerGroup(\"common5\", true)",12)
end

function FilterTxt(txt)
	if txt == nil then
		return 1
	end
	if txt == "˫�����" then 
		return 1
	end
	if txt == "˫��������һ���" then 
		return 1
	end
  if string.find(txt,"��") then
		return nil
	end 
	s,e = string.gsub(txt,"��","��")
	if e > 0 then
		return nil
	end 
	
	return 1
end


function Common_Idle()
	world.Execute("hp")
	world.Connect()
end

function Common_StopAll()
	local activeworld = nil
	
	for k, v in pairs (GetWorldList()) do 
		activeworld = GetWorld (v)
		activeworld: DoAfterSpecial(0.1,"/m_EndRobot()",10)
		activeworld = nil
	end
end

function Common_OnOpen()
	--world.Open("E:/MUSHclient/worlds/zhm_Common.mcl")
end

