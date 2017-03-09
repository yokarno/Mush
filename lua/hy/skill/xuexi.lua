require("hy.common.common")
require("hy.common.cmd")
require("hy.xiuxi")

xuexi_listindex = 1

--学习
function xuexi_start()
	Common_AddCustomerAlias("xuexi_alias", "xuexi", "learn")

	Common_AddCustomerTrigger("xuexi1", "xuexi","^你听了(?P<target>.*)的指导(.*?)似乎有些心得。", "/doxuexi(\"%<target>\")")
	Common_AddCustomerTrigger("xuexi2", "xuexi","^你的内力不够", "/xuexi_xiuxi()")
	Common_AddCustomerTrigger("xuexi3", "xuexi","^请稍后再试！", "/xuexi_TooManyCommand()") 
	Common_AddCustomerTrigger("xuexi4", "xuexi","^你的精不够", "/xuexi_xiuxi()")
	Common_AddCustomerTrigger("xuexi5", "xuexi","^你的精力不够", "/xuexi_xiuxi()")
	Common_AddCustomerTrigger("xuexi21", "xuexi","^你的体力不够", "/xuexi_xiuxi()")
	Common_AddCustomerTrigger("xuexi22", "xuexi","^你的精力不够", "/xuexi_xiuxi()")
	Common_AddCustomerTrigger("xuexi23", "xuexi","^你的内力太弱", "/xuexi_xiuxi()")
	
	Common_AddCustomerTrigger("xuexi5", "xuexi","^(?P<target>.*)说道：您太客气了，这怎么敢当？", "/xuexi_givegold(\"%<target>\")")
	Common_AddCustomerTrigger("xuexi6", "xuexi","^(?P<target>.*)像是受宠若惊一样，说道：请教？这怎么敢当？", "/xuexi_givegold(\"%<target>\")")
	Common_AddCustomerTrigger("xuexi7", "xuexi","^(?P<target>.*)笑着说道：您见笑了，我这点雕虫小技怎够资格「指点」您什么？", "/xuexi_givegold(\"%<target>\")")
	
	Common_AddCustomerTrigger("xuexi8", "xuexi","^这项技能你恐怕必须找别人学了。", "/xuexi_addlist1()")
	Common_AddCustomerTrigger("xuexi9", "xuexi","^这项技能你的程度已经不输你师父了。", "/xuexi_addlist1()")
	Common_AddCustomerTrigger("xuexi10", "xuexi","^(?P<target>.*)皱了皱眉头，不禁想起你过去的叛师经历。", "/xuexi_addlist2(\"%<target>\")")
	Common_AddCustomerTrigger("xuexi11", "xuexi","^(?P<target>.*)说到(.*?)这后面的武功暂时还不能", "/xuexi_addlist2(\"%<target>\")")
	Common_AddCustomerTrigger("xuexi12", "xuexi","^也许是缺乏实战经验，你对(.*?)的回答总是无法领会。", "/xuexi_addlist1()")
	Common_AddCustomerTrigger("xuexi13", "xuexi","^你必须先找一把剑才能练剑法。", "/doxuexinoweapon()")
	Common_AddCustomerTrigger("xuexi14", "xuexi","^练(.*?)必须空手。", "/doxuexiweapon()")
--	Common_AddCustomerTrigger("xuexi15", "xuexi","^(?P<target>.*)笑着说道：您见笑了，我这点雕虫小技怎够资格「指点」您什么？", "/xuexi_givegold(\"%<target>\")")
	Common_AddCustomerTrigger("xuexi16", "xuexi","^你今天太累了，结果什么也没有学到。", "/xuexi_xiuxi()")
	Common_AddCustomerTrigger("xuexi17", "xuexi","^(?P<target>.*)说到(.*?)像你这样的心慈手软之辈", "/xuexi_addlist2(\"%<target>\")")
	Common_AddCustomerTrigger("xuexi18", "xuexi","^你的内力太弱，无法练一阳指。", "/xuexi_xiuxi()")
	Common_AddCustomerTrigger("xuexi19", "xuexi","^学(.*?)，要心狠手辣，奸恶歹毒，你可做得不够呀！", "/xuexi_addlist1()")
	Common_AddCustomerTrigger("xuexi20", "xuexi","^你的潜能不够", "/xuexi_addlist1()")
	
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
		Common_SendToWorld("tell ".._G.ChatID.." 研究学习完了")
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
	Common_SendToWorld("tell ".._G.ChatID.." 研究学习完了")
end

--=================================================================
--连接上后自动Robot
function xuexi_OnConnect()
	
end

--重新连线后
function  xuexi_OnReconnect()
	DoAfterSpecial(10, "/xuexi_start()", 10)
end


--命令太多
function xuexi_TooManyCommand()
	xuexi_DisableAll()
	DoAfterSpecial(20, "/xuexi_start()", 10)
end

--打雷
function xuexi_OnEvent()

end

--休息
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