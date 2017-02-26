require("hy.common.common")

dazuotimes = 0

function xiuxi_start(status)
	Common_AddCustomerTrigger("xiuxi1", "xiuxi1","^你要问谁什么事", "/"..status.."_doxiuxi()")	
	Common_AddCustomerTrigger("xiuxi2", "xiuxi1","^这个地方到处是路，你向哪里逃呢!", "/"..status.."_doxiuxi()")	
	Common_AddCustomerTrigger("xiuxi3", "xiuxi1","^请稍后再试！", "/xiuxi_TooManyCommand()") 

	Common_AddCustomerTrigger("xiuxi51", "xiuxi2","^你一觉醒来(.*?)该活动一下了。", "/"..status.."_xiuxicomplete()")
	
	Common_AddCustomerTrigger("xiuxi101", "xiuxi3","^你(.*?)站了起来。", "/xiuxi_dazuo(\""..status.."\")")
	Common_AddCustomerTrigger("xiuxi102", "xiuxi3","^你慢慢收气，归入丹田，睁开眼睛，轻轻的吐了一口气。", "/xiuxi_dazuo(\""..status.."\")")
	Common_AddCustomerTrigger("xiuxi103", "xiuxi3","^你将内息在体内运行十二周天，返回丹田，只觉得全身暖洋洋的。", "/xiuxi_dazuo(\""..status.."\")")
	Common_AddCustomerTrigger("xiuxi104", "xiuxi3","^你将真气在体内沿脉络运行了一圈，缓缓纳入丹田，放下手，长吐了一口气。", "/xiuxi_dazuo(\""..status.."\")")
	Common_AddCustomerTrigger("xiuxi105", "xiuxi3","^你现在精不够", "/xiuxi_delaydazuo()")
	Common_AddCustomerTrigger("xiuxi106", "xiuxi3","^无尽的杀意缓缓散入全身，睁开眼，长吐了一口气。", "/xiuxi_dazuo(\""..status.."\")")

	Common_AddCustomerTimer("xiuxi1", "xiuxi",0, 0, 1, "ask "..WorldName())
	
	xiuxi_DisableAll()
	EnableTriggerGroup("xiuxi1",true)
	EnableTimer("xiuxi1", true)
	
end

function xiuxi_DisableAll()
	EnableTriggerGroup("xiuxi1",false)
	EnableTriggerGroup("xiuxi2",false)
	EnableTriggerGroup("xiuxi3",false)
	EnableTimer("xiuxi1", false)
end

function xiuxi_doxiuxi()
	xiuxi_DisableAll()
	EnableTriggerGroup("xiuxi2",true)
end

function xiuxi_complete()
	xiuxi_DisableAll()
	Common_SendToWorld("hp")
end

function xiuxi_dodazuo()
	xiuxi_DisableAll()
	EnableTriggerGroup("xiuxi3",true)
end

function xiuxi_delaydazuo()
	DoAfterSpecial(5, "yj;yj;yj;dazuo 10", 10)
end

function xiuxi_dazuo(status)
	xiuxi_DisableAll()
	dazuotimes = dazuotimes + 1
	if dazuotimes > 10 then 
		dazuotimes = 0
		DoAfterSpecial(0.5, "/"..status.."_xiuxicomplete()", 10)
	else
		Common_SendToWorld("dazuo 10")
		EnableTriggerGroup("xiuxi3",true)
	end
	
end

function xiuxi_TooManyCommand()
	xiuxi_DisableAll()
	DoAfterSpecial(20, "/"..status.."_doxiuxi()", 10)
end
