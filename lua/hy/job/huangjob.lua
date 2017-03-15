require("hy.common.common")
require("hy.common.autosearch")
require("hy.common.stepwalking")
require("hy.common.cmd")
require("hy.job.menpaijobpath")
require("hy.xiuxi")

pausetimes = 0

--����job
function huangjob_start()

	Common_AddCustomerAlias("pfm_alias", "pfm", "exert regenerate\nexert recover\nperform strike.xuan")
	Common_AddCustomerAlias("pw_alias", "pw", "perform huanyinbu\nexert zongjue")
	Common_AddCustomerAlias("chd_alias", "chd", "drop cloth\nwear all")
	
	Common_AddCustomerTrigger("huangjob1", "huangjob1","^������ش����йء�job������Ϣ��", "/huangjob_questjob()")
	Common_AddCustomerTrigger("huangjob2", "huangjob1","^����û������ˡ�", "/huangjob_fail()")
	Common_AddCustomerTrigger("huangjob3", "huangjob1","^������ش����йء�����������Ϣ��", "/huangjob_pause()")
	--Common_AddCustomerTrigger("huangjob4", "huangjob1","^������(.*?)����", "/huangjob_xiuxi()")
	Common_AddCustomerTrigger("huangjob5", "huangjob1","^������ش����йء���ɡ�����Ϣ��", "/huangjob_xiuxi()")
	Common_AddCustomerTrigger("huangjob6", "huangjob1","^����Ъ������˵���ɡ�", "/huangjob_pause()")
	
	Common_AddCustomerTrigger("huangjob51", "huangjob2","^����˵����(.*?)����ָ��������ڡ�(?P<where>.*)��һ����������", "/huangjob_startgojob(\"%<where>\")")
	Common_AddCustomerTrigger("huangjob52", "huangjob2","^����˵����(.*?)�����ҿ�û�и�������񣬵Ȼ�������", "/huangjob_pause()")
	Common_AddCustomerTrigger("huangjob53", "huangjob2","^����˵�����ҿ�(.*?)��Ҫ��Ϣһ��", "/huangjob_pause()")
	Common_AddCustomerTrigger("huangjob54", "huangjob2","^����˵����(.*?)����һ�ε�����û���", "/huangjob_pause()")

	Common_AddCustomerTrigger("huangjob101", "huangjob3","^�����(.*?)�ȵ�", "/huangjob_fight()")
	Common_AddCustomerTrigger("huangjob102", "huangjob3","^����û������ˡ�", "/huangjob_failreturn()")
	--Common_AddCustomerTrigger("huangjob103", "huangjob3","^������̾�˿�����", "/huangjob_failreturn()")
	Common_AddCustomerTrigger("huangjob104", "huangjob3","^���ﲻ׼ս����", "/huangjob_killtufei()")
	Common_AddCustomerTrigger("huangjob105", "huangjob3","^��������æ��û��ɱ�ˡ�", "/huangjob_killtufei()")
	
	Common_AddCustomerTrigger("huangjob155", "huangjob4","^(?P<front>.*)ֻ�ܶ�ս���еĶ���ʹ�á�", "/huangjob_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("huangjob156", "huangjob4","^(?P<front>.*)ֻ����ս����ʹ�á�", "/huangjob_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("huangjob157", "huangjob4","^(?P<front>.*)ֻ����ս���жԶ���ʹ�á�", "/huangjob_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("huangjob158", "huangjob4","^(?P<front>.*)ֻ�ܶԶ���ʹ��", "/huangjob_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("huangjob159", "huangjob4","^��ֻ�ܶ�ս���еĶ���ʹ��(?P<front>.*)", "/huangjob_nofight(\"%<front>\")")
	
	Common_AddCustomerTrigger("huangjob301", "huangjob7","^�����˭Ϊʦ", "/huangjob_fail()")
	Common_AddCustomerTrigger("huangjob302", "huangjob7","^������ʿ�Ȳ�����κ����ɣ�Ҳû�п�ɽ���ɣ����ܰ�ʦ", "/huangjob_returnatgc()")

	Common_AddCustomerTrigger("huangjob351", "huangjob8","^���Ժ����ԣ�", "/huangjob_TooManyCommand()")

	Common_AddCustomerTrigger("huangjob401", "huangjob9","^���(.*?)һЩ������", "/huangjob_gotojob()")
	Common_AddCustomerTrigger("huangjob402", "huangjob9","^�����������������ˡ�", "drop 1 silver")
	Common_AddCustomerTrigger("huangjob403", "huangjob9","^������û������������", "takeout 99 silver")
	Common_AddCustomerTrigger("huangjob404", "huangjob9","^��û����ô���(.*?)", "takeout 99 silver")
	Common_AddCustomerTrigger("huangjob405", "huangjob9","^�������ܱ��ֿ����ˡ�", "drop 1 silver")
	Common_AddCustomerTrigger("huangjob406", "huangjob9","^����ʺ���û���Ƕ�", "deposit gold;deposit silver")
	
	Common_AddCustomerTimer("huangjob1", "huangjob",0, 0, 1, "pfm")
	--Common_AddCustomerTimer("huangjob2", "huangjob",0, 0, 1, "ask "..WorldName())
	Common_AddCustomerTimer("huangjob3", "huangjob",0, 0, 1, "give "..WorldName().." 9 silver")
	
	Common_AddCustomerTimer("timerpause", "timerpause",0, 1, 0, "/huangjob_timerpause()",17409)
	
	stepwalking_start()
	autosearch_Start("kill "..WorldName().." tufei")
	
	huangjob_DisableAll()
	SetVariable("currstats","huangjob")
	SetVariable("jobpath","")
	SetVariable("searchstep",0)
	SetVariable("jobok",0)
	SetVariable("jobstep",1)
	EnableTimer("autoemote", false)
	EnableTriggerGroup("huangjob1", true)
	pausetimes = 0
	Common_SendToWorld("chd;pw;ask huang rong about job")
end

function huangjob_DisableAll()
	EnableTriggerGroup("huangjob1", false)
	EnableTriggerGroup("huangjob2", false)
	EnableTriggerGroup("huangjob3", false)
	EnableTriggerGroup("huangjob4", false)
	EnableTriggerGroup("huangjob6", false)
	EnableTriggerGroup("huangjob7", false)
	EnableTriggerGroup("huangjob8", true)
	EnableTriggerGroup("huangjob9", false)
	
	EnableTimerGroup("huangjob", false)
end

function huangjob_timerpause()
	if _G.EndRobot > 0 then
		return
	end
	
	Common_SendToWorld("why")
	pausetimes = pausetimes + 1
	if pausetimes > 8 then 
		pausetimes = 0
		huangjob_DisableAll()
		DoAfterSpecial(5,"why;quit",10)
	end
end

function huangjob_questjob()
	huangjob_DisableAll()
	EnableTriggerGroup("huangjob2", true)
end

function huangjob_fail()
	huangjob_DisableAll()
	DoAfterSpecial(5,"why;quit",10)
end

function huangjob_failquit()
	huangjob_DisableAll()
	Common_SendToWorld("why;quit")
end

function huangjob_pause()
	huangjob_DisableAll()
	if _G.EndRobot > 0 then
		EnableTimer("timerpause", false)
		EnableTimer("autoemote", true)
	else
		if _G.ReadShenzhaoInJob == 1 then
			huangjob_Randushu()
		end
		
		if _G.FullSkillInJob == 1 then
			local i = math.random(1,table.getn(_G.ResearchSkills_tbl))
			Common_SendToWorld("w;yanjiu ".._G.ResearchSkills_tbl[i].." ".._G.ResearchTimes..";yj")
			DoAfterSpecial(3,"e",10)
		end

		DoAfterSpecial(3,"ask huang rong about job",10)
		SetVariable("searchstep",0)
		EnableTriggerGroup("huangjob1", true)
	end
end

function huangjob_startgojob(didian)
	huangjob_DisableAll()
	local jobpath = didian
	SetVariable("jobpath",jobpath)
	SetVariable("jobstep",1)
	_G.JobMsg = "����job �ص㣺"..jobpath
	World_RefreshStatus()
	
	pausetimes = 0
		
	EnableTimer("huangjob3",true)
	EnableTriggerGroup("huangjob9",true)	
end

function huangjob_gotojob()
	huangjob_DisableAll()
	local jobpath = GetVariable("jobpath")
	
	if menpaijobpath_tbl[jobpath]== nil then
		DoAfterSpecial(0.5,"ask huang rong about ����",10)
		EnableTriggerGroup("huangjob1",true)
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
				DoAfterSpecial(0.5,"ask huang rong about ����",10)
				EnableTriggerGroup("huangjob1",true)
				return
			end
			
			if table.getn(menpaijobpath_tbl[jobpath]["GoPath"]) == 1 then
				Common_SendToWorld("#4 s;e;xi-gc;"..menpaijobpath_tbl[jobpath]["GoPath"][1]..";/stepwalking_GoTarget()")
			else
				Common_SendToWorld("#4 s;e;xi-gc;"..menpaijobpath_tbl[jobpath]["GoPath"][1])
			end
		end
	end		
end

function huangjob_fight(txt)
	huangjob_DisableAll()
	EnableTimer("huangjob1", true)
	EnableTriggerGroup("huangjob4",true)
end

function huangjob_nofight(txt)
  	if Common_FilterTxt(txt) == nil then
		return
	end 
	
	huangjob_DisableAll()

	local jobpath = GetVariable("jobpath")
	SetVariable("jobstep",1)

	local member = tonumber(GetVariable("member",0))
	if member == 1 then
		Common_SendToWorld("chen xy;w;n;n;n;n;ask huang rong about ���")
		EnableTriggerGroup("huangjob1", true)
	else
		if table.getn(menpaijobpath_tbl[jobpath]["ReturnPath"]) == 1 then
			Common_SendToWorld(menpaijobpath_tbl[jobpath]["ReturnPath"][1]..";/stepwalking_TargetReturn()")
		else
			Common_SendToWorld(menpaijobpath_tbl[jobpath]["ReturnPath"][1])
		end
	end
end

function huangjob_stepnofight()
	if Common_FilterTxt(txt) == nil then
		return
	end 
	huangjob_DisableAll()
	local killover = GetVariable("killover")
	Common_SendToWorld(killover)
end

function huangjob_nextstep()
	local searchstep = tonumber(GetVariable("searchstep"))
	local jobpath = GetVariable("jobpath")
	searchstep = searchstep + 1
	if searchstep >= table.getn(menpaijobpath_tbl[jobpath]["SearchStep"]) then 
		autosearch_SearchStepReturn(menpaijobpath_tbl[jobpath]["SearchStepReturn"][searchstep-1])
	else
		autosearch_StepNext(menpaijobpath_tbl[jobpath]["SearchStep"][searchstep])
	end
end

function huangjob_killtufei()
	huangjob_DisableAll()
	DoAfterSpecial(1,"kill "..WorldName().." tufei",10)
	EnableTriggerGroup("huangjob3",true)
end

function huangjob_failreturn()
	huangjob_DisableAll()
	local jobpath = GetVariable("jobpath")
	SetVariable("jobstep",1)
	--SetVariable("jobok",0)
	local member = tonumber(GetVariable("member",0))
	if member == 1 then
		EnableTriggerGroup("huangjob1", true)
		Common_SendToWorld("chen xy;w;#4 n;ask huang rong about ����")
	else
		if table.getn(menpaijobpath_tbl[jobpath]["ReturnPath"]) == 1 then
			DoAfterSpecial(1,"/Common_SendToWorld(\""..menpaijobpath_tbl[jobpath]["ReturnPath"][1]..";/stepwalking_TargetReturn()\")",10)
		else
			DoAfterSpecial(1,"/Common_SendToWorld(\""..menpaijobpath_tbl[jobpath]["ReturnPath"][1].."\")",10)
		end
	end
end 

function huangjob_returnjob()
	huangjob_DisableAll()
	SetVariable("jobstep",1)
	local jobpath = GetVariable("jobpath")
	--SetVariable("jobok",1)
	if table.getn(menpaijobpath_tbl[jobpath]["ReturnPath"]) == 1 then
		DoAfterSpecial(1,"/Common_SendToWorld(\""..menpaijobpath_tbl[jobpath]["ReturnPath"][1]..";/stepwalking_TargetReturn()\")",10)
	else
		DoAfterSpecial(1,"/Common_SendToWorld(\""..menpaijobpath_tbl[jobpath]["ReturnPath"][1].."\")",10)
	end
end

function huangjob_returnatgc()
	huangjob_DisableAll()
	DoAfterSpecial(2,"gc-xi;w;#4 n;ask huang rong about ���",10)
	EnableTriggerGroup("huangjob1",true)
end

function huangjob_Randushu()
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
function huangjob_OnGoTarget()
	huangjob_DisableAll()
	EnableTriggerGroup("huangjob3",true)
	Common_SendToWorld("kill "..WorldName().." tufei")
end

--����
function huangjob_OnTargetReturn()
	huangjob_DisableAll()
	Common_SendToWorld("bai noname")
	EnableTriggerGroup("huangjob7", true)
end

--ʧ��
function huangjob_OnTargetFail()
	huangjob_DisableAll()
	EnableTriggerGroup("huangjob1", true)
	DoAfterSpecial(2,"gc-xi;w;#4 n;ask huang rong about ����",10)
end

--������
function huangjob_OnNextGo()
	huangjob_DisableAll()
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
function huangjob_OnNextReturn()
	huangjob_DisableAll()
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
function huangjob_OnConnect()
	local member = tonumber(GetVariable("member",0))
	if member == 1 then
		DoAfterSpecial(1,"chen xy;w;#4 n;/huangjob_start()",10)
	else
		DoAfterSpecial(1,"e;s;s;gc-xi;w;#4 n;/huangjob_start()",10)
	end
end

--�������ߺ�
function  huangjob_OnReconnect()
	huangjob_DisableAll()
	DoAfterSpecial(2,"why;quit",10)
end

--����̫��
function huangjob_TooManyCommand()
	huangjob_DisableAll()
	DoAfterSpecial(20,"why;quit",10)
end

--����
function huangjob_OnEvent()
	huangjob_DisableAll()
	world.Disconnect()
end

--��Ϣ
function huangjob_doxiuxi()
	xiuxi_doxiuxi()

	local food = tonumber(GetVariable("food"))
	local foodmax = tonumber(GetVariable("food_max"))
	local water = tonumber(GetVariable("water"))
	local watermax = tonumber(GetVariable("water_max"))
	if (food > foodmax/2) and (water > watermax/2) then
		DoAfterSpecial(1,"w;sleep",10)
		return
	end 
	
	DoAfterSpecial(1.5,"s;s;s;s;e;s;s;e;buy baozi;eat baozi;eat baozi;eat baozi;drop baozi",10)
	DoAfterSpecial(3,"buy jiudai;drink jiudai;drink jiudai;drink jiudai;drop jiudai;w;n;n",10)
	DoAfterSpecial(5,"w;n;n;n;n;w;sleep",10)
	EnableTriggerGroup("xiuxi2",true)
end

function huangjob_xiuxi()
	if _G.EndRobot > 0 then
		huangjob_DisableAll()
		EnableTimer("timerpause", false)
		EnableTimer("autoemote", true)
	else
		huangjob_DisableAll()
		xiuxi_start("huangjob")
	end
end

function huangjob_xiuxicomplete()  
	xiuxi_complete()
	if _G.EndRobot == 0 then
		DoAfterSpecial(0.5, "e;/huangjob_start()", 10)
		return
	end
end