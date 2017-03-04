require("hy.common.common")
require("hy.common.cmd")
require("hy.xiuxi")

yanjiu_listindex = 1
yanjiu_maxexp = {}
yanjiu_maxexpindex = 0

--研究
function yanjiu_start()
	Common_AddCustomerAlias("yanjiu_alias", "yanjiu", "yanjiu")

	Common_AddCustomerTrigger("yanjiu1", "yanjiu","^你研究了一会，(.*?)似乎(.*?)。", "/doyanjiu()")
	Common_AddCustomerTrigger("yanjiu2", "yanjiu","^你的内力不够。", "/yanjiu_xiuxi()")
	Common_AddCustomerTrigger("yanjiu3", "yanjiu","^请稍后再试！", "/yanjiu_TooManyCommand()") 
	Common_AddCustomerTrigger("yanjiu4", "yanjiu","^你的精不够你学了。", "/yanjiu_xiuxi()")
	Common_AddCustomerTrigger("yanjiu5", "yanjiu","^你的精不够用了。", "/yanjiu_xiuxi()")

	Common_AddCustomerTrigger("yanjiu6", "yanjiu","^也许是缺乏实战经验", "/yanjiu_addlist()")
	Common_AddCustomerTrigger("yanjiu9", "yanjiu","^这项技能你恐怕没法研究了。", "/yanjiu_addlist()")
	Common_AddCustomerTrigger("yanjiu10", "yanjiu","^(?P<front>.*)只能靠你学习才能提高的。", "/yanjiu_addlist2(\"%<front>\")")
	Common_AddCustomerTrigger("yanjiu12", "yanjiu","^依你目前的能力，没有办法研究这种技能。", "/yanjiu_addlist()")
	Common_AddCustomerTrigger("yanjiu13", "yanjiu","^你今天太累了，结果什么也没有研究成。", "/yanjiu_xiuxi()")
	Common_AddCustomerTrigger("yanjiu14", "yanjiu","^你的潜能不够研究这么多次了。", "/yanjiu_nopot()")
	
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
		Common_SendToWorld("tell ".._G.ChatID.." 研究学习完了")
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
	Common_SendToWorld("tell ".._G.ChatID.." 研究学习完了")
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
--连接上后自动Robot
function yanjiu_OnConnect()
	Common_SendToWorld("e;s;s;#6 w;n;#5 w;/yanjiu_start()")
end

--重新连线后
function  yanjiu_OnReconnect()
	DoAfterSpecial(10, "/yanjiu_start()", 10)
end

--命令太多
function yanjiu_TooManyCommand()
	yanjiu_DisableAll()
	DoAfterSpecial(20, "/yanjiu_start()", 10)
end

--打雷
function yanjiu_OnEvent()
	yanjiu_DisableAll()
	world.Disconnect()
end

--休息
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