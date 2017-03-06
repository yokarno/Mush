require("hy.common.cmd")
require("hy.common.common")

hasling = 0

function stepwalking_start()
	Common_AddCustomerAlias("pfmkill_alias", "pfmkill", "perform parry.yin")
	
	Common_AddCustomerTrigger("stepwalking1", "stepwalking1","^(?P<front>.*)只能对战斗中的对手使用。", "/stepwalking_stepnofight(\"%<front>\")")
	Common_AddCustomerTrigger("stepwalking2", "stepwalking1","^(?P<front>.*)只能在战斗中使用。", "/stepwalking_stepnofight(\"%<front>\")")
	Common_AddCustomerTrigger("stepwalking3", "stepwalking1","^(?P<front>.*)只能在战斗中对对手使用。", "/stepwalking_stepnofight(\"%<front>\")")
	Common_AddCustomerTrigger("stepwalking4", "stepwalking1","^(?P<front>.*)只能对对手使用。", "/stepwalking_stepnofight(\"%<front>\")")
	Common_AddCustomerTrigger("stepwalking5", "stepwalking1","^你要对谁施展这一招(?P<front>.*)", "/stepwalking_stepnofight(\"%<front>\")")


	--关外去
	Common_AddCustomerTrigger("stepwalking_goguanwai1", "stepwalking_goguanwai","^你见江面结冻，便壮起胆子踩冰而过", "/stepwalking_guanwaibing()")
	Common_AddCustomerTrigger("stepwalking_goguanwai2", "stepwalking_goguanwai","^船厂里走出一个船夫，瞪着眼看着你。冰面化冻，还是乘船吧！", "/stepwalking_guanwaiboat()")
	Common_AddCustomerTrigger("stepwalking_goguanwai3", "stepwalking_goguanwai","^船夫在旁边拿眼瞪着你看。冰面化冻，还是乘船吧！", "/stepwalking_guanwaiboat()")
	Common_AddCustomerTrigger("stepwalking_goguanwai4", "stepwalking_goguanwai","^大门坎子 - northeast、west", "/stepwalking_NextGo()")

	--关外回
	Common_AddCustomerTrigger("stepwalking_guanwaireturn1", "stepwalking_guanwaireturn","^你见江面结冻，便壮起胆子踩冰而过", "/stepwalking_guanwaireturnbing()")
	Common_AddCustomerTrigger("stepwalking_guanwaireturn2", "stepwalking_guanwaireturn","^坎后走出一个船夫，站在边上瞪着眼看着你。冰面化冻，还是乘船吧！", "/stepwalking_guanwaireturnboat()")
	Common_AddCustomerTrigger("stepwalking_guanwaireturn3", "stepwalking_guanwaireturn","^船夫在旁边拿眼瞪着你看。冰面化冻，还是乘船吧！", "/stepwalking_guanwaireturnboat()")
	Common_AddCustomerTrigger("stepwalking_guanwaireturn4", "stepwalking_guanwaireturn","^船厂 - east、south", "/stepwalking_NextReturn()")

	--台湾去
	Common_AddCustomerTrigger("stepwalking_gotaiwan1", "stepwalking_gotaiwan","^大船终于抵达了大海中一个大岛屿。你走下船来。", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gotaiwan2", "stepwalking_gotaiwan","^战舟终于抵达了台湾的一个破败城市。你走下船来。", "/stepwalking_NextGo()")

	--台湾回
	Common_AddCustomerTrigger("stepwalking_taiwanreturn1", "stepwalking_taiwanreturn","^大船终于抵达了中原的一个繁华城市。你走下船来", "/stepwalking_NextReturn()")
	Common_AddCustomerTrigger("stepwalking_taiwanreturn2", "stepwalking_taiwanreturn","^兵舟终于抵达了海峡中一个大岛。你走下船来。", "/stepwalking_NextReturn()")

	--归云庄去
	Common_AddCustomerTrigger("stepwalking_goguiyun1", "stepwalking_goguiyun","^你吸了口气，一声“船家”，声音中正平和地远远传了出去", "/stepwalking_guiyunyellboat()")
	Common_AddCustomerTrigger("stepwalking_goguiyun2", "stepwalking_goguiyun","^艄公说“到啦，上岸吧”，随即把一块踏脚板搭上堤岸", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goguiyun3", "stepwalking_goguiyun","^艄公轻声说道：“都下船吧，我", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goguiyun4", "stepwalking_goguiyun","^这里没有这个人", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goguiyun5", "stepwalking_goguiyun","^你向家丁打听有关『all』的消息。", "/stepwalking_guiyundokill()")

	--归云庄回
	Common_AddCustomerTrigger("stepwalking_guiyunreturn1", "stepwalking_guiyunreturn","^你吸了口气，一声“船家”，声音中正平和地远远传了出去", "/stepwalking_guiyunreturnyellboat()")
	Common_AddCustomerTrigger("stepwalking_guiyunreturn2", "stepwalking_guiyunreturn","^艄公说“到啦，上岸吧”，随即把一块踏脚板搭上堤岸", "/stepwalking_NextReturn()")
	Common_AddCustomerTrigger("stepwalking_guiyunreturn3", "stepwalking_guiyunreturn","^艄公轻声说道：“都下船吧，我", "/stepwalking_NextReturn()")

	--桃花岛坐船
	Common_AddCustomerTrigger("stepwalking_gotaohuachuan1", "stepwalking_gotaohuachuan","^这里没有这个人", "/stepwalking_gotaohuanochuanfu()")
	Common_AddCustomerTrigger("stepwalking_gotaohuachuan2", "stepwalking_gotaohuachuan","^你向老船夫打听有关『出海』的消息。", "/stepwalking_gotaohuachuan()")
		
	--去桃花岛
	Common_AddCustomerTrigger("stepwalking_gotaohua1", "stepwalking_gotaohua","^大船终于停在了一个小岛边。你走下船来。", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gotaohua2", "stepwalking_gotaohua","^桃花迷阵 - north、south", "/stepwalking_gotaohuanmizhen()")
	Common_AddCustomerTrigger("stepwalking_gotaohua3", "stepwalking_gotaohua","^突然一阵桃花瓣象雨点般疾射你", "/stepwalking_gotaohuanmizhen()")
	Common_AddCustomerTrigger("stepwalking_gotaohua4", "stepwalking_gotaohua","^试剑亭 - north、south", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gotaohua5", "stepwalking_gotaohua","^这里没有这个人", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gotaohua6", "stepwalking_gotaohua","^你向哑仆打听有关『all』的消息。", "/stepwalking_gotaohuadokill()")

	--桃花岛返回
	Common_AddCustomerTrigger("stepwalking_taohuareturn3", "stepwalking_taohuareturn","^桃花迷阵 - north、south", "/stepwalking_taohuareturnmizhen()")
	Common_AddCustomerTrigger("stepwalking_taohuareturn1", "stepwalking_taohuareturn","^突然一阵桃花瓣象雨点般疾射你", "/stepwalking_taohuareturnmizhen()")
	Common_AddCustomerTrigger("stepwalking_taohuareturn2", "stepwalking_taohuareturn","^试剑亭 - north、south", "/stepwalking_NextReturn()")


	--去青城山
	Common_AddCustomerTrigger("stepwalking_goqingcheng1", "stepwalking_goqingcheng","^这里没有这个人", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goqingcheng2", "stepwalking_goqingcheng","^你向于人豪打听有关『all』的消息。", "/stepwalking_goqingchengdokill()")

	--万劫谷去
	Common_AddCustomerTrigger("stepwalking_gowanjiegu1", "stepwalking_gowanjiegu","^澜沧江畔 - east、westup", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gowanjiegu2", "stepwalking_gowanjiegu","^你在桥上晃了一下", "/stepwalking_gowanjiegubridge()")
	Common_AddCustomerTrigger("stepwalking_gowanjiegu3", "stepwalking_gowanjiegu","^你在桥上一晃", "/stepwalking_gowanjiegubridge()")

	--万劫谷回
	Common_AddCustomerTrigger("stepwalking_wanjiegureturn1", "stepwalking_wanjiegureturn","^善人渡 - east、west", "/stepwalking_NextReturn()")
	Common_AddCustomerTrigger("stepwalking_wanjiegureturn2", "stepwalking_wanjiegureturn","^你在桥上晃了一下", "/stepwalking_wanjiegureturnbridge()")
	Common_AddCustomerTrigger("stepwalking_wanjiegureturn3", "stepwalking_wanjiegureturn","^你在桥上一晃", "/stepwalking_wanjiegureturnbridge()")

	--扬州衙门去
	Common_AddCustomerTrigger("stepwalking_goyangzhouyamen1", "stepwalking_goyangzhouyamen","^你向衙役打听有关『all』的消息。", "/stepwalking_goyangzhouyamen()")
	Common_AddCustomerTrigger("stepwalking_goyangzhouyamen2", "stepwalking_goyangzhouyamen","^你想拜谁为师", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goyangzhouyamen3", "stepwalking_goyangzhouyamen","^这里没有这个人", "/stepwalking_NextGo()")

	--扬州衙门回
	Common_AddCustomerTrigger("stepwalking_yangzhouyamenreturn1", "stepwalking_yangzhouyamenreturn","^【衙门大门】", "/stepwalking_NextReturn()")
	Common_AddCustomerTrigger("stepwalking_yangzhouyamenreturn2", "stepwalking_yangzhouyamenreturn","^【衙门正厅】", "/stepwalking_yangzhouyamenreturnzhengting()")
	Common_AddCustomerTrigger("stepwalking_yangzhouyamenreturn3", "stepwalking_yangzhouyamenreturn","^【内宅】", "/stepwalking_yangzhouyamenreturnneizhai()")
	
	--去雪山 
	Common_AddCustomerTrigger("stepwalking_goxueshan1", "stepwalking_goxueshan","^只见大片的积雪从山峰上奔腾而下", "/stepwalking_goxueshanshanbeng()")
	Common_AddCustomerTrigger("stepwalking_goxueshan2", "stepwalking_goxueshan","^大雪山山谷 - ", "/stepwalking_NextGo()")

	--去雪山寺
	Common_AddCustomerTrigger("stepwalking_goxueshansi1", "stepwalking_goxueshansi","^这里没有这个人", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goxueshansi3", "stepwalking_goxueshansi","^你向守寺僧兵打听有关『all』的消息。", "/stepwalking_goxueshansidokill()")

	--去白驼
	Common_AddCustomerTrigger("stepwalking_gobaituo1", "stepwalking_gobaituo","^这里没有这个人", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gobaituo2", "stepwalking_gobaituo","^你向门卫打听有关『all』的消息。", "/stepwalking_gobaituodokill()")
	Common_AddCustomerTrigger("stepwalking_gobaituo3", "stepwalking_gobaituo","^你向山贼头打听有关『all』的消息。", "/stepwalking_gobaituodokillshanzei()")
	Common_AddCustomerTrigger("stepwalking_gobaituo4", "stepwalking_gobaituo","^你向蟒蛇打听有关『all』的消息", "/stepwalking_gobaituodokillshe()")

	--白驼回
	Common_AddCustomerTrigger("stepwalking_baituoreturn1", "stepwalking_baituoreturn","^这里没有这个人", "/stepwalking_NextReturn()")
	Common_AddCustomerTrigger("stepwalking_baituoreturn3", "stepwalking_baituoreturn","^你向门卫打听有关『all』的消息。", "/stepwalking_baituoreturndokill()")

	--去峨嵋华藏庵
	Common_AddCustomerTrigger("stepwalking_goemhuacang1", "stepwalking_goemhuacang","^你向静心师太打听有关『all』的消息。", "/stepwalking_goemhuacangdokill()")
	Common_AddCustomerTrigger("stepwalking_goemhuacang2", "stepwalking_goemhuacang","^这里没有这个人", "/stepwalking_NextGo()")

	--峨嵋华藏庵返回
	Common_AddCustomerTrigger("stepwalking_emhuacangreturn1", "stepwalking_emhuacangreturn","^【华藏庵正殿】 - ", "/stepwalking_NextReturn()")
	Common_AddCustomerTrigger("stepwalking_emhuacangreturn2", "stepwalking_emhuacangreturn","^【储物间】 - ", "/stepwalking_emhuacangreturnnohuacang()")
	Common_AddCustomerTrigger("stepwalking_emhuacangreturn3", "stepwalking_emhuacangreturn","^【藏经阁】 - ", "/stepwalking_emhuacangreturnnohuacang()")

	--去峨嵋寝宫
	Common_AddCustomerTrigger("stepwalking_goemqingong1", "stepwalking_goemqingong","^你向宋青书打听有关『all』的消息。", "/stepwalking_goemqingongdokill()")
	Common_AddCustomerTrigger("stepwalking_goemqingong2", "stepwalking_goemqingong","^这里没有这个人", "/stepwalking_NextGo()")

	--去灵州一品堂
	Common_AddCustomerTrigger("stepwalking_golingzhou1", "stepwalking_golingzhou","^这里没有这个人", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_golingzhou2", "stepwalking_golingzhou","^你向(.*?)打听有关『all』的消息。", "/stepwalking_golingzhoudokill()")

	--去唐门
	Common_AddCustomerTrigger("stepwalking_gotangmen1", "stepwalking_gotangmen","^你吸了口气，一声“船家”，声音中正平和地远远传了出去", "/stepwalking_tangmenyellboat()")
	Common_AddCustomerTrigger("stepwalking_gotangmen2", "stepwalking_gotangmen","^唐菱说道“到啦，上岸吧”，随即把一块踏脚板搭上堤岸。", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gotangmen3", "stepwalking_gotangmen","^唐菱轻声说道：“都下船吧，我", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gotangmen4", "stepwalking_gotangmen","^这里没有这个人", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gotangmen5", "stepwalking_gotangmen","^你向(.*?)打听有关『all』的消息。", "/stepwalking_tangmendokill()")
	
	--唐门回
	Common_AddCustomerTrigger("stepwalking_tangmenreturn1", "stepwalking_tangmenreturn","^你吸了口气，一声“船家”，声音中正平和地远远传了出去", "/stepwalking_tangmenreturnyellboat()")
	Common_AddCustomerTrigger("stepwalking_tangmenreturn2", "stepwalking_tangmenreturn","^艄公说“到啦，上岸吧”，随即把一块踏脚板搭上堤岸", "/stepwalking_NextReturn()")
	Common_AddCustomerTrigger("stepwalking_tangmenreturn3", "stepwalking_tangmenreturn","^唐菱轻声说道：“都下船吧，我", "/stepwalking_NextReturn()")

	--唐门判断正气
	Common_AddCustomerTrigger("stepwalking_gotangmenshen1", "stepwalking_gotangmenshen","^无名居士既不属於任何门派，也没有开山立派，不能拜师", "/stepwalking_tangmenshen()")
	
	--扬州崔员外
	Common_AddCustomerTrigger("stepwalking_goyangzhoucui1", "stepwalking_goyangzhoucui","^这里没有这个人", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goyangzhoucui2", "stepwalking_goyangzhoucui","^你向(.*?)打听有关『all』的消息。", "/stepwalking_yangzhoucuidokill()")

	--去洛阳王家
	Common_AddCustomerTrigger("stepwalking_goluoyangwangjia1", "stepwalking_goluoyangwangjia","^这里没有这个人", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goluoyangwangjia2", "stepwalking_goluoyangwangjia","^你向(.*?)打听有关『all』的消息。", "/stepwalking_goluoyangwangjiadokill()")

	--去雁荡
	Common_AddCustomerTrigger("stepwalking_goyandang1", "stepwalking_goyandang","^这里没有这个人", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goyandang2", "stepwalking_goyandang","^你向(.*?)打听有关『all』的消息。", "/stepwalking_goyandangdokill()")

	--去天山阿凡提
	Common_AddCustomerTrigger("stepwalking_gotianshan1", "stepwalking_gotianshan","^这里没有这个人", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gotianshan2", "stepwalking_gotianshan","^你向(.*?)打听有关『all』的消息。", "/stepwalking_gotianshandokill()")

	--去景德镇
	Common_AddCustomerTrigger("stepwalking_gojingdezhen1", "stepwalking_gojingdezhen","^街道 - east、north、south", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gojingdezhen2", "stepwalking_gojingdezhen","^树林 - east、north、southwest", "/stepwalking_gojingdezhenshulin()")

	--景德镇回
	Common_AddCustomerTrigger("stepwalking_jingdezhenreturn1", "stepwalking_jingdezhenreturn","^树林 - east、north、southwest", "/stepwalking_jingdezhenreturnshulin()")
	Common_AddCustomerTrigger("stepwalking_jingdezhenreturn2", "stepwalking_jingdezhenreturn","^延庆观 - east、north、southwest、west", "/stepwalking_NextGo()")

	--去燕京
	Common_AddCustomerTrigger("stepwalking_goyanjing1", "stepwalking_goyanjing","^这里没有这个人", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goyanjing2", "stepwalking_goyanjing","^你向(.*?)打听有关『all』的消息。", "/stepwalking_goyanjingdokill()")

	--去高昌城
	Common_AddCustomerTrigger("stepwalking_gogaochangcheng1", "stepwalking_gogaochangcheng","^戈壁 - east、west", "/stepwalking_gogaochangchenggebi()")
	Common_AddCustomerTrigger("stepwalking_gogaochangcheng2", "stepwalking_gogaochangcheng","^小路 - east、west", "/stepwalking_NextGo()")

	--高昌城返回
	Common_AddCustomerTrigger("stepwalking_gaochangchengreturn1", "stepwalking_gaochangchengreturn","^戈壁 - east、west", "/stepwalking_gaochangchengreturngebi()")
	Common_AddCustomerTrigger("stepwalking_gaochangchengreturn2", "stepwalking_gaochangchengreturn","^火焰山 - east、west", "/stepwalking_NextReturn()")

	--去昆明王府
	Common_AddCustomerTrigger("stepwalking_gokunming1", "stepwalking_gokunming","^这里没有这个人", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gokunming2", "stepwalking_gokunming","^你向(.*?)打听有关『all』的消息。", "/stepwalking_gokunmingdokill()")
	
	--去明教
	Common_AddCustomerTrigger("stepwalking_gomingjiao1", "stepwalking_gomingjiao","^你一不小心脚下踏了个空", "/stepwalking_gomingjiaopaifang()")
	Common_AddCustomerTrigger("stepwalking_gomingjiao2", "stepwalking_gomingjiao","^栈道 - northup、southdown", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gomingjiao3", "stepwalking_gomingjiao","^青石阶 - eastdown、westup", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gomingjiao4", "stepwalking_gomingjiao","^大汉拦住你说道：(.*?)请放下兵刃", "/stepwalking_gomingjiaoweapon()")

	--去泰山
	Common_AddCustomerTrigger("stepwalking_gotaishan1", "stepwalking_gotaishan","^你一不小心脚下踏了个空", "/stepwalking_gotaishanlongmen()")
	Common_AddCustomerTrigger("stepwalking_gotaishan2", "stepwalking_gotaishan","^龙门 - northup、southdown", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gotaishan3", "stepwalking_gotaishan","^你向天门道人打听有关『all』的消息。", "/stepwalking_gotaishandokill()")
	Common_AddCustomerTrigger("stepwalking_gotaishan4", "stepwalking_gotaishan","^这里没有这个人", "/stepwalking_NextGo()")

	--去华山
	Common_AddCustomerTrigger("stepwalking_gohuashan1", "stepwalking_gohuashan","^你向高根明打听有关『all』的消息。", "/stepwalking_gohuashandokill()")
	Common_AddCustomerTrigger("stepwalking_gohuashan2", "stepwalking_gohuashan","^这里没有这个人", "/stepwalking_NextGo()")

	--去少林
	Common_AddCustomerTrigger("stepwalking_goshaolin1", "stepwalking_goshaolin","^你向虚(.*?)打听有关『all』的消息。", "/stepwalking_goshaolindokill()")
	Common_AddCustomerTrigger("stepwalking_goshaolin2", "stepwalking_goshaolin","^这里没有这个人", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goshaolin3", "stepwalking_goshaolin","^虚通拦住你说道：这位(.*?)请放下兵刃", "/stepwalking_goshaolinweapon()")
	Common_AddCustomerTrigger("stepwalking_goshaolin4", "stepwalking_goshaolin","^虚明迈步挡在你身前，双手合什说道：阿弥陀佛，(.*?)请收起", "/stepwalking_goshaolinweapon()")
	Common_AddCustomerTrigger("stepwalking_goshaolin5", "stepwalking_goshaolin","^你资格不够，不能进入方丈室。", "/stepwalking_goshaolinnofangzhang()")
	Common_AddCustomerTrigger("stepwalking_goshaolin6", "stepwalking_goshaolin","^方丈室 - ", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goshaolin7", "stepwalking_goshaolin","^石阶 - northup、westdown", "/stepwalking_NextGo()")

	--取令
	Common_AddCustomerTrigger("stepwalking_goshaolinling1", "stepwalking_goshaolinling","^(?P<ling>.*) ：(.*?)少林英雄令(.*?)银：", "/stepwalking_redeemling(\"%<ling>\")")
	Common_AddCustomerTrigger("stepwalking_goshaolinling3", "stepwalking_goshaolinling","^香菱既不属於任何门派，也没有开山立派，不能拜师", "/stepwalking_noling()")
	Common_AddCustomerTrigger("stepwalking_goshaolinling4", "stepwalking_goshaolinling","^这里没有这个人", "/stepwalking_noseng()")
	Common_AddCustomerTrigger("stepwalking_goshaolinling5", "stepwalking_goshaolinling","^托钵僧给你", "/stepwalking_hasseng()")

	--去嵩山
	Common_AddCustomerTrigger("stepwalking_gosongshan1", "stepwalking_gosongshan","^你奋力一跃，却离瀑布顶还有一丈多远，看来是白费力气。", "/stepwalking_sjcyup()")
	Common_AddCustomerTrigger("stepwalking_gosongshan2", "stepwalking_gosongshan","^你使劲儿一蹦，离瀑布顶还有数丈远就掉了下来，摔的鼻青脸肿。", "/stepwalking_sjcyup()")
	Common_AddCustomerTrigger("stepwalking_gosongshan3", "stepwalking_gosongshan","^你纵身而起，离瀑布顶只差一点点了，再加把劲。", "/stepwalking_sjcyup()")
	Common_AddCustomerTrigger("stepwalking_gosongshan4", "stepwalking_gosongshan","^铁梁峡 - down、northup", "/stepwalking_NextGo()")		
	Common_AddCustomerTrigger("stepwalking_gosongshan5", "stepwalking_gosongshan","^这里没有这个人", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gosongshan6", "stepwalking_gosongshan","^你向乐厚打听有关『all』的消息。", "/stepwalking_gosongshandokill()")

	--去慕容
	Common_AddCustomerTrigger("stepwalking_gomurong1", "stepwalking_gomurong","^终于到了小岛边，船夫把小舟靠在岸边，快下船吧。", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gomurong2", "stepwalking_gomurong","^船夫把小舟靠在岸边，快下船吧。", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gomurong3", "stepwalking_gomurong","^终于到了岸边，船夫把小舟靠在岸边，快下船吧。", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gomurong4", "stepwalking_gomurong","^艄公轻声说道：“都下船吧，我", "/stepwalking_NextGo()")

	--慕容回
	Common_AddCustomerTrigger("stepwalking_murongreturn1", "stepwalking_murongreturn","^你吸了口气，一声“船家”，声音中正平和地远远传了出去", "/stepwalking_murongreturnyellboat()")
	Common_AddCustomerTrigger("stepwalking_murongreturn2", "stepwalking_murongreturn","^艄公说“到啦，上岸吧”，随即把一块踏脚板搭上堤岸", "/stepwalking_NextReturn()")
	Common_AddCustomerTrigger("stepwalking_murongreturn3", "stepwalking_murongreturn","^船夫把小舟靠在岸边，快下船吧。", "/stepwalking_NextReturn()")
	Common_AddCustomerTrigger("stepwalking_murongreturn4", "stepwalking_murongreturn","^艄公轻声说道：“都下船吧，我", "/stepwalking_NextReturn()")
	
	--丐帮去
	Common_AddCustomerTrigger("stepwalking_gogaibang1", "stepwalking_gogaibang","^你要给谁什么东西", "/stepwalking_gaibang()")
	
	--中条山去 买火折
	Common_AddCustomerTrigger("stepwalking_gozhongtiaoshan1", "stepwalking_gozhongtiaoshan","^哟，抱歉啊，我这儿正忙着呢……您请稍候。", "/stepwalking_zhongtiaoshanbuyfire()")
	Common_AddCustomerTrigger("stepwalking_gozhongtiaoshan2", "stepwalking_gozhongtiaoshan","^你从杨永福那里买下了一支火折。", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gozhongtiaoshan3", "stepwalking_gozhongtiaoshan","^你向(.*?)打听有关『all』的消息。", "/stepwalking_zhongtiaoshanbuyfire()")
	Common_AddCustomerTrigger("stepwalking_gozhongtiaoshan4", "stepwalking_gozhongtiaoshan","^这里没有这个人", "/stepwalking_zhongtiaoshannoYang()")

	--去康亲王府
	Common_AddCustomerTrigger("stepwalking_gokangqingwangfu1", "stepwalking_gokangqingwangfu","^这里没有这个人", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_gokangqingwangfu2", "stepwalking_gokangqingwangfu","^你向(.*?)打听有关『all』的消息。", "/stepwalking_gokangqingwangfudokill()")

	--慕容回
	Common_AddCustomerTrigger("stepwalking_kangqingwangfureturn1", "stepwalking_kangqingwangfureturn","^【康府大门】 -", "/stepwalking_kangqingwangfureturndamen()")
	Common_AddCustomerTrigger("stepwalking_kangqingwangfureturn2", "stepwalking_kangqingwangfureturn","^【康府大院】 -", "/stepwalking_kangqingwangfureturndayuan()")

	--去安南
	Common_AddCustomerTrigger("stepwalking_goannan1", "stepwalking_goannan","^你顺着踏脚板走上岸去", "/stepwalking_NextGo()")
	Common_AddCustomerTrigger("stepwalking_goannan2", "stepwalking_goannan","^大船终于抵达了安南。你走下船来。", "/stepwalking_NextGo()")
	
	--安南回
	Common_AddCustomerTrigger("stepwalking_annanreturn1", "stepwalking_annanreturn","^大船终于抵达了中国海南。你走下船来。", "/stepwalking_NextReturn()")
	Common_AddCustomerTrigger("stepwalking_annanreturn2", "stepwalking_annanreturn","^你顺着踏脚板走上岸去。", "/stepwalking_NextReturn()")
	
	--去济南
	Common_AddCustomerTrigger("stepwalking_gojinan1", "stepwalking_gojinan","^殷羡抱拳道：不可佩带兵刃进府", "uwi;s")
	Common_AddCustomerTrigger("stepwalking_gojinan2", "stepwalking_gojinan","^趵突桥 - north、south、southeast", "/stepwalking_NextGo()")
	
	--去梅庄
	Common_AddCustomerTrigger("stepwalking_gomeizhuang1", "stepwalking_gomeizhuang","^你走上前去将门上铜环敲了四下。出来一个家丁，将你直接领了进去。", "/stepwalking_gomeizhuangdizi()")
	Common_AddCustomerTrigger("stepwalking_gomeizhuang2", "stepwalking_gomeizhuang","^你走上前去将门上铜环敲了三下。", "/stepwalking_gomeizhuangnotdizi()")
	Common_AddCustomerTrigger("stepwalking_gomeizhuang3", "stepwalking_gomeizhuang","^大天井 - north、south", "/stepwalking_gomeizhuanggateopen()")
	
	--慕容包不同
	Common_AddCustomerTrigger("stepwalking_gomurongbao1", "stepwalking_gomurongbao","^包不同拦住你说道：(.*?)请放下兵刃。为了表示对姑俗慕容的景仰，请放下兵仞进入姑俗慕容。", "/stepwalking_gomurongbaoweapon()")
	Common_AddCustomerTrigger("stepwalking_gomurongbao2", "stepwalking_gomurongbao","^小径 - east、west", "/stepwalking_NextGo()")
	
	Common_AddCustomerTimer("stepwalking1", "stepwalking",0, 0, 1, "pfmkill")
	stepwalking_DisableAll()
end

function stepwalking_DisableAll()
	EnableTriggerGroup("stepwalking1", false)

	EnableTriggerGroup("stepwalking_goguanwai", false)
	EnableTriggerGroup("stepwalking_guanwaireturn", false)
	EnableTriggerGroup("stepwalking_gotaiwan", false)
	EnableTriggerGroup("stepwalking_taiwanreturn", false)
	EnableTriggerGroup("stepwalking_goguiyun", false)
	EnableTriggerGroup("stepwalking_guiyunreturn", false)
	EnableTriggerGroup("stepwalking_gotaohua", false)
	EnableTriggerGroup("stepwalking_gotaohuachuan", false)
	EnableTriggerGroup("stepwalking_taohuareturn", false)
	EnableTriggerGroup("stepwalking_goqingcheng", false)
	EnableTriggerGroup("stepwalking_gowanjiegu", false)
	EnableTriggerGroup("stepwalking_wanjiegureturn", false)
	EnableTriggerGroup("stepwalking_goyangzhouyamen", false)
	EnableTriggerGroup("stepwalking_yangzhouyamenreturn", false)
	EnableTriggerGroup("stepwalking_goxueshan", false)
	EnableTriggerGroup("stepwalking_goxueshansi", false)
	EnableTriggerGroup("stepwalking_gobaituo", false)
	EnableTriggerGroup("stepwalking_baituoreturn", false)
	EnableTriggerGroup("stepwalking_goemhuacang", false)
	EnableTriggerGroup("stepwalking_emhuacangreturn", false)
	EnableTriggerGroup("stepwalking_golingzhou", false)
	EnableTriggerGroup("stepwalking_gotangmen", false)
	EnableTriggerGroup("stepwalking_tangmenreturn", false)
	EnableTriggerGroup("stepwalking_gotangmenshen", false)
	EnableTriggerGroup("stepwalking_goyangzhoucui", false)
	EnableTriggerGroup("stepwalking_goyangzhoulichun", false)
	EnableTriggerGroup("stepwalking_goluoyangwangjia", false)
	EnableTriggerGroup("stepwalking_goyandang", false)
	EnableTriggerGroup("stepwalking_gotianshan", false)
	EnableTriggerGroup("stepwalking_gojingdezhen", false)
	EnableTriggerGroup("stepwalking_jingdezhenreturn", false)
	EnableTriggerGroup("stepwalking_goyanjing", false)
	EnableTriggerGroup("stepwalking_gogaochangcheng", false)
	EnableTriggerGroup("stepwalking_gaochangchengreturn", false)
	EnableTriggerGroup("stepwalking_gokunming", false)
	EnableTriggerGroup("stepwalking_gomingjiao", false)
	EnableTriggerGroup("stepwalking_gotaishan", false)
	EnableTriggerGroup("stepwalking_gohuashan", false)
	EnableTriggerGroup("stepwalking_goshaolin", false)
	EnableTriggerGroup("stepwalking_goshaolinling", false)
	EnableTriggerGroup("stepwalking_gosongshan", false)
	EnableTriggerGroup("stepwalking_gomurong", false)
	EnableTriggerGroup("stepwalking_murongreturn", false)
	EnableTriggerGroup("stepwalking_gogaibang", false)
	EnableTriggerGroup("stepwalking_gozhongtiaoshan", false)
	EnableTriggerGroup("stepwalking_gokangqingwangfu", false)
	EnableTriggerGroup("stepwalking_kangqingwangfureturn", false)
	EnableTriggerGroup("stepwalking_goannan", false)
	EnableTriggerGroup("stepwalking_annanreturn", false)
	EnableTriggerGroup("stepwalking_goemqingong", false)
	EnableTriggerGroup("stepwalking_gojinan", false)
	EnableTriggerGroup("stepwalking_gomeizhuang", false)
	EnableTriggerGroup("stepwalking_gomurongbao", false)
	
	EnableTimerGroup("stepwalking", false)
end

function stepwalking_stepnofight()
	if Common_FilterTxt(txt) == nil then
		return
	end 
	EnableTriggerGroup("stepwalking1", false)
	EnableTimer("stepwalking1",false)

	local killover = GetVariable("killover")
	Common_SendToWorld(killover)
end

function stepwalking_guanwaibing()
	Common_SendToWorld("e")
end

function stepwalking_guanwaiboat()
	Common_SendToWorld("give 1 gold to chuan fu")
	Common_SendToWorld("give 100 silver to chuan fu")
end

function stepwalking_guanwaireturnbing()
	Common_SendToWorld("w")
end

function stepwalking_guanwaireturnboat()
	Common_SendToWorld("give 1 gold to chuan fu")
	Common_SendToWorld("give 100 silver to chuan fu")
end


function stepwalking_guiyunyellboat()
	DoAfterSpecial(2,"yell boat;enter",10)
end

function stepwalking_guiyundokill()
	SetVariable("killover","/stepwalking_guiyundokill()")
	Common_SendToWorld("kill jia ding")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_guiyunreturnyellboat()
	DoAfterSpecial(2,"yell boat;enter",10)
end

function stepwalking_gotaohuachuan()
	local shimen = GetVariable("shimen")
	if string.find(shimen,"桃花岛") then
	else
		Common_SendToWorld("give 1 gold to lao chuanfu")
	end
	stepwalking_NextGo()
end

function stepwalking_gotaohuanochuanfu()
	stepwalking_DisableAll()
	DoAfterSpecial(2,  "/Common_SendToWorld(\"#3 w;n;n;#10 w;/stepwalking_TargetFail()\")"  , 10)
end

function stepwalking_gotaohuadokill()
	SetVariable("killover","/stepwalking_gotaohuadokill()")
	Common_SendToWorld("kill ya pu")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_gotaohuanmizhen()
	Common_SendToWorld("s")
end

function stepwalking_taohuareturnmizhen()
	Common_SendToWorld("s")
end

function stepwalking_goqingchengdokill()
	SetVariable("killover","/stepwalking_NextGo()")
	Common_SendToWorld("kill yu renhao")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_gowanjiegubridge()
	DoAfterSpecial(1, "wuwu;w", 10)
end

function stepwalking_wanjiegureturnbridge()
	DoAfterSpecial(1,"wuwu;e",10)
end

function stepwalking_goyangzhouyamen()
	local exp = tonumber(GetVariable("experi"))
	if exp > 2700000 then 
		SetVariable("killover","/stepwalking_goyangzhouyamen()")
		Common_SendToWorld("kill ya yi")
		EnableTriggerGroup("stepwalking1", true)
		EnableTimer("stepwalking1",true)
		return
	end
	
	SetVariable("jobstep",0)
	stepwalking_NextReturn()

end

function stepwalking_yangzhouyamenreturnzhengting()
	Common_SendToWorld("s;/stepwalking_NextReturn()")
end

function stepwalking_yangzhouyamenreturnneizhai()
	Common_SendToWorld("s;s;/stepwalking_NextReturn()")
end

function stepwalking_goxueshanshanbeng()
	Common_SendToWorld("su;wu;su")
end

function stepwalking_goxueshansidokill()
	SetVariable("killover","/stepwalking_goxueshansidokill()")
	Common_SendToWorld("kill seng bing")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_gobaituodokill()
	local zhengqi = tonumber(GetVariable("zhengqi"))
	if zhengqi > 0 then
		SetVariable("killover","/stepwalking_gobaituodokill()")
		Common_SendToWorld("kill men wei")
		EnableTriggerGroup("stepwalking1", true)
		EnableTimer("stepwalking1",true)
		return
	end
	stepwalking_NextGo()
end

function stepwalking_gobaituodokillshanzei()
	SetVariable("killover","/stepwalking_NextGo()")
	Common_SendToWorld("kill shanzei tou")
	EnableTriggerGroup("stepwalking1", true)	
	EnableTimer("stepwalking1",true)
end

function stepwalking_gobaituodokillshei()
	SetVariable("killover","/stepwalking_NextGo()")
	Common_SendToWorld("kill mang she")
	EnableTriggerGroup("stepwalking1", true)	
	EnableTimer("stepwalking1",true)
end

function stepwalking_baituoreturndokill()
	local zhengqi = tonumber(GetVariable("zhengqi"))
	if zhengqi > 0 then
		SetVariable("killover","/stepwalking_baituoreturndokill()")
		Common_SendToWorld("kill men wei")
		EnableTriggerGroup("stepwalking1", true)
		EnableTimer("stepwalking1",true)
		return
	end
	stepwalking_NextReturn()
end


function stepwalking_goemhuacangdokill()
	local exp = tonumber(GetVariable("experi"))
	if exp > 5000000 then 
		SetVariable("killover","/stepwalking_NextGo()")
		Common_SendToWorld("kill jingxin shitai")
		EnableTriggerGroup("stepwalking1", true)
		EnableTimer("stepwalking1",true)
		return
	end
	SetVariable("jobstep",0)
	stepwalking_NextReturn()
end

function stepwalking_goemqingongdokill()
	SetVariable("killover","/stepwalking_NextGo()")
	Common_SendToWorld("kill song qingshu")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_emhuacangreturnnohuacang()
	Common_SendToWorld("d;n;n;n;w;n;/stepwalking_NextReturn()")
end

function stepwalking_golingzhoudokill()
	SetVariable("killover","/stepwalking_golingzhoudokill()")
	Common_SendToWorld("kill wu shi")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_tangmenreturnyellboat()
	DoAfterSpecial(2,"yell boat;enter",10)
end

function stepwalking_tangmendokill()
	SetVariable("killover","/stepwalking_NextGo()")
	Common_SendToWorld("kill tang buping")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_tangmenyellboat()
	DoAfterSpecial(2,"yell boat;enter",10)
end

function stepwalking_tangmenshen()
	local zhengqi = tonumber(GetVariable("zhengqi"))
	if zhengqi > 0 then
		stepwalking_NextGo()
		return
	end
	stepwalking_OnTargetFail()
end

function stepwalking_yangzhoucuidokill()
	SetVariable("killover","/stepwalking_NextGo()")
	Common_SendToWorld("kill cui yuanwai")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_goluoyangwangjiadokill()
	SetVariable("killover","/stepwalking_goluoyangwangjiadokill()")
	Common_SendToWorld("kill zhuang han")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_goyandangdokill()
	SetVariable("killover","/stepwalking_goyandangdokill()")
	Common_SendToWorld("kill menwei")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_gotianshandokill()
	SetVariable("killover","/stepwalking_NextGo()")
	Common_SendToWorld("kill bayi")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)

end

function stepwalking_gojingdezhenshulin()
	Common_SendToWorld("n")
end

function stepwalking_jingdezhenreturnshulin()
	Common_SendToWorld("e")
end

function stepwalking_goyanjingdokill()
	SetVariable("killover","/stepwalking_goyanjingdokill()")
	Common_SendToWorld("kill qin bing")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_gogaochangchenggebi()
	Common_SendToWorld("e")
end

function stepwalking_gaochangchengreturngebi()
	Common_SendToWorld("w")
end

function stepwalking_gokunmingdokill()
	local exp = tonumber(GetVariable("experi"))
	if exp > 2700000 then 
		SetVariable("killover","/stepwalking_gokunmingdokill()")
		Common_SendToWorld("kill qin bing")
		EnableTriggerGroup("stepwalking1", true)
		EnableTimer("stepwalking1",true)
		return
	end
	SetVariable("jobstep",0)
	stepwalking_NextReturn()
end


function stepwalking_gomingjiaopaifang()
	DoAfterSpecial(1,"nu;enter;nu;nu",10)
end

function stepwalking_gomingjiaoweapon()
	Common_SendToWorld("uwi;wu;wi")
end

function stepwalking_gotaishanlongmen()
	DoAfterSpecial(1,"yj;yq;#4 nu;#2 n;nu;nu;n;n;nu;nu;wu;nu;n;n;wu;wu;n;n;nw;#4 nu",10)
end

function stepwalking_gotaishandokill()
	local exp = tonumber(GetVariable("experi"))
	if exp > 40000000 then 
		SetVariable("killover","/stepwalking_NextGo()")
		Common_SendToWorld("kill tianmen daoren")
		EnableTriggerGroup("stepwalking1", true)
		EnableTimer("stepwalking1",true)
		return
	end
	SetVariable("jobstep",0)
	stepwalking_NextReturn()
end

function stepwalking_gohuashandokill()
	SetVariable("killover","/stepwalking_NextGo()")
	Common_SendToWorld("kill gao genming")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_goshaolindokill()
	local xingbie = GetVariable("xingbie")
	if xingbie == "女" then
		SetVariable("killover","/stepwalking_goshaolindokill()")
		Common_SendToWorld("kill xu")
		EnableTriggerGroup("stepwalking1", true)
		EnableTimer("stepwalking1",true)
		return
	end
	stepwalking_NextGo()
end

function stepwalking_goshaolinweapon()
	Common_SendToWorld("uwi;eu;wi")
end

function stepwalking_redeemling(ling)
	EnableTriggerGroup("stepwalking_goshaolinling", false)
	Common_SendToWorld("redeem "..tonumber(ling))
	hasling = 1
	stepwalking_NextGo()
end

function stepwalking_noling()
	if hasling == 0 then 
		Common_SendToWorld("w;w;s;give 1 gold to tuobo seng")
		return
	end
	stepwalking_NextGo()
end

function stepwalking_noseng()
	Common_SendToWorld("n;n;/stepwalking_TargetFail()")
end

function stepwalking_hasseng()
	Common_SendToWorld("n;e;e;/stepwalking_NextGo()")
end

function stepwalking_goshaolinnofangzhang()
	SetVariable("jobstep",0)
	stepwalking_NextReturn()
end

function stepwalking_sjcyup()
	Common_SendToWorld("up")
end

function stepwalking_gosongshandokill()
	SetVariable("killover","/stepwalking_NextGo()")
	Common_SendToWorld("kill yao hou")
	EnableTriggerGroup("stepwalking1", true)
	EnableTimer("stepwalking1",true)
end

function stepwalking_murongreturnyellboat()
	DoAfterSpecial(2,"yell boat;enter",10)
end


function stepwalking_gaibang()
	local shimen = GetVariable("shimen")
	if string.find(shimen,"丐帮") then
		stepwalking_NextGo()
		return
	else
		stepwalking_TargetFail()
		return
	end
end

function stepwalking_zhongtiaoshanbuyfire()
	DoAfterSpecial(0.5,"buy fire",10)
end

function stepwalking_zhongtiaoshannoYang()
	stepwalking_DisableAll()
	stepwalking_TargetFail()
end

function stepwalking_gokangqingwangfudokill()
	local exp = tonumber(GetVariable("experi"))
	if exp > 2700000 then 
		SetVariable("killover","/stepwalking_gokangqingwangfudokill()")
		Common_SendToWorld("kill shi wei")
		EnableTriggerGroup("stepwalking1", true)
		EnableTimer("stepwalking1",true)
		return
	end
	SetVariable("jobstep",0)
	stepwalking_NextReturn()
end

function stepwalking_kangqingwangfureturndamen()
	Common_SendToWorld("#3 halt;/stepwalking_NextReturn()")
end

function stepwalking_kangqingwangfureturndayuan()
	Common_SendToWorld("#3 halt;s;/stepwalking_NextReturn()")
end

function stepwalking_gomeizhuangdizi()
	stepwalking_DisableAll()
	Common_SendToWorld("out;s;wd;n;/stepwalking_NextGo()")
end

function stepwalking_gomeizhuangnotdizi()
	stepwalking_DisableAll()
	Common_SendToWorld("#4 n;/stepwalking_NextGo()")
end

function stepwalking_gomeizhuanggateopen()
	stepwalking_DisableAll()
	Common_SendToWorld("#3 n;/stepwalking_NextGo()")
end

function stepwalking_gomurongbaoweapon()
	Common_SendToWorld("uwi;w;wi")
end

--================================================================
--stepwalking通用接口
--到达
function stepwalking_GoTarget()
	local State = GetVariable("currstats")
	if State == "" then 
		return
	end
	stepwalking_DisableAll()
	Common_SendToWorld("/"..State.."_OnGoTarget()")	
end

--返回
function stepwalking_TargetReturn()
	local State = GetVariable("currstats")
	if State == "" then 
		return
	end
	stepwalking_DisableAll()
	Common_SendToWorld("/"..State.."_OnTargetReturn()")	
end

--失败
function stepwalking_TargetFail()
	local State = GetVariable("currstats")
	if State == "" then 
		return
	end
	stepwalking_DisableAll()
	Common_SendToWorld("/"..State.."_OnTargetFail()")	
end

--分步走
function stepwalking_GoStep(where)
	hasling = 0
	EnableTriggerGroup("stepwalking_go"..where, true)
end

--分步回
function stepwalking_StepReturn(where)
	hasling = 0
	EnableTriggerGroup("stepwalking_"..where.."return", true)
end

--继续走
function stepwalking_NextGo()
	local State = GetVariable("currstats")
	if State == "" then 
		return
	end
	stepwalking_DisableAll()
	Common_SendToWorld("/"..State.."_OnNextGo()")	
end

--继续回
function stepwalking_NextReturn()
	local State = GetVariable("currstats")
	if State == "" then 
		return
	end
	stepwalking_DisableAll()
	Common_SendToWorld("/"..State.."_OnNextReturn()")	
end

--================================================================