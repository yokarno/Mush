require("hy.common.common")
require("hy.common.cmd")

--=================================================================
--连接上后自动Robot
function World_Triggers()
	Common_AddCustomerTrigger("common1", "common","^【 精  气 】(.+?)\/(.+?)\((.+?)【 精  力 】(.+?)\/(.+?)\((.*?)", "/World_SetV1(%1,%2,%4,%5)")
	Common_AddCustomerTrigger("common2", "common","^【 气  血 】(.+?)\/(.+?)\((.+?)【 内  力 】(.+?)\/(.+?)\((.*?)", "/World_SetV2(%1,%2,%4,%5)")
	Common_AddCustomerTrigger("common3", "common","^【 食  物 】(.+?)\/(.+?)【 潜  能 】(.+?)\\\((.*?)\\\)", "/World_SetV3(%1,%2,%3,%4)")
	Common_AddCustomerTrigger("common4", "common","^【 饮  水 】(.+?)\/(.+?)【 正  气 】(.+?)$", "/World_SetV4(%1,%2,%3)")
	Common_AddCustomerTrigger("common5", "common","^【 经  验 】(.+?)【内力上限】(.+?)", "/World_SetV5(%1)")
	Common_AddCustomerTrigger("common39", "common","^┃【性别】(.*?)性(.*?)┃", "/World_SetV6(\"%1\")")
	Common_AddCustomerTrigger("common40", "common","^┃【门派】(.*?)┃","/World_SetV7(\"%1\")")
	Common_AddCustomerTrigger("common42", "common","^┃【年龄】(.*?)┃", "/World_SetV8(\"%1\")")

	Common_AddCustomerTrigger("common9", "common","^你上次光临 海洋(.*?)是(.*?)连接的。", "/World_OnConnect()")
	Common_AddCustomerTrigger("common10", "common","^重新连线完毕。", "/World_OnReconnect()")

	Common_AddCustomerTimer("autoemote", "autoemote",0, 3, 0, "/World_Idle()")
	
	EnableTriggerGroup("common", true)
	
	Accelerator ("Alt+S", "/World_CloseAll()")
	Accelerator ("F1+Shift", "/World_StopAll()")

end

function World_OnConnect()
	Common_SendToWorld("home")
	EnableTimer("autoemote", true)
end

function World_OnReconnect()
	Common_SendToWorld("home")
	EnableTimer("autoemote", true)
end

function World_CloseAll()
	Common_CloseAll()
	World_Triggers()
	EnableTimer("autoemote", true)
end

function World_StopAll()
	Common_StopAll()
  	World_Triggers()
  	EnableTimer("autoemote", true)
end

function World_RandomEmote(name1,name2,name3)
	World_RandomEmote(name1,name2,name3)
end

function World_SetV1(jing,jing_max,jingli,jingli_max)
	SetVariable("jing",jing)
	SetVariable("jing_max",jing_max)
	SetVariable("jingli",jingli)
	SetVariable("jingli_max",jingli_max)
end

function World_SetV2(qi,qi_max,neili,neili_max)
	SetVariable("qi",qi)
	SetVariable("qi_max",qi_max)
	SetVariable("neili",neili)
	SetVariable("neili_max",neili_max)
end

function World_SetV3(food,food_max,pot,pot_max)
	SetVariable("food",food)
	SetVariable("food_max",food_max)
	SetVariable("pot",pot)
	SetVariable("pot_max",pot_max)
end 

function World_SetV4(water,water_max,zhengqi)
	SetVariable("water",water)
	SetVariable("water_max",water_max)
	SetVariable("zhengqi",zhengqi)
end 

function World_SetV5(experi)
	SetVariable("experi",experi)
end

function World_SetV6(xingbie)
	xingbie = Trim(xingbie)
	SetVariable("xingbie",xingbie)
end

function World_SetV7(shimen)
	shimen = Trim(shimen)
	SetVariable("shimen",shimen)
end

function World_SetV8(age)
	age = Trim(age)
	SetVariable("age",age)
end

function World_Idle()
	Common_SendToWorld("xfull")
	world.Connect()
end

function World_StopAll()
	local activeworld = nil
	
	for k, v in pairs (GetWorldList()) do 
		activeworld = GetWorld (v)
		activeworld.DoAfterSpecial(0.1,"/World_OnEndRobot()",10)
		activeworld = nil
	end
end

function shuacailiao(id,material,nStart,nEnd)
	local tt = 0
	for i=nStart,nEnd do
		DoAfterSpecial(tt+0.5,"setsx "..id.." pawn/"..i.." \"长剑\"",10)
		DoAfterSpecial(tt+0.5,"setsx "..id.." vpawn/"..i.." 10",10)
		DoAfterSpecial(tt+0.5,"setsx "..id.." fpawn/"..i.." \""..material.."\"",10)
		tt = tt + 0.5
	end	
end