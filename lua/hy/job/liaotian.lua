require("hy.common.common")
require("hy.materialtbl")

objname = ""
jiedu = ""
targetid = ""
hasjindan = 1

liaotian_putitem_tbl = {
["正气吟"] = "pawn zhengqi_book",
["辟邪剑谱"] = "pawn pixie_sword_book",
["千年火龙甲"] = "pawn jia",
["内功精要下册"] = "pawn force book2",
["内功精要上册"] = "pawn force book1",
["刀法精要"] = "pawn blade book",
["杖法精要"] = "pawn staff book",
["手法精要"] = "pawn hand book",
["剑法精要"] = "pawn sword book",
["般若经"] = "pawn jing",
["道德经"] = "pawn jing",
["拳谱总诀"] = "pawn shu",
["掌法总谱"] = "pawn shu",

["人参果"] = "put renshen guo in budai",
["九花玉露丸"] = "put wan in budai",
["续命八丹"] = "put badan in budai",
["朱睛冰蟾"] = "put chan in budai",
["正气丹"] = "put zhengqi dan in budai",
["戾气丹"] = "put niqi dan in budai",
--["九转金丹"] = "put jin dan in budai",

["鱼鳞肚带"] = "pawn surcoat15",
["开山肚带"] = "pawn surcoat16",
["冰释肚带"] = "pawn surcoat14",
["流波肚带"] = "pawn surcoat13",
["高山肚带"] = "pawn surcoat11",
["大川肚带"] = "pawn surcoat12",
["深渊肚带"] = "pawn surcoat10",
["芙蓉肚带"] = "pawn surcoat9",
["沧海肚带"] = "pawn surcoat18",
["倒海肚带"] = "pawn surcoat17",

["血斩头盔"] = "pawn helmet15",
["天威头盔"] = "pawn helmet16",
["椒图头盔"] = "pawn helmet14",
["蜍夏头盔"] = "pawn helmet13",
["蒲牢头盔"] = "pawn helmet11",
["饕餮头盔"] = "pawn helmet12",
["螭吻头盔"] = "pawn helmet10",
["紫芒头盔"] = "pawn helmet18",
["旋风头盔"] = "pawn helmet17",

}

--liaotian
function liaotian_start()
	Common_AddCustomerTrigger("liaotian1", "liaotian1","^(?P<front>.*)丢下", "/liaotian_get(\"%<front>\")")
	--Common_AddCustomerTrigger("liaotian2", "liaotian1","^(?P<npcname>.*)向你打听有关『解毒』的消息。", "/liaotian_jiedugetname(\"%<npcname>\")")
	--Common_AddCustomerTrigger("liaotian3", "liaotian1","^(?P<npcname>.*)向你打听有关『jiedu』的消息。", "/liaotian_jiedugetname(\"%<npcname>\")")
	-- Common_AddCustomerTrigger("liaotian4", "liaotian1","^(?P<npcname>.*)向你打听有关『解寒毒』的消息。", "/liaotian_jiehandugetname(\"%<npcname>\")")
	-- Common_AddCustomerTrigger("liaotian5", "liaotian1","^(?P<npcname>.*)向你打听有关『jiehandu』的消息。", "/liaotian_jiehandugetname(\"%<npcname>\")")
	-- Common_AddCustomerTrigger("liaotian6", "liaotian1","^(?P<npcname>.*)向你打听有关『疗伤』的消息。", "/liaotian_healgetname(\"%<npcname>\")")
	-- Common_AddCustomerTrigger("liaotian7", "liaotian1","^(?P<npcname>.*)向你打听有关『heal』的消息。", "/liaotian_healgetname(\"%<npcname>\")")
	
	Common_AddCustomerTrigger("liaotian8", "liaotian1","^(?P<front>.*)给你(?P<obj>.*)", "/liaotian_saveobj(\"%<front>\",\"%<obj>\")")
	Common_AddCustomerTrigger("liaotian9", "liaotian1","^(?P<front>.*)给你(.*?)九转金丹", "/liaotian_putjindan(\"%<front>\")")

	--Common_AddCustomerTrigger("liaotian12", "liaotian1","^(?P<npcname>.*)向你打听有关『all』的消息。", "/liaotian_asmekall()")
	
	--Common_AddCustomerTrigger("liaotian13", "liaotian1","^(?P<npcname>.*)向你打听有关『long』的消息。", "/liaotian_asklong(\"%<npcname>\")")
	--Common_AddCustomerTrigger("liaotian14", "liaotian1","^(?P<npcname>.*)向你打听有关『龙』的消息。", "/liaotian_asklong(\"%<npcname>\")")
	
	Common_AddCustomerTrigger("liaotian51", "liaotian2","^(?P<npcname>.*)=(?P<npcid>.*)$", "/liaotian_getid(\"%<npcname>\",\"%<npcid>\")")
	Common_AddCustomerTrigger("liaotian52", "liaotian2","^拜自己为师？好主意....不过没有用。", "/liaotian_start()")

	--Common_AddCustomerTrigger("liaotian101", "liaotian3","^【江湖谣言】某人：(?P<npcname>.*)得到一颗千年火龙丹。", "/liaotian_killlong()")
	Common_AddCustomerTrigger("liaotian102", "liaotian3","^你运起唐门的碧云心法，吐出了一口碧色的血夜!!解开了身上的毒！!", "/liaotian_sayjiedu()")
	Common_AddCustomerTrigger("liaotian103", "liaotian3","^你坐了下来运起内功，将手掌贴在(.*?)背心，缓缓地将真气输入", "/liaotian_sayjiehandu()")
	Common_AddCustomerTrigger("liaotian104", "liaotian3","^对方没有受伤，不需要接受治疗。", "/liaotian_saynoheal()")
	Common_AddCustomerTrigger("liaotian105", "liaotian3","^只见你默默运转枯荣禅功，深深吸进一口气，头上隐隐冒出白雾，陡然施展开", "/liaotian_sayheal()")
	Common_AddCustomerTrigger("liaotian106", "liaotian3","^你现在的真气不足，难以施展「起死回生」。", "/liaotian_noneili()")
	Common_AddCustomerTrigger("liaotian107", "liaotian3","^对方的真气不够。", "/liaotian_targetnoneili()")
	Common_AddCustomerTrigger("liaotian108", "liaotian3","^这里没有(?P<txt>.*)", "/liaotian_notarget(\"%<txt>\")")
	
	Common_AddCustomerTrigger("liaotian151", "liaotian4","^现在是北京时间(?P<time>.*)。", "/liaotian_killlongbjtime(\"%<time>\")")
	Common_AddCustomerTrigger("liaotian152", "liaotian4","^海洋III已经执行了(?P<time>.*)。", "/liaotian_killlonghytime(\"%<time>\")")
	Common_AddCustomerTrigger("liaotian153", "liaotian4","^拜自己为师？好主意....不过没有用。", "/liaotian_start()")
	
	--Common_AddCustomerTrigger("liaotian201", "liaotian5","^(?P<target>.*)\\((?P<targetid>.*)\\)告诉你：药性过了", "/liaotian_checkjindan(\"%<target>\",\"%<targetid>\")")
	--Common_AddCustomerTrigger("liaotian202", "liaotian5","^(?P<target>.*)\\((?P<targetid>.*)\\)告诉你：give me jin dan", "/liaotian_givejindan(\"%<target>\",\"%<targetid>\")")
	
	Common_AddCustomerTrigger("liaotian252", "liaotian6","^      九转金丹", "/liaotian_hasjindan()")
	Common_AddCustomerTrigger("liaotian253", "liaotian6","^拜自己为师？好主意....不过没有用。", "/liaotian_hasnojindan()")
	Common_AddCustomerTrigger("liaotian254", "liaotian6","九花玉露丸", "/Common_Gag()",17444)
	Common_AddCustomerTrigger("liaotian255", "liaotian6","续命八丹", "/Common_Gag()",17444)
	Common_AddCustomerTrigger("liaotian256", "liaotian6","朱睛冰蟾", "/Common_Gag()",17444)
	Common_AddCustomerTrigger("liaotian257", "liaotian6","舍利子", "/Common_Gag()",17444)
	
	Common_AddCustomerTrigger("liaotian301", "liaotian7","^你身上没有这样东西。", "/liaotian_nojindan()")
	Common_AddCustomerTrigger("liaotian302", "liaotian7","^这样东西不能随便给人。", "/liaotian_nojindan()")
	Common_AddCustomerTrigger("liaotian303", "liaotian7","^你从麻布袋中拿出一颗九转金丹。", "/liaotian_start()")

	Common_AddCustomerTrigger("liaotian351", "liaotian8","^你要问谁什么事？", "/liaotian_nobusy()")

	Common_AddCustomerTimer("liaotian1", "liaotian1",0, 0, 1, "ask "..WorldName())
		
	SetVariable("currstats","liaotian")
	liaotian_DisableAll()
	EnableTimer("autoemote", true)
	EnableTriggerGroup("liaotian1",true)
end

function liaotian_DisableAll()
	EnableTriggerGroup("liaotian1",false)
	EnableTriggerGroup("liaotian2",false)
	EnableTriggerGroup("liaotian3",true)
	EnableTriggerGroup("liaotian4",false)
	EnableTriggerGroup("liaotian5",true)
	EnableTriggerGroup("liaotian6",false)
	EnableTriggerGroup("liaotian7",false)
	EnableTriggerGroup("liaotian8",false)
	EnableTimer("liaotian1", false)
end

function liaotian_sayjiedu()
	Common_SendToWorld("say "..objname.."的毒已经解了。")
	EnableTriggerGroup("liaotian8",true)
	EnableTimer("liaotian1", true)
end

function liaotian_sayheal()
	Common_SendToWorld("say "..objname.."的伤好了")
	EnableTriggerGroup("liaotian8",true)
	EnableTimer("liaotian1", true)
end

function liaotian_sayjiehandu()
	Common_SendToWorld("say "..objname.."的寒毒已经解了。")
	EnableTriggerGroup("liaotian8",true)
	EnableTimer("liaotian1", true)
end

function liaotian_saynoheal()
	Common_SendToWorld("say "..objname.."没有受伤，不需要接受治疗。")
	--Common_SendToWorld ("remove all;enable force biyun-xinfa;wear all")
	DoAfterSpecial (1,"/liaotian_start()",10)
end

function liaotian_nobusy()
	liaotian_DisableAll()
	liaotian_start()
end

function liaotian_get(txt)
	if Common_FilterTxt(txt) == nil then
		return
	end 
	if txt == "你" then
		return
	end
	Common_SendToWorld("get all")
end

function liaotian_jiedugetname(name)
	if Common_FilterTxt(name) == nil then
		return
	end 

	if _G.JieduId == nil then	
		return
	end
	
	liaotian_DisableAll()
	--Common_SendToWorld("sorry;say 暂时不提供此解毒服务")
	objname = name
	jiedu = "jiedu"
	Common_SendToWorld("id here;bai "..WorldName())
	EnableTriggerGroup("liaotian2",true)
--	DoAfterSpecial (8,"/liaotian_start()",10)
end

function liaotian_killlong()
	liaotian_DisableAll()
	Common_SendToWorld("bjtime;bai "..WorldName())
	EnableTriggerGroup("liaotian4",true)
end

function liaotian_killlongbjtime(txt)
	SetVariable("killlongbjtime",txt)
end

function liaotian_killlonghytime(txt)
	SetVariable("killlonghytime",txt)
	DoAfterSpecial (1,"/liaotian_start()",10)
end

function liaotian_asklong(name)
	if Common_FilterTxt(name) == nil then
		return
	end 
	liaotian_DisableAll()
	Common_SendToWorld("bow")
	Common_SendToWorld("say 上次杀龙时间：北京时间"..GetVariable("killlongbjtime").."；海洋时间"..GetVariable("killlonghytime"))
	DoAfterSpecial (1,"/liaotian_start()",10)
end

function liaotian_jiehandugetname(name)
	if Common_FilterTxt(name) == nil then
		return
	end 
	if _G.JieduId == nil then	
		return
	end
	
	liaotian_DisableAll()
	--Common_SendToWorld("sorry;say 暂时不提供此解毒服务")
	objname = name
	jiedu = "jiehandu"
	Common_SendToWorld("id here;bai "..WorldName())
	EnableTriggerGroup("liaotian2",true)
--	DoAfterSpecial (8,"/liaotian_start()",10)
end

function liaotian_healgetname(name)
	if Common_FilterTxt(name) == nil then
		return
	end 
	if _G.JieduId == nil then	
		return
	end
	
	liaotian_DisableAll()
	objname = name
	jiedu = "heal"
	Common_SendToWorld("id here;bai "..WorldName())
	EnableTriggerGroup("liaotian2",true)
--	DoAfterSpecial (8,"/liaotian_start()",10)
end

function liaotian_getid(name,id)
	npcname = Trim(name)
	npcid = Trim(id)

	if npcname == objname then
		liaotian_DisableAll()
		if jiedu == "jiedu" then
			Common_SendToWorld("remove all;enable force biyun-xinfa;wear all;exert jiedu "..npcid)
		elseif jiedu == "jiehandu" then
			Common_SendToWorld("remove all;enable force jiuyang-shengong;wear all;".."exert jingheal "..npcid)
--			DoAfterSpecial (4,"remove all;enable force biyun-xinfa;wear all",10)
		elseif jiedu == "heal" then
			--Common_SendToWorld("perform finger.heal "..npcid)
			Common_SendToWorld("remove all;enable force kurong-changong;wear all;".."perform finger.heal "..npcid)
--			DoAfterSpecial (6,"remove all;enable force biyun-xinfa;wear all",10)
		else
			Common_SendToWorld("exert guiyuanfa "..npcid)
			Common_SendToWorld("exert guiyuanfa "..npcid)
		end
		--DoAfterSpecial (2,"ok "..npcid,10)
	end
end

function liaotian_asmekall()
	liaotian_DisableAll()
	if _G.JieduId == nil then
		Common_SendToWorld("say 你可以向我询问关于 龙 long 的消息。")
	else
		Common_SendToWorld("say 你可以向我询问关于 龙 解毒 解寒毒 疗伤 long jiedu jiehandu heal 的消息。")
		--Common_SendToWorld("say 你可以向我询问关于 龙 解毒 解寒毒 long jiedu jiehandu 的消息。")
	end
	DoAfterSpecial (1,"/liaotian_start()",10)
end

function liaotian_noneili()
	Common_SendToWorld("say 没内力了，要等一会恢复。")
	DoAfterSpecial (1,"/liaotian_start()",10)
end

function liaotian_targetnoneili()
	Common_SendToWorld("say "..objname.."没内力了，不能解寒毒。")	
	--Common_SendToWorld ("remove all;enable force biyun-xinfa;wear all")
	DoAfterSpecial (1,"/liaotian_start()",10)
end

function liaotian_notarget(txt)
	if txt == "这个人。" then
		Common_SendToWorld("sigh;put jin dan in budai")
		return
	end
	--Common_SendToWorld("sigh;put jin dan in budai")
	DoAfterSpecial (1,"/liaotian_start()",10)
end


function liaotian_saveobj(txt,obj)
    if _G.ChatId ~= nil then
	    if Common_FilterTxt(txt) == nil then
			return
		end 
		for k,v in pairs(liaotian_putitem_tbl) do
		 	if string.find(obj,k) then
				Common_SendToWorld(liaotian_putitem_tbl[k])
				break
			end
		end
	end
end

function liaotian_putjindan(txt)
  if Common_FilterTxt(txt) == nil then
		return
	end 
	
	-- if _G.eatjindanid_tbl[WorldName()] == nil then
		-- Common_SendToWorld("put jin dan in budai")
	-- else
		-- Common_eatjindan()
	-- end
end

function liaotian_checkjindan(obj,objid)
  if Common_FilterTxt(obj) == nil then
		return
	end 

	-- if _G.eatjindanid_tbl[objid] == nil then
		-- return
	-- end
	
	targetid = objid
	Common_SendToWorld("l budai;bai "..WorldName())
	EnableTriggerGroup("liaotian6",true)
end

function liaotian_hasjindan()
	hasjindan = 1
--	liaotian_DisableAll()
--	Common_SendToWorld("tell "..targetid.." eat jin dan")
--	EnableTriggerGroup("liaotian1",true)
end

function liaotian_givejindan(obj,objid)
  if Common_FilterTxt(obj) == nil then
		return
	end 
	-- if _G.eatjindanid_tbl[objid] == nil then
		-- return
	-- end

	targetid = objid
	liaotian_DisableAll()
	Common_SendToWorld("get jin dan from budai;give jin dan to "..objid)
	EnableTriggerGroup("liaotian7",true)
end

function liaotian_nojindan()
	liaotian_DisableAll()
	Common_SendToWorld("tell "..targetid.." no jin dan")
	EnableTriggerGroup("liaotian1",true)
end

function liaotian_hasnojindan()
	liaotian_DisableAll()
	if hasjindan == 1 then
		Common_SendToWorld("tell "..targetid.." eat jin dan")
		hasjindan = 0
	end
	EnableTriggerGroup("liaotian1",true)
end

function liaotian_min()
	if _G.ChatId ~= nil then
		local activeworld = nil
		for k, v in pairs (GetWorldList()) do 
			activeworld = GetWorld (v)
			if  _G.commonminworld_tbl[activeworld: WorldName()] ~= nil then
				activeworld: SetWorldWindowStatus (2)
			end
			activeworld = nil
		end
	end
end
--=================================================================
--连接上后自动Robot
function liaotian_OnConnect()
	liaotian_DisableAll()
	Common_SendToWorld("e;s;s")
	if _G.ChatId ~= nil then
		Common_SendToWorld("e;s;buy budai;n;w")
	end
	Common_SendToWorld("s;e;e;chd")
	Common_SendToWorld("/liaotian_start()")
	--DoAfterSpecial (10,"/liaotian_min()",10)
end

--重新连线后
function  liaotian_OnReconnect()
	liaotian_DisableAll()
	liaotian_start()
	--DoAfterSpecial (1,"/liaotian_min()",10)
end

--命令太多
function liaotian_TooManyCommand()

end

--打雷
function liaotian_OnEvent()
	liaotian_DisableAll()
	world.Disconnect()
end