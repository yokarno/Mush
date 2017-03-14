require("hy.common.emotetbl")
require("hy.common.pathtbl")
--module (..., package.seeall)

function Common_CloseAll()
	DeleteTemporaryTriggers()
	DeleteTemporaryTimers()
end

function Common_StopAll()
	for k, v in pairs (GetTriggerList()) do 
		EnableTrigger(v, false)
	end
	for k, v in pairs (GetTimerList()) do 
		EnableTimer(v, false)
	end
end

function Common_RandomEmote(name1,name2,name3)
	local obj= {"",name1,name2,name3}
	local i = math.random(1,table.getn(Emote_tbl))
	local j = math.random(1,table.getn(obj))

	if GetInfo (227) == 8 then
		world.Execute(Emote_tbl[i] .. " " .. obj[j])
	end
	
	
end

function Common_FilterTxt(txt)
	if txt == nil then
		return 1
	end
	if txt == "Ë«½£ºÏèµ" then 
		return 1
	end
	if txt == "Ë«½£ºÍèµ×óÓÒ»¥²«" then 
		return 1
	end
  if string.find(txt,"£º") then
		return nil
	end 
	s,e = string.gsub(txt,"¡¾","¡¾")
	if e > 0 then
		return nil
	end 
	
	return 1
end


function Common_Gag()
end

function Common_AddCustomerTrigger(TriggerName,GroupName,MatchText,SendText,TriggerSetting,SendTo)
	if TriggerSetting == nil then
		if	SendTo == nil then
			AddTriggerEx(TriggerName, MatchText, SendText, 17440 , -1, 0, "", "",10 , 10)
		else
			AddTriggerEx(TriggerName, MatchText, SendText, 17440 , -1, 0, "", "",SendTo , 10)
		end
		
	else
		if	SendTo == nil then
			AddTriggerEx(TriggerName, MatchText, SendText, TriggerSetting , -1, 0, "", "",10 , 10)
		else
			AddTriggerEx(TriggerName, MatchText, SendText, 17440 , -1, 0, "", "",SendTo , 10)
		end
		
	end
	SetTriggerOption(TriggerName, "group", GroupName)
end

function Common_AddCustomerTimer(TimerName, TimerGroup,TimerHour, TimerMinute, TimerSecond, SendText,TimerSetting,SendTo)
	if TimerSetting == nil then
		AddTimer(TimerName, TimerHour, TimerMinute, TimerSecond, SendText, 17408, "")
	else
		AddTimer(TimerName, TimerHour, TimerMinute, TimerSecond, SendText, TimerSetting, "")
	end
	if	SendTo == nil then
		SetTimerOption(TimerName,"send_to",10)
	else
		SetTimerOption(TimerName,"send_to",SendTo)
	end
	SetTimerOption(TimerName, "group", TimerGroup)
end

function Common_AddCustomerAlias(AliasName,AliasText,SendText,SendTo)
	AddAlias(AliasName, AliasText, SendText, alias_flag.Enabled, "")
	if	SendTo == nil then
		SetAliasOption(AliasName,"send_to",10)
	else
		SetAliasOption(AliasName,"send_to",SendTo)
	end
end

function Common_SetWorldAddress()
	local address=world.GetVariable("WorldSite") or world.WorldAddress()
	world.SetAlphaOption("site",address)
end

function Common_GetWorldAddress()
	local address=world.WorldAddress()
	world.SetVariable("WorldSite",address)
end

function Common_ClearWorldAddress()
	world.SetAlphaOption("site","0.0.0.0")
end


