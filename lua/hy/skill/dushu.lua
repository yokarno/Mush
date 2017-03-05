require("hy.common.common")
require("hy.common.cmd")
require("hy.xiuxi")

--读书
function dushu_start()	
	Common_AddCustomerAlias("dushu_alias", "dushu", "yandu")

	Common_AddCustomerTrigger("dushu1", "dushu","^你(.*?)似乎(.*?)心得。", "/dodushu()")
	Common_AddCustomerTrigger("dushu2", "dushu","^你的内力不够", "/dushu_xiuxi()")
	Common_AddCustomerTrigger("dushu3", "dushu","^请稍后再试！", "/dushu_TooManyCommand()") 
	Common_AddCustomerTrigger("dushu4", "dushu","^你的精不够(.*?)", "/dushu_xiuxi()")
	Common_AddCustomerTrigger("dushu5", "dushu","^你对着(.*?)，似乎对(.*?)有点心得。", "/dodushu()")
	Common_AddCustomerTrigger("dushu6", "dushu","^你(.*?)似乎有点心得。", "/dodushu()")
	Common_AddCustomerTrigger("dushu7", "dushu","^你研读(.*?)颇有心得。", "/dodushu()")
	Common_AddCustomerTrigger("dushu8", "dushu","^你内力不够", "/dushu_xiuxi()")
	Common_AddCustomerTrigger("dushu9", "dushu","^你正在低头沉思有关斗转星移的种种疑难。", "/dodushu()")
	Common_AddCustomerTrigger("dushu10", "dushu","^你按照书中所讲打坐一阵，再对照着研读《九阳真经》最后一册，这才有点心得。", "/dodushu()")
	Common_AddCustomerTrigger("dushu11", "dushu","^你现在过于疲倦，无法专心下来研读新知。", "/dushu_xiuxi()")
	Common_AddCustomerTrigger("dushu12", "dushu","^你面对着石壁静思良久，对金蛇剑法似有所悟。", "/dodushu()")
	Common_AddCustomerTrigger("dushu13", "dushu","^你用(.*?)奋力击打着山洪，手中的(.*?)发出(.*?)。", "/dodushu()")
	Common_AddCustomerTrigger("dushu14", "dushu","^你的内力不足，无法继续练下去。", "/dushu_xiuxi()")
	Common_AddCustomerTrigger("dushu15", "dushu","^你面对着云海石上的云气花纹冥思苦想.对基本轻功稍有心得。", "/dodushu()")
	Common_AddCustomerTrigger("dushu16", "dushu","^你盘膝坐下,片刻过后对杀意有了些领悟", "/dodushu()")

	EnableTimer("autoemote", true)
	
	dushu_DisableAll()
	SetVariable("currstats","dushu")
	EnableTriggerGroup("dushu", true)
	dodushu()
end 

function dodushu()
	if _G.EndRobot > 0 then
		dushu_DisableAll()
	else
		DoAfterSpecial(0.1, "dushu", 10)
	end
	
end 

function dushu_DisableAll()
	EnableTriggerGroup("dushu", false)
end

--=================================================================
--连接上后自动Robot
function dushu_OnConnect()
	DoAfterSpecial(1, "/dushu_start()", 10)
end

--重新连线后
function  dushu_OnReconnect()
	DoAfterSpecial(10, "/dushu_start()", 10)
end

--命令太多
function dushu_TooManyCommand()
	dushu_DisableAll()
	DoAfterSpecial(20, "/dushu_start()", 10)
end

--打雷
function dushu_OnEvent()
	dushu_DisableAll()
	world.Disconnect()
end

--休息
function dushu_doxiuxi()
	xiuxi_doxiuxi()
	DoAfterSpecial(0.1, "w;sleep", 10)
end

function dushu_chihe()
	local food = tonumber(GetVariable("food"))
	local foodmax = tonumber(GetVariable("food_max"))
	local water = tonumber(GetVariable("water"))
	local watermax = tonumber(GetVariable("water_max"))
	if (food > foodmax/2) and (water > watermax/2) then
		return
	end 
	world.Execute ("e;s;s;s;s;w;buy doufu;eat doufu;drink;drop doufu;e;n;n;n;n;w")
end

function dushu_xiuxi()
	dushu_DisableAll()
	DoAfterSpecial(1, "/xiuxi_start(\"dushu\")", 10)
end

function dushu_xiuxicomplete()  
	xiuxi_complete()
	DoAfterSpecial(1, "e", 10)
	DoAfterSpecial(1.1, "/dushu_start()", 10)
end