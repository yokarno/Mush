require("hy.common.common")
require("hy.materialtbl")

objname = ""
jiedu = ""
targetid = ""
hasjindan = 1

liaotian_putitem_tbl = {
["������"] = "pawn zhengqi_book",
["��а����"] = "pawn pixie_sword_book",
["ǧ�������"] = "pawn jia",
["�ڹ���Ҫ�²�"] = "pawn force book2",
["�ڹ���Ҫ�ϲ�"] = "pawn force book1",
["������Ҫ"] = "pawn blade book",
["�ȷ���Ҫ"] = "pawn staff book",
["�ַ���Ҫ"] = "pawn hand book",
["������Ҫ"] = "pawn sword book",
["������"] = "pawn jing",
["���¾�"] = "pawn jing",
["ȭ���ܾ�"] = "pawn shu",
["�Ʒ�����"] = "pawn shu",

["�˲ι�"] = "put renshen guo in budai",
["�Ż���¶��"] = "put wan in budai",
["�����˵�"] = "put badan in budai",
["�쾦���"] = "put chan in budai",
["������"] = "put zhengqi dan in budai",
["������"] = "put niqi dan in budai",
--["��ת��"] = "put jin dan in budai",

["���۶Ǵ�"] = "pawn surcoat15",
["��ɽ�Ǵ�"] = "pawn surcoat16",
["���ͶǴ�"] = "pawn surcoat14",
["�����Ǵ�"] = "pawn surcoat13",
["��ɽ�Ǵ�"] = "pawn surcoat11",
["�󴨶Ǵ�"] = "pawn surcoat12",
["��Ԩ�Ǵ�"] = "pawn surcoat10",
["ܽ�ضǴ�"] = "pawn surcoat9",
["�׺��Ǵ�"] = "pawn surcoat18",
["�����Ǵ�"] = "pawn surcoat17",

["Ѫնͷ��"] = "pawn helmet15",
["����ͷ��"] = "pawn helmet16",
["��ͼͷ��"] = "pawn helmet14",
["����ͷ��"] = "pawn helmet13",
["����ͷ��"] = "pawn helmet11",
["����ͷ��"] = "pawn helmet12",
["���ͷ��"] = "pawn helmet10",
["��âͷ��"] = "pawn helmet18",
["����ͷ��"] = "pawn helmet17",

}

--liaotian
function liaotian_start()
	Common_AddCustomerTrigger("liaotian1", "liaotian1","^(?P<front>.*)����", "/liaotian_get(\"%<front>\")")
	--Common_AddCustomerTrigger("liaotian2", "liaotian1","^(?P<npcname>.*)��������йء��ⶾ������Ϣ��", "/liaotian_jiedugetname(\"%<npcname>\")")
	--Common_AddCustomerTrigger("liaotian3", "liaotian1","^(?P<npcname>.*)��������йء�jiedu������Ϣ��", "/liaotian_jiedugetname(\"%<npcname>\")")
	-- Common_AddCustomerTrigger("liaotian4", "liaotian1","^(?P<npcname>.*)��������йء��⺮��������Ϣ��", "/liaotian_jiehandugetname(\"%<npcname>\")")
	-- Common_AddCustomerTrigger("liaotian5", "liaotian1","^(?P<npcname>.*)��������йء�jiehandu������Ϣ��", "/liaotian_jiehandugetname(\"%<npcname>\")")
	-- Common_AddCustomerTrigger("liaotian6", "liaotian1","^(?P<npcname>.*)��������йء����ˡ�����Ϣ��", "/liaotian_healgetname(\"%<npcname>\")")
	-- Common_AddCustomerTrigger("liaotian7", "liaotian1","^(?P<npcname>.*)��������йء�heal������Ϣ��", "/liaotian_healgetname(\"%<npcname>\")")
	
	Common_AddCustomerTrigger("liaotian8", "liaotian1","^(?P<front>.*)����(?P<obj>.*)", "/liaotian_saveobj(\"%<front>\",\"%<obj>\")")
	Common_AddCustomerTrigger("liaotian9", "liaotian1","^(?P<front>.*)����(.*?)��ת��", "/liaotian_putjindan(\"%<front>\")")

	--Common_AddCustomerTrigger("liaotian12", "liaotian1","^(?P<npcname>.*)��������йء�all������Ϣ��", "/liaotian_asmekall()")
	
	--Common_AddCustomerTrigger("liaotian13", "liaotian1","^(?P<npcname>.*)��������йء�long������Ϣ��", "/liaotian_asklong(\"%<npcname>\")")
	--Common_AddCustomerTrigger("liaotian14", "liaotian1","^(?P<npcname>.*)��������йء���������Ϣ��", "/liaotian_asklong(\"%<npcname>\")")
	
	Common_AddCustomerTrigger("liaotian51", "liaotian2","^(?P<npcname>.*)=(?P<npcid>.*)$", "/liaotian_getid(\"%<npcname>\",\"%<npcid>\")")
	Common_AddCustomerTrigger("liaotian52", "liaotian2","^���Լ�Ϊʦ��������....����û���á�", "/liaotian_start()")

	--Common_AddCustomerTrigger("liaotian101", "liaotian3","^������ҥ�ԡ�ĳ�ˣ�(?P<npcname>.*)�õ�һ��ǧ���������", "/liaotian_killlong()")
	Common_AddCustomerTrigger("liaotian102", "liaotian3","^���������ŵı����ķ����³���һ�ڱ�ɫ��Ѫҹ!!�⿪�����ϵĶ���!", "/liaotian_sayjiedu()")
	Common_AddCustomerTrigger("liaotian103", "liaotian3","^���������������ڹ�������������(.*?)���ģ������ؽ���������", "/liaotian_sayjiehandu()")
	Common_AddCustomerTrigger("liaotian104", "liaotian3","^�Է�û�����ˣ�����Ҫ�������ơ�", "/liaotian_saynoheal()")
	Common_AddCustomerTrigger("liaotian105", "liaotian3","^ֻ����ĬĬ��ת������������������һ������ͷ������ð��������Ȼʩչ��", "/liaotian_sayheal()")
	Common_AddCustomerTrigger("liaotian106", "liaotian3","^�����ڵ��������㣬����ʩչ��������������", "/liaotian_noneili()")
	Common_AddCustomerTrigger("liaotian107", "liaotian3","^�Է�������������", "/liaotian_targetnoneili()")
	Common_AddCustomerTrigger("liaotian108", "liaotian3","^����û��(?P<txt>.*)", "/liaotian_notarget(\"%<txt>\")")
	
	Common_AddCustomerTrigger("liaotian151", "liaotian4","^�����Ǳ���ʱ��(?P<time>.*)��", "/liaotian_killlongbjtime(\"%<time>\")")
	Common_AddCustomerTrigger("liaotian152", "liaotian4","^����III�Ѿ�ִ����(?P<time>.*)��", "/liaotian_killlonghytime(\"%<time>\")")
	Common_AddCustomerTrigger("liaotian153", "liaotian4","^���Լ�Ϊʦ��������....����û���á�", "/liaotian_start()")
	
	--Common_AddCustomerTrigger("liaotian201", "liaotian5","^(?P<target>.*)\\((?P<targetid>.*)\\)�����㣺ҩ�Թ���", "/liaotian_checkjindan(\"%<target>\",\"%<targetid>\")")
	--Common_AddCustomerTrigger("liaotian202", "liaotian5","^(?P<target>.*)\\((?P<targetid>.*)\\)�����㣺give me jin dan", "/liaotian_givejindan(\"%<target>\",\"%<targetid>\")")
	
	Common_AddCustomerTrigger("liaotian252", "liaotian6","^      ��ת��", "/liaotian_hasjindan()")
	Common_AddCustomerTrigger("liaotian253", "liaotian6","^���Լ�Ϊʦ��������....����û���á�", "/liaotian_hasnojindan()")
	Common_AddCustomerTrigger("liaotian254", "liaotian6","�Ż���¶��", "/Common_Gag()",17444)
	Common_AddCustomerTrigger("liaotian255", "liaotian6","�����˵�", "/Common_Gag()",17444)
	Common_AddCustomerTrigger("liaotian256", "liaotian6","�쾦���", "/Common_Gag()",17444)
	Common_AddCustomerTrigger("liaotian257", "liaotian6","������", "/Common_Gag()",17444)
	
	Common_AddCustomerTrigger("liaotian301", "liaotian7","^������û������������", "/liaotian_nojindan()")
	Common_AddCustomerTrigger("liaotian302", "liaotian7","^�����������������ˡ�", "/liaotian_nojindan()")
	Common_AddCustomerTrigger("liaotian303", "liaotian7","^����鲼�����ó�һ�ž�ת�𵤡�", "/liaotian_start()")

	Common_AddCustomerTrigger("liaotian351", "liaotian8","^��Ҫ��˭ʲô�£�", "/liaotian_nobusy()")

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
	Common_SendToWorld("say "..objname.."�Ķ��Ѿ����ˡ�")
	EnableTriggerGroup("liaotian8",true)
	EnableTimer("liaotian1", true)
end

function liaotian_sayheal()
	Common_SendToWorld("say "..objname.."���˺���")
	EnableTriggerGroup("liaotian8",true)
	EnableTimer("liaotian1", true)
end

function liaotian_sayjiehandu()
	Common_SendToWorld("say "..objname.."�ĺ����Ѿ����ˡ�")
	EnableTriggerGroup("liaotian8",true)
	EnableTimer("liaotian1", true)
end

function liaotian_saynoheal()
	Common_SendToWorld("say "..objname.."û�����ˣ�����Ҫ�������ơ�")
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
	if txt == "��" then
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
	--Common_SendToWorld("sorry;say ��ʱ���ṩ�˽ⶾ����")
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
	Common_SendToWorld("say �ϴ�ɱ��ʱ�䣺����ʱ��"..GetVariable("killlongbjtime").."������ʱ��"..GetVariable("killlonghytime"))
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
	--Common_SendToWorld("sorry;say ��ʱ���ṩ�˽ⶾ����")
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
		Common_SendToWorld("say ���������ѯ�ʹ��� �� long ����Ϣ��")
	else
		Common_SendToWorld("say ���������ѯ�ʹ��� �� �ⶾ �⺮�� ���� long jiedu jiehandu heal ����Ϣ��")
		--Common_SendToWorld("say ���������ѯ�ʹ��� �� �ⶾ �⺮�� long jiedu jiehandu ����Ϣ��")
	end
	DoAfterSpecial (1,"/liaotian_start()",10)
end

function liaotian_noneili()
	Common_SendToWorld("say û�����ˣ�Ҫ��һ��ָ���")
	DoAfterSpecial (1,"/liaotian_start()",10)
end

function liaotian_targetnoneili()
	Common_SendToWorld("say "..objname.."û�����ˣ����ܽ⺮����")	
	--Common_SendToWorld ("remove all;enable force biyun-xinfa;wear all")
	DoAfterSpecial (1,"/liaotian_start()",10)
end

function liaotian_notarget(txt)
	if txt == "����ˡ�" then
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
--�����Ϻ��Զ�Robot
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

--�������ߺ�
function  liaotian_OnReconnect()
	liaotian_DisableAll()
	liaotian_start()
	--DoAfterSpecial (1,"/liaotian_min()",10)
end

--����̫��
function liaotian_TooManyCommand()

end

--����
function liaotian_OnEvent()
	liaotian_DisableAll()
	world.Disconnect()
end