require("hy.common.common")
require("hy.common.autosearch")
require("hy.common.stepwalking")
require("hy.common.cmd")
require("hy.job.liandantbl")
require("hy.xiuxi")


yaocao = 0
pausetimes = 0
yaochu = 0

--炼丹
function liandan_start()

	Common_AddCustomerAlias("pfm_alias", "pfm", "exert regenerate\nexert recover\nperform strike.xuan")
	Common_AddCustomerAlias("pw_alias", "pw", "perform huanyinbu\nexert zongjue")
	Common_AddCustomerAlias("chd_alias", "chd", "drop cloth\nwear all")
	
	Common_AddCustomerTrigger("liandan1", "liandan1","^你向药铺伙计打听有关『job』的消息。", "/liandan_questjob()")
	Common_AddCustomerTrigger("liandan2", "liandan1","^这里没有这个人", "/liandan_failquit()")
	Common_AddCustomerTrigger("liandan3", "liandan1","^您先歇口气再说话吧。", "/liandan_pause()")
	
	
	Common_AddCustomerTrigger("liandan51", "liandan2","^伙计给了你药锄！", "/liandan_gowayao()")
	Common_AddCustomerTrigger("liandan52", "liandan2","^伙计对你说：你身上已有药锄了，不要这么贪心。", "/liandan_gowayao()")
	
	Common_AddCustomerTrigger("liandan101", "liandan3","^草丛中一阵晃动，突然钻出一条蛇。", "/liandan_dokillshe()")
	Common_AddCustomerTrigger("liandan102", "liandan3","^先把毒蛇干掉吧！", "/liandan_dokillshe()")
	Common_AddCustomerTrigger("liandan103", "liandan3","^你找了半天，终于发现", "/liandan_yaocao()")
	Common_AddCustomerTrigger("liandan104", "liandan3","^等你忙完了，再挖吧，！", "/liandan_dowayao()")
	Common_AddCustomerTrigger("liandan105", "liandan3","^等打完了，再挖吧，！", "/liandan_dowayao()")
	Common_AddCustomerTrigger("liandan106", "liandan3","^你的精力不能集中，不可以挖药！", "/liandan_dowayao()")
	Common_AddCustomerTrigger("liandan107", "liandan3","^你的身体状态太差，不能挖药！", "/liandan_dowayao()")
	Common_AddCustomerTrigger("liandan108", "liandan3","^你刚刚才干过活,要休息一会了！", "/liandan_dowayao()")
	Common_AddCustomerTrigger("liandan109", "liandan3","^这里的药草早已被人挖光了。", "/liandan_nextwayao()")
	Common_AddCustomerTrigger("liandan110", "liandan3","^药草倒是挖到了，可惜药锄却不小碰坏了。", "/liandan_yaochubroken()")
	Common_AddCustomerTrigger("liandan111", "liandan3","^一翻摸索后，草丛中似乎没有你要找的东西，你失望的叹了口气。", "/liandan_dowayao()")
	Common_AddCustomerTrigger("liandan112", "liandan3","^只有户外才有可能有药才，请到室外找找吧。", "/liandan_nextwayao()")

	Common_AddCustomerTrigger("liandan151", "liandan4","^你身上没有药草，炼得了什么？。", "/liandan_liandanover()")
	Common_AddCustomerTrigger("liandan152", "liandan4","^你的精力不足，无法炼丹。", "/liandan_liandanpause()")
	Common_AddCustomerTrigger("liandan153", "liandan4","^你的体不足，无法炼丹。", "/liandan_liandanpause()")
	Common_AddCustomerTrigger("liandan154", "liandan4","^你的内力不足，无法炼丹。", "/liandan_liandanpause()")
	
	Common_AddCustomerTrigger("liandan201", "liandan5","^无名居士既不属於任何门派，也没有开山立派，不能拜师", "/liandan_returngc()")
	Common_AddCustomerTrigger("liandan202", "liandan5","^你想拜谁为师", "/liandan_failquit()")

	Common_AddCustomerTrigger("liandan251", "liandan6","^你要问谁什么事？", "/liandan_returnselldan()")
	
	Common_AddCustomerTrigger("liandan301", "liandan7","^(?P<front>.*)只能对战斗中的对手使用", "/liandan_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("liandan302", "liandan7","^(?P<front>.*)只能在战斗中使用", "/liandan_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("liandan303", "liandan7","^(?P<front>.*)只能在战斗中对对手使用", "/liandan_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("liandan304", "liandan7","^(?P<front>.*)只能对对手使用", "/liandan_nofight(\"%<front>\")")


	Common_AddCustomerTrigger("liandan451", "liandan10","^你给(.*?)一些白银。", "/liandan_returnwithsilver()")
	Common_AddCustomerTrigger("liandan452", "liandan10","^这样东西不能随便给人。", "drop 1 silver")
	Common_AddCustomerTrigger("liandan453", "liandan10","^你身上没有这样东西。", "takeout 99 silver")
	Common_AddCustomerTrigger("liandan454", "liandan10","^你没有那么多的(.*?)", "takeout 99 silver")
	Common_AddCustomerTrigger("liandan455", "liandan10","^白银不能被分开给人。", "drop 1 silver")
	Common_AddCustomerTrigger("liandan456", "liandan10","^你的帐号上没有那多", "deposit gold;deposit silver")
	
	Common_AddCustomerTrigger("liandan501", "liandan11","^你一觉醒来(.*?)该活动一下了。", "/liandan_gotoliandan()")

	Common_AddCustomerTrigger("liandan551", "liandan12","^你要问谁什么事？", "/liandan_gotosleep()")

	Common_AddCustomerTrigger("liandan601", "liandan13","^(?P<dan>.*)=(?P<danid>.*)", "/liandan_selldan(\"%<dan>\",\"%<danid>\")")
	Common_AddCustomerTrigger("liandan602", "liandan13","^唐楠既不属於任何门派，也没有开山立派，不能拜师", "/liandan_gogivedan()")

	Common_AddCustomerTrigger("liandan651", "liandan14","^(?P<dan>.*)=(?P<danid>.*)", "/liandan_givedan(\"%<dan>\")")
	Common_AddCustomerTrigger("liandan652", "liandan14","^香菱既不属於任何门派，也没有开山立派，不能拜师。", "/liandan_xiuxi()")

	Common_AddCustomerTrigger("liandan701", "liandan15","^你要问谁什么事？", "/liandan_gonextwayao()")
	
	Common_AddCustomerTrigger("liandan751", "liandan16","^你要问谁什么事？", "/liandan_goselldan()")

	Common_AddCustomerTrigger("liandan801", "liandan17","^你要问谁什么事？", "/liandan_return()")
	
	Common_AddCustomerTimer("liandan1", "liandan",0, 0, 2, "n;liandan")
	Common_AddCustomerTimer("liandan2", "liandan",0, 0, 1, "pfm")
	Common_AddCustomerTimer("liandan3", "liandan",0, 0, 1, "give "..WorldName().." 9 silver")
	Common_AddCustomerTimer("liandan4", "liandan",0, 0, 1, "ask "..WorldName())
	
	Common_AddCustomerTimer("timerpause", "timerpause",0, 3, 0, "/liandan_timerpause()",17409)
	
	stepwalking_start()
	autosearch_Start("wayao")
	
	liandan_DisableAll()
	SetVariable("currstats","liandan")

	local liandanpath = tonumber(GetVariable("liandanpath"))
	local liandanstep =  tonumber(GetVariable("liandanstep"))
	if liandanpath == nil then 
		liandanpath = 1
	end
	if liandanstep == nil then
		liandanstep = 1
	end
	SetVariable("jobstep",1)
	SetVariable("liandanpath",liandanpath)
	SetVariable("liandanstep",liandanstep)
	SetVariable("searchstep",0)
	
	EnableTimer("autoemote", false)
	Common_SendToWorld("yj")
	Common_SendToWorld("yq")
	Common_SendToWorld("chd")
	Common_SendToWorld("pw")
	DoAfterSpecial(0.5,"e;e;n;ask huoji about job;give 1 silver to huoji",10)
	EnableTriggerGroup("liandan1", true)
end

function liandan_DisableAll()
	EnableTriggerGroup("liandan1", false)
	EnableTriggerGroup("liandan2", false)
	EnableTriggerGroup("liandan3", false)
	EnableTriggerGroup("liandan4", false)
	EnableTriggerGroup("liandan5", false)
	EnableTriggerGroup("liandan6", false)
	EnableTriggerGroup("liandan7", false)
	EnableTriggerGroup("liandan10", false)
	EnableTriggerGroup("liandan11", false)
	EnableTriggerGroup("liandan12", false)
	EnableTriggerGroup("liandan13", false)
	EnableTriggerGroup("liandan14", false)
	EnableTriggerGroup("liandan15", false)
	EnableTriggerGroup("liandan16", false)
	EnableTriggerGroup("liandan17", false)
	EnableTimerGroup("liandan", false)
end

function liandan_timerpause()
	Common_SendToWorld("sigh5")
	pausetimes = pausetimes + 1
	if pausetimes > 5 then
		pausetimes = 0
		liandan_DisableAll()
		DoAfterSpecial(10,"s;why;quit",10)
	end
end

function liandan_pause()
	liandan_DisableAll()
	DoAfterSpecial(1,"ask huoji about job;give 1 silver to huoji",10)
	EnableTriggerGroup("liandan1", true)
end

function liandan_questjob()
	liandan_DisableAll()
	EnableTriggerGroup("liandan2", true)
end

function liandan_failquit()
	liandan_DisableAll()
	DoAfterSpecial(2,"why;quit",10)
end

function liandan_gowayao()
	liandan_DisableAll()
	yaochu = 1
	Common_SendToWorld("s;w;w")
	DoAfterSpecial(2,"/liandan_gotowayao()",10)
end

function liandan_gotowayao()
	liandan_DisableAll()
	local liandanpath = tonumber(GetVariable("liandanpath"))
	local liandanstep =  tonumber(GetVariable("liandanstep"))

	if liandanstep > table.getn(liandanpath_tbl[liandanpath]) then
		liandanstep = 1
		SetVariable("liandanstep",liandanpath)
	end

	if table.getn(liandanpath_tbl[liandanpath][liandanstep]["GoPath"]) == 1 then
		DoAfterSpecial(1,"/Common_SendToWorld(\""..liandanpath_tbl[liandanpath][liandanstep]["GoPath"][1]..";/stepwalking_GoTarget()".."\")",10)
	else
		DoAfterSpecial(1,"/Common_SendToWorld(\""..liandanpath_tbl[liandanpath][liandanstep]["GoPath"][1].."\")",10)
	end
	EnableTriggerGroup("liandan3", true)
end

function liandan_yaocao()
	yaocao = yaocao + 1
	pausetimes = 0
	liandan_dowayao()
end

function liandan_dowayao()	
	liandan_DisableAll()
	DoAfterSpecial(1,"yj;yq;wayao",10)
	EnableTriggerGroup("liandan3", true)
end

function liandan_dokillshe()
	liandan_DisableAll()
	DoAfterSpecial(2.5,"kill dushe;kill she",10)
	EnableTriggerGroup("liandan7", true)
	DoAfterSpecial(2.5,"EnableTimer(\"liandan2\",true)",12)
end

function liandan_nofight(txt)
	if Common_FilterTxt(txt) == nil then
		return
	end 

	liandan_dowayao()
end

function liandan_nextwayao()
	liandan_DisableAll()
	EnableTimer("liandan4",true)
	EnableTriggerGroup("liandan15", true)	
end

function liandan_yaochubroken()
	liandan_DisableAll()
	yaochu = 0
	EnableTimer("liandan4",true)
	EnableTriggerGroup("liandan17", true)	
end

function liandan_gonextwayao()
	liandan_DisableAll()
	local liandanpath = tonumber(GetVariable("liandanpath"))
	local liandanstep =  tonumber(GetVariable("liandanstep"))
	liandanstep = liandanstep + 1
	if liandanstep > table.getn(liandanpath_tbl[liandanpath]) then
		if table.getn(liandanpath_tbl[liandanpath][table.getn(liandanpath_tbl[liandanpath])]["ReturnPath"]) == 1 then
			DoAfterSpecial(1,"/Common_SendToWorld(\""..liandanpath_tbl[liandanpath][table.getn(liandanpath_tbl[liandanpath])]["ReturnPath"][1]..";/stepwalking_TargetReturn()".."\")",10)
		else
			DoAfterSpecial(1,"/Common_SendToWorld(\""..liandanpath_tbl[liandanpath][table.getn(liandanpath_tbl[liandanpath])]["ReturnPath"][1].."\")",10)
		end
		liandanstep = 1
		liandanpath = liandanpath + 1
		if liandanpath > table.getn(liandanpath_tbl) then
			liandanpath = 1
		end
		SetVariable("liandanstep",liandanstep)
		SetVariable("liandanstep",liandanpath)
	else
		SetVariable("liandanstep",liandanstep)
		autosearch_StepNext(liandanpath_tbl[liandanpath][liandanstep]["StepPath"])
		EnableTriggerGroup("liandan3", true)
	end
end

function liandan_return()
	liandan_DisableAll()
	local liandanpath = tonumber(GetVariable("liandanpath"))
	local liandanstep =  tonumber(GetVariable("liandanstep"))

	if table.getn(liandanpath_tbl[liandanpath][liandanstep]["ReturnPath"]) == 1 then
		DoAfterSpecial(1,"/Common_SendToWorld(\""..liandanpath_tbl[liandanpath][liandanstep]["ReturnPath"][1]..";/stepwalking_TargetReturn()".."\")",10)
	else
		DoAfterSpecial(1,"/Common_SendToWorld(\""..liandanpath_tbl[liandanpath][liandanstep]["ReturnPath"][1].."\")",10)
	end
end

function liandan_returngc()
	liandan_DisableAll()
	Common_SendToWorld("hp")
	pausetimes = 0
	EnableTimer("liandan3",true)
	EnableTriggerGroup("liandan10", true)
end

function liandan_returnwithsilver()
	liandan_DisableAll()
	local liandanstep = 1
	SetVariable("liandanstep",liandanstep)
	local liandanpath = tonumber(GetVariable("liandanpath"))			
	liandanpath = liandanpath + 1
	if liandanpath > table.getn(liandanpath_tbl) then
		liandanpath = 1
	end
	SetVariable("liandanpath",liandanpath)

	if yaocao > 0 then
		DoAfterSpecial(1.5,"/liandan_liandan()",10)
	else
		if yaochu == 0 then
			DoAfterSpecial(1.5,"/liandan_start()",10)
		else
			DoAfterSpecial(1.5,"/liandan_gotowayao()",10)
		end
	end
end

function liandan_liandan()
	liandan_DisableAll()
	Common_SendToWorld("yj;yq;e;e;n;n")
	EnableTimer("liandan1",true)
	EnableTriggerGroup("liandan4", true)
end

function liandan_liandanpause()
	liandan_DisableAll()
	EnableTimer("liandan4",true)
	EnableTriggerGroup("liandan12", true)
end

function liandan_gotosleep()
	liandan_DisableAll()
	Common_SendToWorld("yj;yq;s;s;w;w;n;n;w;w;sleep")
	EnableTriggerGroup("liandan11", true)
end

function liandan_gotoliandan()
	liandan_DisableAll()
	DoAfterSpecial(1,"e;e;s;s;e;e;n;n",10)
	DoAfterSpecial(2,"/liandan_continueliandan()",10)
end

function liandan_continueliandan()
	EnableTriggerGroup("liandan4", true)
	EnableTimer("liandan1",true)
end

function liandan_liandanover()
	liandan_DisableAll()
	yaocao = 0
	EnableTimer("liandan4",true)
	EnableTriggerGroup("liandan6", true)
end

function liandan_returnselldan()
	liandan_DisableAll()
	Common_SendToWorld("s")
	EnableTimer("liandan4",true)
	EnableTriggerGroup("liandan16", true)	
end

function liandan_goselldan()
	liandan_DisableAll()
	Common_SendToWorld("s;w;w;s;e;id;bai tang")
	EnableTriggerGroup("liandan13", true)
end

function liandan_selldan(txt,id)
	txt = Trim(txt)
	if Common_FilterTxt(txt) == nil then
		return
	end
	if id == "zhong yao" then
		Common_SendToWorld("sell zhong yao")
		return
	end 
	if liandan_dan_tbl[txt] == nil then
		return
	end
    local line_num = GetLinesInBufferCount()
    local styles_num = GetLineInfo(line_num,11)
    for i = 1,styles_num do
		local dan_color = GetStyleInfo(line_num,i,14)
		local dan_color_ch = RGBColourToName (dan_color)
		break
    end
	for i=1,table.getn(liandan_dan_tbl[txt]) do
		if liandan_dan_tbl[txt][i]["Color"] == nil then
			if liandan_dan_tbl[txt][i]["Eat"] == nil then
				if liandan_dan_tbl[txt][i]["Give"] == nil then
					if liandan_dan_tbl[txt][i]["Put"] == "1" then
						Common_SendToWorld("put "..liandan_dan_tbl[txt][i]["ID"].." in budai")
					else
						if liandan_dan_tbl[txt][i]["NoPut"] == nil then
							Common_SendToWorld("sell "..liandan_dan_tbl[txt][i]["ID"])
						end 
					end 
				end
			end
		else
			if liandan_dan_tbl[txt][i]["Color"] == dan_color_ch then
				if liandan_dan_tbl[txt][i]["Eat"] == nil then
					if liandan_dan_tbl[txt][i]["Give"] == nil then
						if liandan_dan_tbl[txt][i]["Put"] == "1" then
							Common_SendToWorld("put "..liandan_dan_tbl[txt][i]["ID"].." in budai")
						else
							if liandan_dan_tbl[txt][i]["NoPut"] == nil then
								Common_SendToWorld("sell "..liandan_dan_tbl[txt][i]["ID"])
							end 
						end 
					end
				end
			end
		end
	end
end

function liandan_gogivedan()
	liandan_DisableAll()
	DoAfterSpecial(1,"#3 sell zhong yao;e;id;bai xiangling",10)
	EnableTriggerGroup("liandan14", true)
end

function liandan_givedan(txt)
	txt = Trim(txt)
	if Common_FilterTxt(txt) == nil then
		return
	end 
	if liandan_dan_tbl[txt] == nil then
		return
	end

    local line_num = GetLinesInBufferCount()
    local styles_num = GetLineInfo(line_num,11)
    for i = 1,styles_num do
		local dan_color = GetStyleInfo(line_num,i,14)
		local dan_color_ch = RGBColourToName (dan_color)
		break
    end
	for i=1,table.getn(liandan_dan_tbl[txt]) do
		if liandan_dan_tbl[txt][i]["Color"] == nil then
			if liandan_dan_tbl[txt][i]["Give"] == "1" then
				Common_SendToWorld("give "..liandan_dan_tbl[txt][i]["ID"].." to ".._G.ChatID)
			end
			if liandan_dan_tbl[txt][i]["Eat"] == "1" then
				Common_SendToWorld("eat "..liandan_dan_tbl[txt][i]["ID"])
			end
		else
			if liandan_dan_tbl[txt][i]["Color"] == dan_color_ch then
				if liandan_dan_tbl[txt][i]["Give"] == "1" then
					Common_SendToWorld("give "..liandan_dan_tbl[txt][i]["ID"].." to ".._G.ChatID)
				end
				if liandan_dan_tbl[txt][i]["Eat"] == "1" then
					Common_SendToWorld("eat "..liandan_dan_tbl[txt][i]["ID"])
				end
			end
		end
	end
end

---================================================================
--quest通用接口

--到达
function liandan_OnGoTarget()
	liandan_DisableAll()
	EnableTriggerGroup("liandan3", true)
	Common_SendToWorld("yj;yq;wayao")
end

--返回
function liandan_OnTargetReturn()
	liandan_DisableAll()
	DoAfterSpecial(1,"bai noname",10)
	EnableTriggerGroup("liandan5", true)
end

--失败
function liandan_OnTargetFail()
	liandan_DisableAll()
end

--继续走
function liandan_OnNextGo()
	liandan_DisableAll()
	local liandanpath = tonumber(GetVariable("liandanpath"))
	local liandanstep = tonumber(GetVariable("liandanstep"))
	local targetnum = tonumber(GetVariable("targetnum"))
	local jobstep = tonumber(GetVariable("jobstep"))
	jobstep = jobstep + 1
	SetVariable("jobstep",jobstep)
	if (jobstep + 1 > table.getn(liandanpath_tbl[liandanpath][liandanstep]["GoPath"])) then
		Common_SendToWorld(liandanpath_tbl[liandanpath][liandanstep]["GoPath"][jobstep]..";/stepwalking_GoTarget()")		
	else
		Common_SendToWorld(liandanpath_tbl[liandanpath][liandanstep]["GoPath"][jobstep])
	end
end

--继续回
function huangjob_OnNextReturn()
	liandan_DisableAll()
end

--=================================================================
--连接上后自动Robot
function liandan_OnConnect()
	SetVariable("liandanpath",1)
	SetVariable("liandanstep",1)	
	DoAfterSpecial(1,"e;s;s;e;s;buy budai;n;w",10)
	DoAfterSpecial(2,"/liandan_start()",10)
end

--重新连线后
function  liandan_OnReconnect()
	liandan_DisableAll()
	DoAfterSpecial(1,"why;quit",10)
end

--命令太多
function liandan_TooManyCommand()
	liandan_DisableAll()
	DoAfterSpecial(10, "why;quit", 10)		
end

--打雷
function liandan_OnEvent()
	liandan_DisableAll()
	world.Disconnect()
end


--休息
function liandan_doxiuxi()
	xiuxi_doxiuxi()
	--DoAfterSpecial(1,"/liandan_chihe()",10)
	DoAfterSpecial(1.5,"w;w;n;n;n;w;w;sleep",10)
	EnableTriggerGroup("xiuxi2",true)
end

function liandan_chihe()
	local food = tonumber(GetVariable("food"))
	local foodmax = tonumber(GetVariable("food_max"))
	local water = tonumber(GetVariable("water"))
	local watermax = tonumber(GetVariable("water_max"))
	if (food > foodmax/2) and (water > watermax/2) then
		Common_SendToWorld ("w;n;n;n;w;w")
		return
	end 
	Common_SendToWorld ("w;s;w;buy doufu;eat doufu;eat doufu;eat doufu;drink;drink;drink;e;n;n;n;n;w;w")
end

function liandan_xiuxi()
	Common_SendToWorld("give 500 gold to zhm")
	if _G.EndRobot > 0 then
		liandan_DisableAll()
		EnableTimer("timerpause", false)
		EnableTimer("autoemote", true)
	else
		liandan_DisableAll()
		xiuxi_start("liandan")
	end
end

function liandan_xiuxicomplete()  
	xiuxi_complete()
	DoAfterSpecial(1,"e;e;s;s;/liandan_start()",10)
end