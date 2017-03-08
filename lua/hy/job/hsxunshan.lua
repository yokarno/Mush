--Ѳɽ
require("hy.common.common")
require("hy.common.cmd")
require("hy.xiuxi")

hsxunshanpausetimes = 0
mengmianstep = 1
mengmianpfmtimes = 0
myname = ""
hsxunshantimeok = 0;


mengmian_tbl = {
{"s;sw","ne;n"},
{"w","e;ne;n"},
{"nw","se;e;ne;n"},
{"ne","se;ne;n"},
{"e","s;ne;n"},
{"n","s;s;ne;n"},
{"s;e","sw;ne;n"},
{"s","w;ne;n"},
{"n;ne","sw;sw;ne;n"},
{"e","w;sw;sw;ne;n"}
}

function hsxunshan_start()
	Common_AddCustomerAlias("pfm_alias", "pfm", "exert regenerate;exert recover;perform sword.xuan")
	Common_AddCustomerAlias("pw_alias", "pw", "perform huanyinbu;exert zongjue")
	Common_AddCustomerAlias("chd_alias", "chd", "drop cloth;wear all")
	
	Common_AddCustomerTimer("hsxunshan2", "hsxunshan",0, 0, 2, "pfm")
	Common_AddCustomerTimer("hsxunshan3", "hsxunshan",0, 0, 1, "halt")
	Common_AddCustomerTimer("hsxunshan4", "hsxunshan",0, 0, 2, "/hsxunshan_mengmianpfm()")
	
	Common_AddCustomerTrigger("hsxunshan1", "hsxunshan1","^����û������ˡ�", "/hsxunshan_pause()")
	Common_AddCustomerTrigger("hsxunshan2", "hsxunshan1","^����Ⱥ������˵�����ɵ�������Ѳɽ���㣬�ܺã��ܺã����ȥ�ɡ�", "/hsxunshan_job()")
	Common_AddCustomerTrigger("hsxunshan3", "hsxunshan1","^��������ɺ�����й�", "/hsxunshan_pause()")
	Common_AddCustomerTrigger("hsxunshan4", "hsxunshan1","^����Ⱥ������˵�����������ˡ������ȥ��Ϣȥ�ɡ�", "/hsxunshan_gomengmian()")
	Common_AddCustomerTrigger("hsxunshan5", "hsxunshan1","^����Ⱥ������˵����˵����ĵ��˲�û�б�����", "why;quit;/hsxunshan_DisableAll()")
	Common_AddCustomerTrigger("hsxunshan6", "hsxunshan1","^����Ⱥ������˵���㳯����ûȥ����������Ѳ��ʲôɽ��", "/hsxunshan_chaoyang1()")
	Common_AddCustomerTrigger("hsxunshan7", "hsxunshan1","^����Ⱥ������˵���㵽��˼����ȥ�ˣ�����Ѳ��ʲôɽ��", "/hsxunshan_siguo()")
	Common_AddCustomerTrigger("hsxunshan8", "hsxunshan1","^����Ⱥ������˵���㵽��Ů����滪ɽС��ȥ�����ˣ�����Ѳ��ʲôɽ��", "/hsxunshan_xiaozhu()")
	Common_AddCustomerTrigger("hsxunshan9", "hsxunshan1","^����Ⱥ������˵����������ûȥ����������Ѳ��ʲôɽ��", "/hsxunshan_lianhua()")	
	Common_AddCustomerTrigger("hsxunshan10", "hsxunshan1","^����Ⱥ������˵������̨��ûȥ����������Ѳ��ʲôɽ��", "/hsxunshan_yuntai()")
	Common_AddCustomerTrigger("hsxunshan11", "hsxunshan1","^����Ⱥ������˵������ôûȥ�����£�����Ѳ��ʲôɽ��", "/hsxunshan_sheshen()")
	Common_AddCustomerTrigger("hsxunshan12", "hsxunshan1","^����Ⱥ������˵������Ϣһ������", "/hsxunshan_xiuxi()")
	Common_AddCustomerTrigger("hsxunshan13", "hsxunshan1","^����Ⱥ������˵����Ѳɽ��ʱ�仹û����", "/hsxunshan_xiuxi()")
	Common_AddCustomerTrigger("hsxunshan14", "hsxunshan1","^������æ��", "/hsxunshan_pause()")
	Common_AddCustomerTrigger("hsxunshan15", "hsxunshan1","^����Ъ������˵���ɡ�", "/hsxunshan_pause()")
	
	Common_AddCustomerTrigger("hsxunshan51", "hsxunshan2","^������(?P<target>.*)��ɱ����", "/hsxunshan_kill(\"%<target>\")")
	Common_AddCustomerTrigger("hsxunshan53", "hsxunshan2","^���Ѳɽ�����ʱ������ˡ�", "/hsxunshan_timerok()")

	--Common_AddCustomerTrigger("hsxunshan101", "hsxunshan3","^�����ڲ�æ��", "/dohsxunshan()")
	Common_AddCustomerTrigger("hsxunshan102", "hsxunshan3","^(?P<front>.*)ֻ�ܶ�ս���еĶ���ʹ��", "/hsxunshan_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("hsxunshan103", "hsxunshan3","^(?P<front>.*)ֻ����ս����ʹ��", "/hsxunshan_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("hsxunshan104", "hsxunshan3","^(?P<front>.*)ֻ����ս���жԶ���ʹ��", "/hsxunshan_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("hsxunshan105", "hsxunshan3","^(?P<front>.*)ֻ�ܶԶ���ʹ��", "/hsxunshan_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("hsxunshan106", "hsxunshan3","^���Ѳɽ�����ʱ������ˡ�", "/hsxunshan_timerfightok()")
	Common_AddCustomerTrigger("hsxunshan107", "hsxunshan3","^��ֻ�ܶ�ս���еĶ���ʹ��(?P<front>.*)", "/hsxunshan_nofight(\"%<front>\")")
	
	Common_AddCustomerTrigger("hsxunshan151", "hsxunshan4","^��Ҫ��ʲô��", "/hsxunshan_chaoyang2()")
	Common_AddCustomerTrigger("hsxunshan152", "hsxunshan4","^ʩ����������Ⱥ�ĵ���λ����", "kill shi")
	Common_AddCustomerTrigger("hsxunshan153", "hsxunshan4","^ʩ���ӡ�ž����һ�����ڵ��ϣ���������˿��Ѫ��ʹ��������˼��¾����ˡ�", "/hsxunshan_chaoyang2()")
	
	Common_AddCustomerTrigger("hsxunshan201", "hsxunshan5","^���Ժ����ԣ�", "/hsxunshan_TooManyCommand()") 

	Common_AddCustomerTrigger("hsxunshan251","hsxunshan6","^����ɱ˭","/hsxunshan_gomengmian()")
	Common_AddCustomerTrigger("hsxunshan252","hsxunshan6","^����û������ˡ�","/hsxunshan_gomengmian()")
	Common_AddCustomerTrigger("hsxunshan253","hsxunshan6","^�����������(.*?)","/hsxunshan_shamengmian()")
	Common_AddCustomerTrigger("hsxunshan254","hsxunshan6","^(?P<target>.*)���ڳɹ���������ħ��̽��(.*?)","/hsxunshan_mengmiancomplete(\"%<target>\")")

	Common_AddCustomerTrigger("hsxunshan301", "hsxunshan7","^�����ڲ�æ��", "/hsxunshan_mengmianfanhui()")
	
	SetVariable("currstats","hsxunshan")
	hsxunshan_DisableAll()
	EnableTimer("autoemote", false)
	EnableTriggerGroup("hsxunshan1", true)
	
	mengmianstep = 1
	mengmianpfmtimes = 0
	Common_SendToWorld("yj;chd;pw;wi;ask yue buqun about job")
end 

function hsxunshan_DisableAll()
	EnableTriggerGroup("hsxunshan1", false)
	EnableTriggerGroup("hsxunshan2", false)
	EnableTriggerGroup("hsxunshan3", false)
	EnableTriggerGroup("hsxunshan4", false)
	EnableTriggerGroup("hsxunshan5", true)
	EnableTriggerGroup("hsxunshan6", false)
	EnableTriggerGroup("hsxunshan7", false)

	EnableTimerGroup("hsxunshan", false)
end

function hsxunshan_Randushu()
	Common_SendToWorld("dazuo 100")
	-- local i = math.random(1,10)
	-- if i > 5 then 
		-- Common_SendToWorld("yandu shenzhao jing")
		-- Common_SendToWorld("yandu shenzhao jing")
		-- Common_SendToWorld("yandu shenzhao jing")
		-- Common_SendToWorld("yandu shenzhao jing")
		-- Common_SendToWorld("yandu shenzhao jing")
	-- else
		-- Common_SendToWorld("yandu shenzhao jing")
		-- Common_SendToWorld("yandu shenzhao jing")
		-- Common_SendToWorld("yandu shenzhao jing")
		-- Common_SendToWorld("yandu shenzhao jing")
		-- Common_SendToWorld("yandu shenzhao jing")
	-- end
	-- Common_SendToWorld("exert regenerate")
	-- Common_SendToWorld("exert regenerate")
	-- Common_SendToWorld("exert regenerate")
end

function hsxunshan_job()
	hsxunshan_DisableAll()
	hsxunshantimeok = 0
	hsxunshanpausetimes = 0
	EnableTriggerGroup("hsxunshan2", true)
end

function hsxunshan_kill(obj)
	killman = obj 
	hsxunshan_DisableAll()
	
	EnableTriggerGroup("hsxunshan3", true)

	EnableTimer("hsxunshan2", true)
end

function hsxunshan_pause()
	if _G.EndRobot > 0 then
		return
	end
	hsxunshanpausetimes = hsxunshanpausetimes + 1
	if hsxunshanpausetimes > 10 then 
		hsxunshanpausetimes = 0
		hsxunshan_DisableAll()
		DoAfterSpecial (3,"why;quit",10)
		return
	end
	if _G.ReadInJob == 1 then
		hsxunshan_Randushu()
	end
	DoAfterSpecial (3,"ask yue buqun about Ѳɽ",10)
end 

function hsxunshan_timerok()
	hsxunshantimeok = 1
	hsxunshan_DisableAll()
	EnableTriggerGroup("hsxunshan3", true)
	EnableTimer("hsxunshan2", true)
end

function hsxunshan_timerfightok()
	hsxunshantimeok = 1
end

function hsxunshan_nofight(txt)
	if Common_FilterTxt(txt) == nil then
		return
	end 
	hsxunshan_DisableAll()	
	
	if hsxunshantimeok == 1 then
		EnableTriggerGroup("hsxunshan1", true)
		Common_SendToWorld ("s;s;wd;nd;nd;nd;su;wu;wu;ed;nu;sd;ed;su;su;sw;wu;wu")
		DoAfterSpecial (1,"wu;ed;ed;ed;ne;eu;ne;ne;push door;e;w;open door;w",10)
		DoAfterSpecial (2.5,"sw;sw;sd;su;su;enter;out;nd;nd;nu;n;nw;ne;eu;wd;sw;se",10)
		DoAfterSpecial (3,"n;ask yue buqun about job",10)
	else
		EnableTriggerGroup("hsxunshan2", true)
		if _G.ReadInJob == 1 then
			hsxunshan_Randushu()
		else
			Common_SendToWorld("dazuo 100")
		end
	end
	
end

function dohsxunshan()
	hsxunshan_DisableAll()	
	EnableTriggerGroup("hsxunshan1", true)
	Common_SendToWorld("s;s;wd;nd;nd;nd;su;wu;wu;ed;nu;sd;ed;su;su;sw;wu;wu")
	DoAfterSpecial (1,"wu;ed;ed;ed;ne;eu;ne;ne;push door;e;w;open door;w",10)
	DoAfterSpecial (2.5,"sw;sw;sd;su;su;enter;out;nd;nd;nu;n;nw;ne;eu;wd;sw;se",10)
	DoAfterSpecial (3,"n;ask yue buqun about job",10)
	
end

function hsxunshan_chaoyang1()
	hsxunshanpausetimes = 0
	EnableTriggerGroup("hsxunshan4", true)
	DoAfterSpecial (1,"s;nw;ne;look shi",10)
	
end

function hsxunshan_chaoyang2()
	hsxunshanpausetimes = 0
	EnableTriggerGroup("hsxunshan4", false)
	DoAfterSpecial (0.5,"eu;wd;sw;se;n;ask yue buqun about job",10)
end

function hsxunshan_siguo()
	hsxunshanpausetimes = 0
	DoAfterSpecial (1,"s;s;sd;su;su;nd;nd;nu;n;n;ask yue buqun about job",10)
end

function hsxunshan_xiaozhu()
	hsxunshanpausetimes = 0
	DoAfterSpecial (1,"s;s;ne;ne;push men;e;open men;w;sw;sw;n;n;ask yue buqun about job",10)
end

function hsxunshan_lianhua()
	hsxunshanpausetimes = 0
	DoAfterSpecial (1,"s;s;wd;sw;wu;wu;wu;ed;ed;ed;ne;eu;n;n;ask yue buqun about job",10)
end

function hsxunshan_yuntai()
	hsxunshanpausetimes = 0
	DoAfterSpecial (1,"s;s;wd;nd;nd;wu;nu;sd;ed;su;su;eu;n;n;ask yue buqun about job",10)
end

function hsxunshan_sheshen()
	hsxunshanpausetimes = 0
	DoAfterSpecial (1,"s;s;wd;nd;nd;wu;wu;ed;ed;su;su;eu;n;n;ask yue buqun about job",10)
end

function hsxunshan_gomengmian()
	hsxunshan_DisableAll()
	local exp = tonumber(GetVariable("experi"))
	if exp<= 500000000 then
		hsxunshan_xiuxi()
		return
	end
	if mengmianstep > 10 then 
		mengmianstep= 1
		Common_SendToWorld(mengmian_tbl[10][2].."/hsxunshan_xiuxi()")
	else
		Common_SendToWorld(mengmian_tbl[mengmianstep][1].."kill "..WorldName().."-mengmian")
		mengmianstep = mengmianstep + 1
		EnableTriggerGroup("hsxunshan6", true)
	end
end

function hsxunshan_mengmianpfm()
	mengmianpfmtimes = mengmianpfmtimes + 1
	if mengmianpfmtimes > 50 then
		mengmianpfmtimes = 0
		hsxunshan_mengmiancomplete()
	else
		Common_SendToWorld("pfm")
	end
end

function hsxunshan_shamengmian()
	hsxunshan_DisableAll()
	EnableTimer("hsxunshan4", true)
	EnableTriggerGroup("hsxunshan6", true)
end

function hsxunshan_getname(name)
	myname = name
end

function hsxunshan_mengmiancomplete(name)
	if name ~= myname then
		return
	end
	hsxunshan_DisableAll()
	EnableTriggerGroup("hsxunshan7", true)
	DoAfterSpecial (2,"exert guiyuanfa",10)
	DoAfterSpecial (2,"EnableTimer(\"hsxunshan3\", true)",12)
end

function hsxunshan_mengmianfanhui()
	hsxunshan_DisableAll()
	Common_SendToWorld(mengmian_tbl[mengmianstep - 1][2])
	mengmianstep = 1
	DoAfterSpecial (0.5,"/hsxunshan_xiuxi()",10)
end

--=================================================================
--�����Ϻ��Զ�Robot
function hsxunshan_OnConnect()
	hsxunshan_DisableAll()
	local member = tonumber(GetVariable("member"))
	if member == 1 then
		Common_SendToWorld("chen hs;eu;n;n;/hsxunshan_start()")
	else
		Common_SendToWorld("e;s;s")
		DoAfterSpecial(1,"w;w;w;w;w;w;w;w;w;nw;w;w;w;w;w;w",10)
		DoAfterSpecial(3,"w;w;w;w;w;w;w;n;n;nw;n;n;n;n;n;n;e;e;e;e;e",10)
		DoAfterSpecial(5,"se;su;su;eu;eu;su;eu;eu;su;su;su;su;eu;n;n",10)
		DoAfterSpecial(7,"/hsxunshan_start()",10)
	end
end

--�������ߺ�
function  hsxunshan_OnReconnect()
	hsxunshan_DisableAll()
	DoAfterSpecial(1,"why;quit",10)
end

--����̫��
function hsxunshan_TooManyCommand()
	hsxunshan_DisableAll()
	EnableTriggerGroup("hsxunshan5", false)
	DoAfterSpecial(20,"why;quit",10)
end

--����
function hsxunshan_OnEvent()
	hsxunshan_DisableAll()
	world.Disconnect()
end

--��Ϣ
function hsxunshan_doxiuxi()
	xiuxi_doxiuxi()
	DoAfterSpecial(3, "s;s;ne;ne;e;push men;e;sleep", 10)
end

function hsxunshan_xiuxi()
	if _G.EndRobot > 0 then
		hsxunshan_DisableAll()
		EnableTimer("autoemote", true)
	else
		hsxunshan_DisableAll()
		xiuxi_start("hsxunshan")
	end
end

function hsxunshan_xiuxicomplete()  
	xiuxi_complete()

	local neili = tonumber(GetVariable("neili"))
	local neilimax = tonumber(GetVariable("neili_max"))

	if neili < neilimax then
		DoAfterSpecial(2, "w;open men;w;dazuo 500", 10)
		xiuxi_dodazuo()
	else
	
		local food = tonumber(GetVariable("food"))
		local foodmax = tonumber(GetVariable("food_max"))
		local water = tonumber(GetVariable("water"))
		local watermax = tonumber(GetVariable("water_max"))
		if (food > foodmax/2) and (water > watermax/2) then
			DoAfterSpecial(2, "w;open men;w;sw;sw;n;n;/hsxunshan_start()", 10)
		else
			DoAfterSpecial(2, "w;open men;w;sw;sw;n;w;buy baozi;#3 eat baozi;e;s;w;#3 drink;e;n;n;/hsxunshan_start()", 10)
		end 
		
	end

end