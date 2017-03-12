require("hy.common.common")
require("hy.common.autosearch")
require("hy.common.stepwalking")
require("hy.common.cmd")
require("hy.job.menpaijobpath")
require("hy.xiuxi")

pausetimes = 0

--��ңjob
function xyzhihuan_start()

	Common_AddCustomerAlias("pfm_alias", "pfm", "exert regenerate\nexert recover\nperform strike.xuan")
	Common_AddCustomerAlias("pw_alias", "pw", "perform huanyinbu\nexert zongjue")
	Common_AddCustomerAlias("chd_alias", "chd", "drop cloth\nwear all")
	
	Common_AddCustomerTrigger("xyzhihuan1", "xyzhihuan1","^�������ǺӴ����йء�job������Ϣ��", "/xyzhihuan_questjob()")
	Common_AddCustomerTrigger("xyzhihuan2", "xyzhihuan1","^����û������ˡ�", "/xyzhihuan_failquit()")
	Common_AddCustomerTrigger("xyzhihuan3", "xyzhihuan1","^�������ǺӴ����йء�ʧ�ܡ�����Ϣ��", "/xyzhihuan_pause()")
	Common_AddCustomerTrigger("xyzhihuan4", "xyzhihuan1","^���ǺӶ���˵������������ü�Ϊ��ɫ���Ҿ�ָ�������ֹ����", "/xyzhihuan_xiuxi()")
	Common_AddCustomerTrigger("xyzhihuan5", "xyzhihuan1","^����Ъ������˵���ɡ�", "/xyzhihuan_pause()")
	
	Common_AddCustomerTrigger("xyzhihuan51", "xyzhihuan2","^���Ǻ�˵����(?P<jobid>.*) �߱�ָ�����ڡ�(?P<where>.*)�����֣���ȥ��", "/xyzhihuan_startgojob(\"%<jobid>\",\"%<where>\")")
	Common_AddCustomerTrigger("xyzhihuan52", "xyzhihuan2","^���ǺӶ�����ҡ��ҡͷ˵����Ȼ�����", "/xyzhihuan_pause()")
	Common_AddCustomerTrigger("xyzhihuan53", "xyzhihuan2","^���Ǻ�˵�����Ҳ��Ǹ�������������", "/xyzhihuan_fail()")
	Common_AddCustomerTrigger("xyzhihuan53", "xyzhihuan2","^���Ǻ�˵����(.*?)���ϻ��б��������ȥ����������ɣ�", "/xyzhihuan_fail()")
	
	
	Common_AddCustomerTrigger("xyzhihuan101", "xyzhihuan3","^�������ң����ͽ", "/xyzhihuan_fight()")
	Common_AddCustomerTrigger("xyzhihuan102", "xyzhihuan3","^����û������ˡ�", "/xyzhihuan_failreturn()")
	--Common_AddCustomerTrigger("xyzhihuan103", "xyzhihuan3","^������̾�˿�����", "/xyzhihuan_failreturn()")
	Common_AddCustomerTrigger("xyzhihuan104", "xyzhihuan3","^���ﲻ׼ս����", "/xyzhihuan_killpantu()")
	Common_AddCustomerTrigger("xyzhihuan105", "xyzhihuan3","^��������æ��û��ɱ�ˡ�", "/xyzhihuan_killpantu()")
	
	Common_AddCustomerTrigger("xyzhihuan155", "xyzhihuan4","^(?P<front>.*)ֻ�ܶ�ս���еĶ���ʹ�á�", "/xyzhihuan_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("xyzhihuan156", "xyzhihuan4","^(?P<front>.*)ֻ����ս����ʹ�á�", "/xyzhihuan_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("xyzhihuan157", "xyzhihuan4","^(?P<front>.*)ֻ����ս���жԶ���ʹ�á�", "/xyzhihuan_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("xyzhihuan158", "xyzhihuan4","^(?P<front>.*)ֻ�ܶԶ���ʹ��", "/xyzhihuan_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("xyzhihuan159", "xyzhihuan4","^��ֻ�ܶ�ս���еĶ���ʹ��(?P<front>.*)", "/xyzhihuan_nofight(\"%<front>\")")

	Common_AddCustomerTrigger("xyzhihuan301", "xyzhihuan7","^�����˭Ϊʦ", "/xyzhihuan_failquit()")
	Common_AddCustomerTrigger("xyzhihuan302", "xyzhihuan7","^������ʿ�Ȳ�����κ����ɣ�Ҳû�п�ɽ���ɣ����ܰ�ʦ", "/xyzhihuan_returnatgc()")

	Common_AddCustomerTrigger("xyzhihuan351", "xyzhihuan8","^���Ժ����ԣ�", "/xyzhihuan_TooManyCommand()")

	Common_AddCustomerTrigger("xyzhihuan401", "xyzhihuan9","^���(.*?)һЩ������", "/xyzhihuan_gotojob()")
	Common_AddCustomerTrigger("xyzhihuan402", "xyzhihuan9","^�����������������ˡ�", "drop 1 silver")
	Common_AddCustomerTrigger("xyzhihuan403", "xyzhihuan9","^������û������������", "takeout 99 silver")
	Common_AddCustomerTrigger("xyzhihuan404", "xyzhihuan9","^��û����ô���(.*?)", "takeout 99 silver")
	Common_AddCustomerTrigger("xyzhihuan405", "xyzhihuan9","^�������ܱ��ֿ����ˡ�", "drop 1 silver")
	Common_AddCustomerTrigger("xyzhihuan406", "xyzhihuan9","^����ʺ���û���Ƕ�", "deposit gold;deposit silver")
	
	Common_AddCustomerTimer("xyzhihuan1", "xyzhihuan",0, 0, 1, "pfm")
	--Common_AddCustomerTimer("xyzhihuan2", "xyzhihuan",0, 0, 1, "ask "..WorldName())
	Common_AddCustomerTimer("xyzhihuan3", "xyzhihuan",0, 0, 1, "give "..WorldName().." 9 silver")
	
	Common_AddCustomerTimer("timerpause", "timerpause",0, 1, 0, "/xyzhihuan_timerpause()",17409)
	
	stepwalking_start()
	autosearch_Start("kill "..WorldName().."-pantu")
	
	xyzhihuan_DisableAll()
	SetVariable("currstats","xyzhihuan")
	SetVariable("jobpath","")
	SetVariable("searchstep",0)
	SetVariable("jobok",0)
	SetVariable("jobstep",1)
	EnableTimer("autoemote", false)
	EnableTriggerGroup("xyzhihuan1", true)
	pausetimes = 0
	Common_SendToWorld("chd;pw;ask su xinghe about job")
end

function xyzhihuan_DisableAll()
	EnableTriggerGroup("xyzhihuan1", false)
	EnableTriggerGroup("xyzhihuan2", false)
	EnableTriggerGroup("xyzhihuan3", false)
	EnableTriggerGroup("xyzhihuan4", false)
	EnableTriggerGroup("xyzhihuan7", false)
	EnableTriggerGroup("xyzhihuan8", true)
	EnableTriggerGroup("xyzhihuan9", false)
	EnableTriggerGroup("xyzhihuan10", false)
	
	EnableTimerGroup("xyzhihuan", false)
end

function xyzhihuan_timerpause()
	if _G.EndRobot > 0 then
		return
	end
	Common_SendToWorld("why")
	pausetimes = pausetimes + 1
	if pausetimes > 8 then 
		pausetimes = 0
		xyzhihuan_DisableAll()
		DoAfterSpecial(5,"why;quit",10)
	end
end

function xyzhihuan_questjob()
	xyzhihuan_DisableAll()
	EnableTriggerGroup("xyzhihuan2", true)
end

function xyzhihuan_fail()
	xyzhihuan_DisableAll()
	Common_SendToWorld("ask su xinghe about ʧ��")	
	EnableTriggerGroup("xyzhihuan1", true)
	pausetimes = 0
end

function xyzhihuan_failquit()
	xyzhihuan_DisableAll()
	Common_SendToWorld("why;quit")
end

function xyzhihuan_pause()
	xyzhihuan_DisableAll()	
	if _G.EndRobot > 0 then
		EnableTimer("timerpause", false)
		EnableTimer("autoemote", true)
	else
		if _G.ReadShenzhaoInJob == 1 then
			xyzhihuan_Randushu()
		end
		
		if _G.FullSkillInJob == 1 then
			local i = math.random(1,table.getn(_G.ResearchSkills_tbl))
			Common_SendToWorld("w;w;w;yanjiu ".._G.ResearchSkills_tbl[i].." ".._G.ResearchTimes..";yj")
			DoAfterSpecial(2,"e;e;e",10)
		end
		
		DoAfterSpecial(3,"ask su xinghe about job",10)
		SetVariable("searchstep",0)
		EnableTriggerGroup("xyzhihuan1", true)
	end
end

function xyzhihuan_startgojob(jobid,didian)
	xyzhihuan_DisableAll()
	if jobid ~= WorldName() then
		xyzhihuan_fail()
		return
	end
	
	local jobpath = didian
	SetVariable("jobpath",jobpath)
	SetVariable("jobstep",1)
	_G.JobMsg = "��ңѰָ�� �ص㣺"..jobpath
	World_RefreshStatus()
	
	pausetimes = 0
	
	EnableTimer("xyzhihuan3",true)
	EnableTriggerGroup("xyzhihuan9",true)
end

function xyzhihuan_gotojob()
	xyzhihuan_DisableAll()
	local jobpath = GetVariable("jobpath")
	
	if menpaijobpath_tbl[jobpath]== nil then
		DoAfterSpecial(0.5,"ask su xinghe about ʧ��",10)
		EnableTriggerGroup("xyzhihuan1",true)
	else
		local member = tonumber(GetVariable("member",0))
		if member == 1 then
			if table.getn(menpaijobpath_tbl[jobpath]["MemberGoPath"]) == 1 then
				Common_SendToWorld(menpaijobpath_tbl[jobpath]["MemberGoPath"][1]..";/stepwalking_GoTarget()")
			else
				Common_SendToWorld(menpaijobpath_tbl[jobpath]["MemberGoPath"][1])
			end
		else
			if menpaijobpath_tbl[jobpath]["GoPath"] == nil then
				DoAfterSpecial(0.5,"ask su xinghe about ʧ��",10)
				EnableTriggerGroup("xyzhihuan1",true)
				return
			end
			
			if table.getn(menpaijobpath_tbl[jobpath]["GoPath"]) == 1 then
				Common_SendToWorld("xy-gc;"..menpaijobpath_tbl[jobpath]["GoPath"][1]..";/stepwalking_GoTarget()")
			else
				Common_SendToWorld("xy-gc;"..menpaijobpath_tbl[jobpath]["GoPath"][1])
			end
		end
	end		
end

function xyzhihuan_fight()
	xyzhihuan_DisableAll()
	EnableTimer("xyzhihuan1", true)
	EnableTriggerGroup("xyzhihuan4",true)
end

function xyzhihuan_nofight(txt)
  	if Common_FilterTxt(txt) == nil then
		return
	end 
	xyzhihuan_DisableAll()

	local jobpath = GetVariable("jobpath")
	SetVariable("jobstep",1)

	local member = tonumber(GetVariable("member",0))
	if member == 1 then
		Common_SendToWorld("chen mp22")
		xyzhihuan_xiuxi()
	else
		if table.getn(menpaijobpath_tbl[jobpath]["ReturnPath"]) == 1 then
			Common_SendToWorld(menpaijobpath_tbl[jobpath]["ReturnPath"][1]..";/stepwalking_TargetReturn()")
		else
			Common_SendToWorld(menpaijobpath_tbl[jobpath]["ReturnPath"][1])
		end
	end
end

function xyzhihuan_stepnofight()
	if Common_FilterTxt(txt) == nil then
		return
	end 
	xyzhihuan_DisableAll()
	local killover = GetVariable("killover")
	Common_SendToWorld(killover)
end

function xyzhihuan_nextstep()
	local searchstep = tonumber(GetVariable("searchstep"))
	local jobpath = GetVariable("jobpath")
	searchstep = searchstep + 1
	if searchstep >= table.getn(menpaijobpath_tbl[jobpath]["SearchStep"]) then 
		autosearch_SearchStepReturn(menpaijobpath_tbl[jobpath]["SearchStepReturn"][searchstep-1])
	else
		autosearch_StepNext(menpaijobpath_tbl[jobpath]["SearchStep"][searchstep])
	end
end

function xyzhihuan_killpantu()
	xyzhihuan_DisableAll()
	DoAfterSpecial(1,"kill "..WorldName().."-pantu",10)
	EnableTriggerGroup("xyzhihuan3",true)
end

function xyzhihuan_failreturn()
	xyzhihuan_DisableAll()
	local jobpath = GetVariable("jobpath")
	SetVariable("jobstep",1)
	--SetVariable("jobok",0)
	local member = tonumber(GetVariable("member",0))
	if member == 1 then
		Common_SendToWorld("chen mp22")
	else
		if table.getn(menpaijobpath_tbl[jobpath]["ReturnPath"]) == 1 then
			DoAfterSpecial(1,"/Common_SendToWorld(\""..menpaijobpath_tbl[jobpath]["ReturnPath"][1]..";/stepwalking_TargetReturn()\")",10)
		else
			DoAfterSpecial(1,"/Common_SendToWorld(\""..menpaijobpath_tbl[jobpath]["ReturnPath"][1].."\")",10)
		end
	end
end 

function xyzhihuan_returnjob()
	xyzhihuan_DisableAll()
	SetVariable("jobstep",1)
	local jobpath = GetVariable("jobpath")
	--SetVariable("jobok",1)
	if table.getn(menpaijobpath_tbl[jobpath]["ReturnPath"]) == 1 then
		DoAfterSpecial(1,"/Common_SendToWorld(\""..menpaijobpath_tbl[jobpath]["ReturnPath"][1]..";/stepwalking_TargetReturn()\")",10)
	else
		DoAfterSpecial(1,"/Common_SendToWorld(\""..menpaijobpath_tbl[jobpath]["ReturnPath"][1].."\")",10)
	end
end

function xyzhihuan_returnatgc()
	xyzhihuan_DisableAll()
	DoAfterSpecial(2,"gc-xy;ask su xinghe about job",10)
	EnableTriggerGroup("xyzhihuan1",true)
end

function xyzhihuan_Randushu()
	if _G.ReadShenzhaoInJob == 1 then
		local i = math.random(1,10)
		if i > 5 then 
			Common_SendToWorld("yandu shenzhao jing")
			Common_SendToWorld("yandu shenzhao jing")
		else
			Common_SendToWorld("yandu shenzhao jing")
			Common_SendToWorld("yandu shenzhao jing")
		end
		Common_SendToWorld("exert regenerate")
		Common_SendToWorld("exert regenerate")
	else
		Common_SendToWorld("yq;dazuo 10")
	end
end

--================================================================
--questͨ�ýӿ�

--����
function xyzhihuan_OnGoTarget()
	xyzhihuan_DisableAll()
	EnableTriggerGroup("xyzhihuan3",true)
	Common_SendToWorld("kill "..WorldName().."-pantu")
end

--����
function xyzhihuan_OnTargetReturn()
	xyzhihuan_DisableAll()
	Common_SendToWorld("bai noname")
	EnableTriggerGroup("xyzhihuan7", true)
end

--ʧ��
function xyzhihuan_OnTargetFail()
	xyzhihuan_DisableAll()
	EnableTriggerGroup("xyzhihuan1", true)
	DoAfterSpecial(2,"gc-xy;ask su xinghe about ʧ��",10)
end

--������
function xyzhihuan_OnNextGo()
	xyzhihuan_DisableAll()
	local jobpath = GetVariable("jobpath")
	local jobstep = tonumber(GetVariable("jobstep"))
	jobstep = jobstep + 1
	SetVariable("jobstep",jobstep)
	local member = tonumber(GetVariable("member",0))
	if member == 1 then
		if (jobstep + 1 > table.getn(menpaijobpath_tbl[jobpath]["MemberGoPath"])) then
			Common_SendToWorld(menpaijobpath_tbl[jobpath]["MemberGoPath"][jobstep]..";/stepwalking_GoTarget()")		
		else
			Common_SendToWorld(menpaijobpath_tbl[jobpath]["MemberGoPath"][jobstep])
		end
	else
		if (jobstep + 1 > table.getn(menpaijobpath_tbl[jobpath]["GoPath"])) then
			Common_SendToWorld(menpaijobpath_tbl[jobpath]["GoPath"][jobstep]..";/stepwalking_GoTarget()")		
		else
			Common_SendToWorld(menpaijobpath_tbl[jobpath]["GoPath"][jobstep])
		end
	end
end

--������
function xyzhihuan_OnNextReturn()
	xyzhihuan_DisableAll()
	local jobpath = GetVariable("jobpath")
	local jobstep = tonumber(GetVariable("jobstep"))
	jobstep = jobstep + 1
	SetVariable("jobstep",jobstep)
	if (jobstep + 1 > table.getn(menpaijobpath_tbl[jobpath]["ReturnPath"])) then
		Common_SendToWorld(menpaijobpath_tbl[jobpath]["ReturnPath"][jobstep]..";/stepwalking_TargetReturn()")		
	else
		Common_SendToWorld(menpaijobpath_tbl[jobpath]["ReturnPath"][jobstep])
	end
end

--=================================================================
--�����Ϻ��Զ�Robot
function xyzhihuan_OnConnect()
	local member = tonumber(GetVariable("member",0))
	if member == 1 then
		DoAfterSpecial(1,"chen mp22;/xyzhihuan_start()",10)
	else
		Common_SendToWorld("e;s;s")
		DoAfterSpecial(2,"gc-xy",10)
		DoAfterSpecial(3,"/xyzhihuan_start()",10)
	end
end

--�������ߺ�
function  xyzhihuan_OnReconnect()
	xyzhihuan_DisableAll()
	DoAfterSpecial(2,"why;quit",10)
end

--����̫��
function xyzhihuan_TooManyCommand()
	xyzhihuan_DisableAll()
	DoAfterSpecial(20,"why;quit",10)
end

--����
function xyzhihuan_OnEvent()
	xyzhihuan_DisableAll()
	world.Disconnect()
end

--��Ϣ
function xyzhihuan_doxiuxi()
	xiuxi_doxiuxi()

	local food = tonumber(GetVariable("food"))
	local foodmax = tonumber(GetVariable("food_max"))
	local water = tonumber(GetVariable("water"))
	local watermax = tonumber(GetVariable("water_max"))
	if (food > foodmax/2) and (water > watermax/2) then
		DoAfterSpecial(1,"w;w;w;sleep",10)
		return
	end 
	local member = tonumber(GetVariable("member",0))
	if member == 1 then
		DoAfterSpecial(1,"chen gc;s;s;w;buy doufu;eat doufu;drink;drop doufu;chen mp22;w;w;w;sleep",10)
	else
		DoAfterSpecial(1,"e;e;e;e;n;w;n;n;n;n;n;n;w;buy doufu;eat doufu;drink;drop doufu",10)
		DoAfterSpecial(2,"e;s;s;s;s;s;s;e;e;s;w;w;w;w;w;sleep",10)
	end
end

function xyzhihuan_xiuxi()
	if _G.EndRobot > 0 then
		xyzhihuan_DisableAll()
		EnableTimer("timerpause", false)
		EnableTimer("autoemote", true)
	else
		xyzhihuan_DisableAll()
		xiuxi_start("xyzhihuan")
	end
end

function xyzhihuan_xiuxicomplete()  
	xiuxi_complete()
	if _G.EndRobot == 0 then
		DoAfterSpecial(0.5, "e;e;e;/xyzhihuan_start()", 10)
		return
	end
end