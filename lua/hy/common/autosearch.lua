require("hy.common.cmd")
require("hy.common.common")

--实现按路径逐步搜索功能
function autosearch_Start(cmd)
	Common_AddCustomerTrigger("autosearch_fight1", "autosearch_fight","^(?P<front>.*)只能对战斗中的对手使用。", "/autosearch_stepnofight(\"%<front>\")")
	Common_AddCustomerTrigger("autosearch_fight2", "autosearch_fight","^(?P<front>.*)只能在战斗中使用。", "/autosearch_stepnofight(\"%<front>\")")
	Common_AddCustomerTrigger("autosearch_fight3", "autosearch_fight","^(?P<front>.*)只能在战斗中对对手使用。", "/autosearch_stepnofight(\"%<front>\")")
	Common_AddCustomerTrigger("autosearch_fight4", "autosearch_fight","^(?P<front>.*)只能对对手使用。", "/autosearch_stepnofight(\"%<front>\")")

	--明教
	Common_AddCustomerTrigger("autosearch_mingjiao1", "autosearch_mingjiao","^你一不小心脚下踏了个空", "/autosearch_mingjiaopaifang()")
	Common_AddCustomerTrigger("autosearch_mingjiao2", "autosearch_mingjiao","^栈道 - northup、southdown", "/autosearch_nextgo()")
	Common_AddCustomerTrigger("autosearch_mingjiao3", "autosearch_mingjiao","^你奋力一跃，却离石顶还有一丈多远，看来是白费力气", "/autosearch_xuantianyaup()")
	Common_AddCustomerTrigger("autosearch_mingjiao4", "autosearch_mingjiao","^你使劲儿一蹦，离石顶还有数丈远就掉了下来，摔的鼻青脸肿", "/autosearch_xuantianyaup()")
	Common_AddCustomerTrigger("autosearch_mingjiao5", "autosearch_mingjiao","^你纵身而起，离石顶只差一点点了，再加把劲", "/autosearch_xuantianyaup()")
	Common_AddCustomerTrigger("autosearch_mingjiao6", "autosearch_mingjiao","^悬天石 - down", "/autosearch_nextgo()")

	--华山
	Common_AddCustomerTrigger("autosearch_huashan1", "autosearch_huashan","^你向高根明打听有关『all』的消息。", "/autosearch_huashandokill()")
	Common_AddCustomerTrigger("autosearch_huashan2", "autosearch_huashan","^这里没有这个人", "/autosearch_nextgo()")

	--少林
	Common_AddCustomerTrigger("autosearch_shaolin1", "autosearch_shaolin","^你向虚(.*?)打听有关『all』的消息。", "/autosearch_shaolindokill()")
	Common_AddCustomerTrigger("autosearch_shaolin2", "autosearch_shaolin","^这里没有这个人", "/autosearch_nextgo()")

	--嵩山
	Common_AddCustomerTrigger("autosearch_songshan1", "autosearch_songshan","^你奋力一跃，却离瀑布顶还有一丈多远，看来是白费力气。", "/autosearch_sjcyup()")
	Common_AddCustomerTrigger("autosearch_songshan2", "autosearch_songshan","^你使劲儿一蹦，离瀑布顶还有数丈远就掉了下来，摔的鼻青脸肿。", "/autosearch_sjcyup()")
	Common_AddCustomerTrigger("autosearch_songshan3", "autosearch_songshan","^你纵身而起，离瀑布顶只差一点点了，再加把劲。", "/autosearch_sjcyup()")
	Common_AddCustomerTrigger("autosearch_songshan4", "autosearch_songshan","^铁梁峡 - down、northup", "/autosearch_nextgo()")		
	Common_AddCustomerTrigger("autosearch_songshan5", "autosearch_songshan","^这里没有这个人", "/autosearch_nextgo()")
	Common_AddCustomerTrigger("autosearch_songshan6", "autosearch_songshan","^你向乐厚打听有关『all』的消息。", "/autosearch_songshandokill()")

	Common_AddCustomerTimer("autosearch1", "autosearch",0, 0, 1, "pfm")
	
	SetVariable("searchstep",1)
	
	if cmd ~= nil then
		SetVariable("searchcmd",cmd)
	else
		SetVariable("searchcmd","")
	end
end

function autosearch_DisableAll()
	EnableTriggerGroup("autosearch_fight", false)
	EnableTriggerGroup("autosearch_mingjiao", false)
	EnableTriggerGroup("autosearch_huashan", false)
	EnableTriggerGroup("autosearch_shaolin", false)
	EnableTriggerGroup("autosearch_songshan", false)
	EnableTimerGroup("autosearch",false)
end

function autosearch_GoStep(typeid,cmd)
	EnableTriggerGroup("autosearch_"..typeid, true)
	SetVariable("searchstepcmd",cmd)
end

function autosearch_StepNext(cmd)
	local searchstep = tonumber(GetVariable("searchstep"))
	searchstep = searchstep + 1
	SetVariable("searchstep",searchstep)
  	if string.find(cmd,"/autosearch_GoStep") then
		Common_SendToWorld(cmd)
	else
		local searchcmd = GetVariable("searchcmd")
		Common_SendToWorld(cmd..";"..searchcmd)
	end 
end

function autosearch_StepReturn(cmd)
	autosearch_DisableAll()
	Common_SendToWorld(cmd..";sigh4")
end

function autosearch_StepFail()
	local searchstep = tonumber(GetVariable("searchstep"))
	searchstep = searchstep - 1
	SetVariable("searchstep",searchstep)
end

function autosearch_stepnofight(txt)
	if Common_FilterTxt(txt) == nil then
		return
	end 
	EnableTriggerGroup("autosearch_fight", false)
	EnableTimer("autosearch1",false)
	local searchkillover = GetVariable("searchkillover")
	Common_SendToWorld(searchkillover)
end


function autosearch_nextgo()
	autosearch_DisableAll()
	local searchstepcmd = GetVariable("searchstepcmd")
	local searchcmd = GetVariable("searchcmd")
	Common_SendToWorld(searchstepcmd..";"..searchcmd)
end

function autosearch_mingjiaopaifang()
	Common_SendToWorld("yj;yq;nu;enter;nu;nu")
end

function autosearch_xuantianyaup()
	Common_SendToWorld("up")
end

function autosearch_huashandokill()
	SetVariable("searchkillover","/autosearch_nextgo()")
	Common_SendToWorld("kill gao genming")
	EnableTriggerGroup("autosearch_fight", true)
	EnableTimer("autosearch1",true)
end

function autosearch_shaolindokill()
	local xingbie = GetVariable("xingbie")
	if xingbie == "女" then
		SetVariable("searchkillover","/autosearch_shaolindokill()")
		Common_SendToWorld("kill xu")
		EnableTriggerGroup("autosearch_fight", true)
		EnableTimer("autosearch1",true)
		return
	end
	autosearch_nextgo()
end

function autosearch_sjcyup()
	Common_SendToWorld("up")
end

function autosearch_gosongshandokill()
	SetVariable("searchkillover","/autosearch_nextgo()")
	Common_SendToWorld("kill yao hou")
	EnableTriggerGroup("autosearch_fight", true)
	EnableTimer("autosearch1",true)
end