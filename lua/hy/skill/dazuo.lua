require("hy.common.common")
require("hy.common.cmd")
require("hy.xiuxi")

--打坐练内力
function dazuo_start()

	Common_AddCustomerAlias("huifuneili_alias", "huifuneili", "\n")
	
	Common_AddCustomerTrigger("dazuo1", "dazuo","^你(.*?)站了起来。", "/dodazuo()")
	Common_AddCustomerTrigger("dazuo2", "dazuo","^你慢慢收气，归入丹田，睁开眼睛，轻轻的吐了一口气。", "/dodazuo()")
	Common_AddCustomerTrigger("dazuo3", "dazuo","^你将内息在体内运行十二周天，返回丹田，只觉得全身暖洋洋的。", "/dodazuo()")
	Common_AddCustomerTrigger("dazuo4", "dazuo","^无尽的杀意缓缓散入全身，睁开眼，长吐了一口气。", "/dodazuo()")
	Common_AddCustomerTrigger("dazuo5", "dazuo","^你现在气不够!","/dazuo_xiuxi()")
	Common_AddCustomerTrigger("dazuo6", "dazuo","^你将真气在体内沿脉络运行了一圈，缓缓纳入丹田，放下手，长吐了一口气。", "/dodazuo()")
	Common_AddCustomerTrigger("dazuo7", "dazuo","^你真气在体内运行了一个周天，冷热真气收于丹田，慢慢抬起了眼睛。", "/dodazuo()")
	Common_AddCustomerTrigger("dazuo8", "dazuo","^忽然从(.*?)里幻化出一个身披绿纱的幸运女神(.*?)", "/gag()",17444)
	Common_AddCustomerTrigger("dazuo9", "dazuo","^绿光一闪(.*?)幸运女神就不见了。", "/gag()",17444)
	Common_AddCustomerTrigger("dazuo10", "dazuo","^(.*?)中的咒语渐渐失去了效用！", "/gag()",17444)
	Common_AddCustomerTrigger("dazuo11", "dazuo","^(.*?)忽然感到蓝色的火，白色的雷电围绕着(.*?)如天神降临！", "/gag()",17444)

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
--连接上后自动Robot
function dazuo_OnConnect()
	Common_SendToWorld("e;s;s;#6 w;n;#5 w;u")
	DoAfterSpecial(1, "/dazuo_start()", 10)
end

--重新连线后
function  dazuo_OnReconnect()
	dazuo_DisableAll()
	DoAfterSpecial(10, "/dazuo_start()", 10)
end

--命令太多
function dazuo_TooManyCommand()
	dazuo_DisableAll()
	DoAfterSpecial(20, "/dazuo_start()", 10)
end

--打雷
function dazuo_OnEvent()
	dazuo_DisableAll()
	world.Disconnect()
end

--休息
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