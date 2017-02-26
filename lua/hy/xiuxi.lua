require("hy.common.common")

dazuotimes = 0

function xiuxi_start(status)
	Common_AddCustomerTrigger("xiuxi1", "xiuxi1","^��Ҫ��˭ʲô��", "/"..status.."_doxiuxi()")	
	Common_AddCustomerTrigger("xiuxi2", "xiuxi1","^����ط�������·��������������!", "/"..status.."_doxiuxi()")	
	Common_AddCustomerTrigger("xiuxi3", "xiuxi1","^���Ժ����ԣ�", "/xiuxi_TooManyCommand()") 

	Common_AddCustomerTrigger("xiuxi51", "xiuxi2","^��һ������(.*?)�ûһ���ˡ�", "/"..status.."_xiuxicomplete()")
	
	Common_AddCustomerTrigger("xiuxi101", "xiuxi3","^��(.*?)վ��������", "/xiuxi_dazuo(\""..status.."\")")
	Common_AddCustomerTrigger("xiuxi102", "xiuxi3","^���������������뵤������۾������������һ������", "/xiuxi_dazuo(\""..status.."\")")
	Common_AddCustomerTrigger("xiuxi103", "xiuxi3","^�㽫��Ϣ����������ʮ�����죬���ص��ֻ����ȫ��ů����ġ�", "/xiuxi_dazuo(\""..status.."\")")
	Common_AddCustomerTrigger("xiuxi104", "xiuxi3","^�㽫����������������������һȦ���������뵤������֣�������һ������", "/xiuxi_dazuo(\""..status.."\")")
	Common_AddCustomerTrigger("xiuxi105", "xiuxi3","^�����ھ�����", "/xiuxi_delaydazuo()")
	Common_AddCustomerTrigger("xiuxi106", "xiuxi3","^�޾���ɱ�⻺��ɢ��ȫ�������ۣ�������һ������", "/xiuxi_dazuo(\""..status.."\")")

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
