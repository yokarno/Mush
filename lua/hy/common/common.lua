require("hy.common.emotetbl")
module (..., package.seeall)

function CloseAll()
	DeleteTemporaryTriggers()
	DeleteTemporaryTimers()
	SetVariable("currstats","liaotian")
end

function StopAll()
	for k, v in pairs (GetTriggerList()) do 
		EnableTrigger(v, false)
	end
	for k, v in pairs (GetTimerList()) do 
		EnableTimer(v, false)
	end
end

function RefreshStatus()
	local msg = "经验 "..GetVariable("experi") .. " 潜能 "..GetVariable("pot").. "/"..GetVariable("pot_max").." 死亡 "..tostring(_G.deadtimes).."次"
	if _G.jobsite ~= "" then
		msg = msg .. " 任务地点：" .. _G.jobsite
	end
	if _G.jobstatus ~= "" then
		msg = msg .. " 任务状态：" .. _G.jobstatus
	end
	SetStatus (msg)
end

function RandomEmote(name1,name2,name3)
	local obj= {"",name1,name2,name3}
	local i = math.random(1,table.getn(Emote_tbl))
	local j = math.random(1,table.getn(obj))
	
	world.Execute(Emote_tbl[i] .. " " .. obj[j])
end

function AddCustomerTrigger(TriggerName,GroupName,MatchText,SendText,TriggerSetting)
	if TriggerSetting == nil then
		AddTriggerEx(TriggerName, MatchText, SendText, 17440 , -1, 0, "", "",10 , 10)
	else
		AddTriggerEx(TriggerName, MatchText, SendText, TriggerSetting , -1, 0, "", "",10 , 10)
	end
	SetTriggerOption(TriggerName, "group", GroupName)
end

function AddCustomerTimer(TimerName, TimerGroup,TimerHour, TimerMinute, TimerSecond, SendText,TimerSetting)
	if TimerSetting == nil then
		AddTimer(TimerName, TimerHour, TimerMinute, TimerSecond, SendText, 17408, "")
	else
		AddTimer(TimerName, TimerHour, TimerMinute, TimerSecond, SendText, TimerSetting, "")
	end
	SetTimerOption(TimerName,"send_to",10)
	SetTimerOption(TimerName, "group", TimerGroup)
end

function AddCustomerAlias(AliasName,AliasText,SendText)
	AddAlias(AliasName, AliasText, SendText, alias_flag.Enabled, "")
	SetAliasOption(AliasName,"send_to",10)
end
