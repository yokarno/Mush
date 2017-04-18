require("hy.common.common")
require("hy.common.cmd")

--=================================================================
--连接上后自动Robot
function World_Triggers()

	Common_AddCustomerTrigger("common1", "common","^你上次光临 海洋(.*?)是(.*?)连接的。", "/World_OnConnect()")
	Common_AddCustomerTrigger("common2", "common","^重新连线完毕。", "/World_OnReconnect()")

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
