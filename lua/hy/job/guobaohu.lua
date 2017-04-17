require("hy.common.common")
require("hy.common.stepwalking")
require("hy.common.cmd")
require("hy.xiuxi")    
        
guobaohupath_tbl = {
["�α�"] = {
	{
		["id"]="song bing",
		["GoPath"]={
		"e;n",
		},
		["ReturnPath"]={
		"s;w",
		},
		["����"]="����"
	},
	{
		["id"]="song bing",
		["GoPath"]={
		"e;e;e;n",
		},
		["ReturnPath"]={
		"s;w;w;w",
		},
		["����"]="����"
	},
	{
		["id"]="song bing",
		["GoPath"]={
		"w;w;w;n",
		},
		["ReturnPath"]={
		"s;e;e;e",
		},
		["����"]="����"
	},
	{
		["id"]="song bing",
		["GoPath"]={
		"#5 e",
		},
		["ReturnPath"]={
		"#5 w",
		},
		["����"]="����"
	},	
	{
		["id"]="song bing",
		["GoPath"]={
		"#5 w",
		},
		["ReturnPath"]={
		"#5 e",
		},
		["����"]="����"
	},	
	{
		["id"]="song bing",
		["GoPath"]={
		"#3 s;w",
		},
		["ReturnPath"]={
		"e;#3 n",
		},
		["����"]="����"
	},	
},

["ƫ��"] = {
	{
		["id"]="pian jiang",
		["GoPath"]={
		"#3 s;w",
		},
		["ReturnPath"]={
		"e;#3 n",
		},
		["����"]="����"
	},	
	{
		["id"]="pian jiang",
		["GoPath"]={
		"e;n;n;n",
		},
		["ReturnPath"]={
		"s;s;s;w",
		},
		["����"]="����"
	},
	{
		["id"]="pian jiang",
		["GoPath"]={
		"e;e;e;n",
		},
		["ReturnPath"]={
		"s;w;w;w",
		},
		["����"]="����"
	},
	{
		["id"]="pian jiang",
		["GoPath"]={
		"w;w;w;n",
		},
		["ReturnPath"]={
		"s;e;e;e",
		},
		["����"]="����"
	},
},
["�Խ�"] = {
	{
		["id"]="pi jiang",
		["GoPath"]={
		"#5 e",
		},
		["ReturnPath"]={
		"#5 w",
		},
		["����"]="����"
	},	
	{
		["id"]="pi jiang",
		["GoPath"]={
		"#5 w",
		},
		["ReturnPath"]={
		"#5 e",
		},
		["����"]="����"
	},	
	{
		["id"]="pi jiang",
		["GoPath"]={
		"e;n;n;n",
		},
		["ReturnPath"]={
		"s;s;s;w",
		},
		["����"]="����"
	},
},
["����"] = {
	{
		["id"]="zuo jiang",
		["GoPath"]={
		"#3 s;w",
		},
		["ReturnPath"]={
		"e;#3 n",
		},
		["����"]="����"
	},	
	{
		["id"]="zuo jiang",
		["GoPath"]={
		"e;n;n;n",
		},
		["ReturnPath"]={
		"s;s;s;w",
		},
		["����"]="����"
	},
	{
		["id"]="zuo jiang",
		["GoPath"]={
		"e;e;e;n",
		},
		["ReturnPath"]={
		"s;w;w;w",
		},
		["����"]="����"
	},
	{
		["id"]="zuo jiang",
		["GoPath"]={
		"w;w;w;n",
		},
		["ReturnPath"]={
		"s;e;e;e",
		},
		["����"]="����"
	},
},

["��ܽ"] = {
	{
		["id"]="guo fu",
		["GoPath"]={
		"w;w;s;s;s",
		},
		["ReturnPath"]={
		"n;n;n;e;e",
		},
		["����"]="����"
	},
},
["������"] = {
	{
		["id"]="lao xiansheng",
		["GoPath"]={
		"s;e",
		},
		["ReturnPath"]={
		"w;n",
		},
		["����"]="����"
	},
},

["����ϰ�"] = {
	{
		["id"]="shudian laoban",
		["GoPath"]={
		"w;w;n;n;w",
		},
		["ReturnPath"]={
		"e;s;s;e;e",
		},
		["����"]="����"
	},
},
["����ͨ"] = {
	{
		["id"]="wu santong",
		["GoPath"]={
		"w;w",
		},
		["ReturnPath"]={
		"e;e",
		},
		["����"]="����"
	},
},

["����"] = {
	{
		["id"]="tiejiang",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;e;e;s",
		},
		["ReturnPath"]={
		"n;w;w;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen gc;e;e;s",
		},
		["����"]="����"
	},
	{
		["id"]="tie jiang",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;hz;w;w;n;n;e",
		},
		["ReturnPath"]={
		"w;s;s;e;e;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen hz;w;n;n;e",
		},
		["����"]="����"
	},
},
["������"] = {
	{
		["id"]="zhu ziliu",
		["GoPath"]={
		"w;w;s",
		},
		["ReturnPath"]={
		"n;e;e",
		},
		["����"]="����"
	},
},
["��С��"] = {
	{
		["id"]="xiao er",
		["GoPath"]={
		"s;s;e",
		},
		["ReturnPath"]={
		"w;n;n",
		},
		["����"]="����"
	},
},
["����ʦ̫"] = {
	{
		["id"]="jingxuan shitai",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;em;em;s;wu;wu;wu;wu;su;su;su;sw;su;se;wu;su;sw",
		},
		["ReturnPath"]={
		"ne;nd;ed;nw;nd;ne;#3 nd;#4 ed;n;give 1 silver to ma fu;rideem;give 1 silver to ma fu;rideyz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen em;nw;nu;wu;sw;wu;sw;u;wu;wu;wu;wu;su;su;su;sw;su;se;wu;su;sw",
		},
		["����"]="����"
	},
},
["����ʦ̫"] = {
	{
		["id"]="jingzhao shitai",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;give 1 silver to ma fu;rideem;give 1 silver to ma fu;rideem;s;d;ne;ed;ne;ed;sd;se;se;ed;s;enter",
		},
		["ReturnPath"]={
		"out;n;wu;nw;nw;nu;wu;sw;wu;sw;up;n;give 1 silver to ma fu;rideem;give 1 silver to ma fu;rideyz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen em;se;ed;s;enter",
		},
		["����"]="����"
	},
},
["��Զ��"] = {
	{
		["id"]="song yuanqiao",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;#6 s;sw;nw;#3 w;wu;su;s",
		},
		["ReturnPath"]={
		"wd-gc;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen wd;s",
		},
		["����"]="�䵱"
	},
},
["Ī����"] = {
	{
		["id"]="mo shenggu",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;#6 s;sw;nw;#3 w;wu;su;e;e;su;su;sd;wu",
		},
		["ReturnPath"]={
		"ed;nu;nd;nd;w;w;nd;ed;#3 e;se;ne;#6 n;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen wd;e;e;su;su;sd;wu",
		},
		["����"]="�䵱"
	},
},
["½�˷�"] = {
	{
		["id"]="lu chengfeng",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;gc-gyz;yell boat;enter;/stepwalking_GoStep(\"guiyun\")",
		"out;n;ask jia ding about all;/stepwalking_GoStep(\"guiyun\")",
		"enter;n;e",
		},
		["ReturnPath"]={
		"w;s;out;s;yell boat;enter;/stepwalking_StepReturn(\"guiyun\")",
		"out;gyz-gc;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen gyz;yell boat;enter;/stepwalking_GoStep(\"guiyun\")",
		"out;n;ask jia ding about all;/stepwalking_GoStep(\"guiyun\")",
		"enter;n;e",
		},
		["����"]="����ׯ"
	},
},
["������"] = {
	{
		["id"]="han baoju",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;gc-gyz;yell boat;enter;/stepwalking_GoStep(\"guiyun\")",
		"out;n;ask jia ding about all;/stepwalking_GoStep(\"guiyun\")",
		"enter;n",
		},
		["ReturnPath"]={
		"s;out;s;yell boat;enter;/stepwalking_StepReturn(\"guiyun\")",
		"out;gyz-gc;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen gyz;yell boat;enter;/stepwalking_GoStep(\"guiyun\")",
		"out;n;ask jia ding about all;/stepwalking_GoStep(\"guiyun\")",
		"enter;n",
		},
		["����"]="����ׯ"
	},
},
["��ҩʦ"] = {
	{
		["id"]="huang yaoshi",
		["GoPath"]={
		"takeout 1 gold;e;e;n;n;n;w;n;yz;w;w;s;#10 e;s;s;#3 e;ask lao chuanfu about ����;/stepwalking_GoStep(\"taohuachuan\")",
		"/stepwalking_GoStep(\"taohua\")",
		"s;/stepwalking_GoStep(\"taohua\")",
		"s;s;s",
		},
		["ReturnPath"]={
		"s;s;s;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen thd;s;/stepwalking_GoStep(\"taohua\")",
		"s;s;s",
		},
		["����"]="�һ���"
	},
},
["��׺�"] = {
	{
		["id"]="yu canghai",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;#8 s;w;nw;w;sw;w;sw;sw;w;s;w;sw;#6 w;#6 n;w;#3 n;nw;wu;wu;wu;nu;nu;eu;nu;eu;nu",
		},
		["ReturnPath"]={
		"sd;wd;sd;wd;sd;sd;ed;ed;ed;se;#3 s;e;#6 s;#6 e;ne;e;n;e;ne;ne;e;ne;e;se;e;#8 n;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen mp2",
		},
		["����"]="���ɽ"
	},
},
["��Ұ��"] = {
	{
		["id"]="yin yewang",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;1s;rideyl;s;s;se;se;e;se;w;w;w;w;w;n;n;w;w;w;w;wu;/stepwalking_GoStep(\"mingjiao\")",
		"wu;nu;nu;nu;nu;enter;nu;nu;/stepwalking_GoStep(\"mingjiao\")",
		"nu;nu",
		},
		["ReturnPath"]={
		"sd;sd;sd;sd;out;sd;sd;sd;sd;ed;ed;#4 e;#2 s;#5 e;nw;w;nw;nw;n;1s;rideyz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen mj;wu;/stepwalking_GoStep(\"mingjiao\")",
		"wu;nu;nu;nu;nu;enter;nu;nu;/stepwalking_GoStep(\"mingjiao\")",
		"nu;nu",
		},
		["����"]="����"
	},
},
["�˰ٴ�"] = {
	{
		["id"]="deng baichuan",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;sz;e;#6 s;sw;e;e;se;s;qu yanziwu;/stepwalking_GoStep(\"murong\")",
		"out;s;s;e;s;s;e;e;s;e;s;s;e;e",
		},
		["ReturnPath"]={
		"w;w;n;n;w;n;w;w;n;n;n;n;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen mp13;s;s;e;e;s;e;s;s;e;e",
		},
		["����"]="������"
	},
},
["��־ƽ"] = {
	{
		["id"]="yin zhiping",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;gc-znsj;n;#3 nu;#2 wu;nu;nu;n;w;nw;n;#5 nu;se;eu;su",
		},
		["ReturnPath"]={
		"wd;w;nd;wd;nw;#5 sd;s;se;e;s;sd;sd;#2 ed;#3 sd;s;znsj-gc;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen quz;wd;w",
		},
		["����"]="ȫ��"
	},
},
["С��Ů"] = {
	{
		["id"]="long nv",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;gc-gm",
		},
		["ReturnPath"]={
		"gm-gc;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen gm;move shi;s;s;s",
		},
		["����"]="��Ĺ"
	},
},
["���з�"] = {
	{
		["id"]="liu chengfeng",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;1s;ridecd;s;s;w;#6 s;wu;wu",
		},
		["ReturnPath"]={
		"ed;ed;#6 n;e;n;n;1s;rideyz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen cd;#6 s;wu;wu",
		},
		["����"]="Ѫ����"
	},
},
["ŷ����"] = {
	{
		["id"]="ouyang feng",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;yl;s;se;wu;n;nd;s;ask men wei about all;/stepwalking_GoStep(\"baituo\")",
		"s;sw;s;s;s;s",
		},
		["ReturnPath"]={
		"n;n;n;w;d;move pen;d;e;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen bt",
		},
		["����"]="����"
	},
	{
		["id"]="ouyang feng",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;gc-jx;se;s;u;u",
		},
		["ReturnPath"]={
		"d;d;n;nw;jx-gc;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen gc;gc-jx;se;s;u;u",
		},
		["����"]="����"
	},
},

["�������"] = {
	{
		["id"]="jiuyi daoren",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;yl;s;se;wu;n;nu",
		},
		["ReturnPath"]={
		"sd;s;ed;nw;n;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen lj;s;s;wd;sd;sd;ed;ed",
		},
		["����"]="���չ�"
	},
},
["����"] = {
	{
		["id"]="azi",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;1s;rideyl;s;se;wu;n;nd;wu",
		},
		["ReturnPath"]={
		"ed;su;s;ed;nw;n;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen xx;wu",
		},
		["����"]="���޺�"
	},
},
["������"] = {
	{
		["id"]="yuqing zi",
		["GoPath"]={
		"e;e;#3 n;w;n;yz;w;w;s;#10 e;ne;#5 n;#4 nu;#2 n;#2 nu;#2 n;#2 nu;wu;nu;#2 n;#2 wu;nw;#3 nu;nu;/stepwalking_GoStep(\"taishan\")",
		"#4 nu;w;nu",
		},
		["ReturnPath"]={
		"sd;e;#8 sd;se;ed;ed;s;s;sd;ed;sd;sd;s;s;sd;sd;s;s;#4 sd;#5 s;sw;#10 w;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen mp3;nw;sd;w;nu",
		},
		["����"]="̩ɽ"
	},
},
["������"] = {
	{
		["id"]="yuyin zi",
		["GoPath"]={
		"e;e;#3 n;w;n;yz;w;w;s;#10 e;ne;#5 n;#4 nu;#2 n;#2 nu;#2 n;#2 nu;wu;nu;#2 n;#2 wu;nw;#3 nu;nu;/stepwalking_GoStep(\"taishan\")",
		"#5 nu;se;ed;ed;e;e",
		},
		["ReturnPath"]={
		"w;w;wu;wu;nw;#9 sd;se;ed;ed;s;s;sd;ed;sd;sd;s;s;sd;sd;s;s;#4 sd;#5 s;sw;#10 w;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen mp3;ed;ed;e;e",
		},
		["����"]="̩ɽ"
	},
},
["������"] = {
	{
		["id"]="yue wife",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;gc-hsjx;se;#2 su;#2 eu;su;;#2 eu;#4 su;ask gao genming about all;/stepwalking_GoStep(\"huashan\")",
		"eu;n;n;n;w;n;w",
		},
		["ReturnPath"]={
		"e;s;e;s;s;s;wd;#4 nd;#2 wd;nd;#2 wd;#2 nd;nw;hsjx-gc;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen hs;ask gao genming about all;/stepwalking_GoStep(\"huashan\")",
		"eu;n;n;n;w;n;w",
		},
		["����"]="��ɽ"
	},
},
["����Ⱥ"] = {
	{
		["id"]="yue buqun",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;gc-hsjx;se;#2 su;#2 eu;su;;#2 eu;#4 su;ask gao genming about all;/stepwalking_GoStep(\"huashan\")",
		"eu;n;n",
		},
		["ReturnPath"]={
		"s;s;wd;#4 nd;#2 wd;nd;#2 wd;#2 nd;nw;hsjx-gc;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen hs;ask gao genming about all;/stepwalking_GoStep(\"huashan\")",
		"eu;n;n",
		},
		["����"]="��ɽ"
	},
},
["�����"] = {
	{
		["id"]="ling huchong",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;gc-hsjx;se;#2 su;#2 eu;su;#2 eu;#4 su;ask gao genming about all;/stepwalking_GoStep(\"huashan\")",
		"eu;sd;su;su;enter",
		},
		["ReturnPath"]={
		"out;nd;nd;nu;wd;#4 nd;#2 wd;nd;#2 wd;#2 nd;nw;hsjx-gc;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen hs;ask gao genming about all;/stepwalking_GoStep(\"huashan\")",
		"eu;sd;su;su;enter",
		},
		["����"]="��ɽ"
	},
},
["�����ʦ"] = {
	{
		["id"]="xuanku dashi",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;s;e;e;pawn;bai xiangling;/stepwalking_GoStep(\"shaolinling\")",
		"w;w;n;enter dong;say ������·�㲻��ѽ;d;3;ne;ne;u;sw;e;sd;e;nu;nu;wu;nu;nu;nu;e;ask xu about all;/stepwalking_GoStep(\"shaolin\")",
		"eu;/stepwalking_GoStep(\"shaolin\")",
		"nu;nu;nu;n;knock gate;n;n;nu;n;n;n;nu;n;e;e",
		},
		["ReturnPath"]={
		"w;w;s;sd;s;s;s;sd;s;open gate;s;s;sd;sd;sd;wd;w;w;#3 sd;ed;#2 sd;e;s;eu;ed;s;s;s;su;sd;s;e;e;give 1 silver to ma fu;rideyz;w;w;s;s;e;e;pawn ling;w;w;n;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen dp;pawn;bai xiangling;/stepwalking_GoStep(\"shaolinling\")",
		"chen shl;knock gate;n;n;nu;n;n;n;nu;n;e;e;mpawn yingxiong ling",
		},
		["����"]="����"
	},
},
["���Ʊ���"] = {
	{
		["id"]="qingshan biqiu",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;s;e;e;pawn;bai xiangling;/stepwalking_GoStep(\"shaolinling\")",
		"w;w;n;enter dong;say ������·�㲻��ѽ;d;3;ne;ne;u;sw;e;sd;e;nu;nu;wu;nu;nu;nu;e;ask xu about all;/stepwalking_GoStep(\"shaolin\")",
		"eu;/stepwalking_GoStep(\"shaolin\")",
		"nu;nu;nu;n;knock gate;n;n;nu;n",
		},
		["ReturnPath"]={
		"s;sd;s;open gate;s;s;sd;sd;sd;wd;w;w;#3 sd;ed;#2 sd;e;s;eu;ed;s;s;s;su;sd;s;e;e;give 1 silver to ma fu;rideyz;w;w;s;s;e;e;pawn ling;w;w;n;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen dp;pawn;bai xiangling;/stepwalking_GoStep(\"shaolinling\")",
		"chen shl;knock gate;n;n;nu;n;mpawn yingxiong ling",
		},
		["����"]="����"
	},
},
["ׯ����"] = {
	{
		["id"]="san furen",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;bj;w;w;n;e;e;e;e;ne;n;n;climb wall;n;n;n",
		},
		["ReturnPath"]={
		"s;s;s;s;s;s;sw;w;w;w;w;s;e;e;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen tam;e;e;e;e;ne;n;n;climb wall;n;n;n",
		},
		["����"]="����"
	},
},
["˫��"] = {
	{
		["id"]="shuang er",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;bj;w;w;n;e;e;e;e;ne;n;n;climb wall;n;n;n",
		},
		["ReturnPath"]={
		"s;s;s;s;s;s;sw;w;w;w;w;s;e;e;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen tam;e;e;e;e;ne;n;n;climb wall;n;n;n",
		},
		["����"]="����"
	},
},
["������"] = {
	{
		["id"]="wu liuqi",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;bj;w;w;n;w;w;n;n;e",
		},
		["ReturnPath"]={
		"w;s;s;e;e;s;e;e;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen tam;w;w;n;n;e",
		},
		["����"]="����"
	},
},
["��Զɽ"] = {
	{
		["id"]="xiao yuanshan",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;1s;ridebj;1s;rideht;e;s;s;s;s;s;s;sw;sw;s;sw;sw",
		},
		["ReturnPath"]={
		"ne;ne;n;ne;ne;n;n;n;n;n;n;w;1s;ridebj;1s;rideyz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen gw;s;s;s;s;s;sw;sw;s;sw;sw",
		},
		["����"]="����"
	},
},
["������"] = {
	{
		["id"]="li yuanzhi",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;hz;w;w;n;n;n;n;w;sw;w;#4 s",
		},
		["ReturnPath"]={
		"#4 n;e;ne;e;#4 s;e;e;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen hz;w;n;n;n;n;w;sw;w;#4 s",
		},
		["����"]="����"
	},
},
["������"] = {
	{
		["id"]="xiang wentian",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;fz;s;s;w;w;w;w;w;nw;w;nw;nw;nu;nd;nu;n;nd;e",
		},
		["ReturnPath"]={
		"w;su;s;sd;su;sd;se;se;e;se;e;e;e;e;e;n;n;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen fz;s;s;w;w;w;w;w;nw;w;nw;nw;nu;nd;nu;n;nd;e",
		},
		["����"]="Ȫ��"
	},
},
["����"] = {
	{
		["id"]="qu yang",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;#8 s;su;se;sw;w;w;n;knock gate;push gate;enter;n",
		},
		["ReturnPath"]={
		"s;out;s;e;e;ne;nw;nd;#8 n;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen gc;#8 s;su;se;sw;w;w;n;knock gate;push gate;enter;n",
		},
		["����"]="����"
	},
},
["�ڰ���"] = {
	{
		["id"]="heibai zi",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;give 1 silver to ma fu;ridehz;w;w;n;n;n;n;sw;w;sw;w;wu;n;n;n;knock 4;knock 2;knock 5;knock 3;/stepwalking_GoStep(\"meizhuang\")",
		"#3 n;w",
		},
		["ReturnPath"]={
		"e;#6 s;open gate;s;s;s;ed;e;ne;e;ne;#4 s;e;e;1s;rideyz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen mp8;out;s;wd;#4 n;w",
		},
		["����"]="÷ׯ"
	},
},
["��ص���"] = {
	{
		["id"]="tianbai daoren",
		["GoPath"]={
		"e;e;#3 n;w;n;yz;w;w;s;#10 e;ne;#5 n;#4 nu;#2 n;#2 nu;#2 n;#2 nu;wu;nu;#2 n;#2 wu;nw;#3 nu;nu;/stepwalking_GoStep(\"taishan\")",
		"#4 nu",
		},
		["ReturnPath"]={
		"#8 sd;se;ed;ed;s;s;sd;ed;sd;sd;s;s;sd;sd;s;s;#4 sd;#5 s;sw;#10 w;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen mp3;nw;sd",
		},
		["����"]="̩ɽ"
	},
},
["����"]={
	{
		["id"]="ben chen",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;1s;ridedl;e;n;e;#5 n;nw;n;ne;e;s;s;s;e;s;s;w;#6 s",
		},
		["ReturnPath"]={
		"#6 n;e;n;n;w;n;n;n;w;sw;s;se;#5 s;w;s;w;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen dl;#4 n;nw;n;ne;e;s;s;s;e;s;s;w;#6 s",
		},
		["����"]="������"
	},
},
["����"]={
	{
		["id"]="ben guan",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;1s;ridedl;e;n;e;#5 n;nw;n;ne;e;s;s;s;e;s;s;w;#6 s",
		},
		["ReturnPath"]={
		"#6 n;e;n;n;w;n;n;n;w;sw;s;se;#5 s;w;s;w;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen dl;#4 n;nw;n;ne;e;s;s;s;e;s;s;w;#6 s",
		},
		["����"]="������"
	},
},
["ΤһЦ"] = {
	{
		["id"]="wei yixiao",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;1s;rideyl;s;s;se;se;e;se;w;w;w;w;w;n;n;w;w;w;w;wu;/stepwalking_GoStep(\"mingjiao\")",
		"wu;nu;nu;nu;nu;enter;nu;nu;/stepwalking_GoStep(\"mingjiao\")",
		"nu;nu;n;nu;n",
		},
		["ReturnPath"]={
		"s;sd;s;sd;sd;sd;sd;out;sd;sd;sd;sd;ed;ed;#4 e;#2 s;#5 e;nw;w;nw;nw;n;1s;rideyz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen mj;wu;/stepwalking_GoStep(\"mingjiao\")",
		"wu;nu;nu;nu;nu;enter;nu;nu;/stepwalking_GoStep(\"mingjiao\")",
		"nu;nu;n;nu;n",
		},
		["����"]="����"
	},
},
["лѷ"] = {
	{
		["id"]="xie xun",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;1s;rideyl;s;s;se;se;e;se;w;w;w;w;w;n;n;w;w;w;w;wu;/stepwalking_GoStep(\"mingjiao\")",
		"wu;nu;nu;nu;nu;enter;nu;nu;/stepwalking_GoStep(\"mingjiao\")",
		"nu;nu;n;nu;n",
		},
		["ReturnPath"]={
		"s;sd;s;sd;sd;sd;sd;out;sd;sd;sd;sd;ed;ed;#4 e;#2 s;#5 e;nw;w;nw;nw;n;1s;rideyz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"] = {
		"chen mj;wu;/stepwalking_GoStep(\"mingjiao\")",
		"wu;nu;nu;nu;nu;enter;nu;nu;/stepwalking_GoStep(\"mingjiao\")",
		"nu;nu;n;nu;n",
		},
		["����"]="����"
	},
},
["�μ�"] = {
	{
		["id"]="chengjian luohan",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;s;e;e;pawn;bai xiangling;/stepwalking_GoStep(\"shaolinling\")",
		"w;w;n;enter dong;say ������·�㲻��ѽ;d;3;ne;ne;u;sw;e;sd;e;nu;nu;wu;nu;nu;nu;e;ask xu about all;/stepwalking_GoStep(\"shaolin\")",
		"eu;/stepwalking_GoStep(\"shaolin\")",
		"nu;nu;nu;n;knock gate;n;n;nu;n;n;n;nu;n;e;e",
		},
		["ReturnPath"]={
		"w;w;s;sd;s;s;s;sd;s;open gate;s;s;sd;sd;sd;wd;w;w;#3 sd;ed;#2 sd;e;s;eu;ed;s;s;s;su;sd;s;e;e;give 1 silver to ma fu;rideyz;w;w;s;s;e;e;pawn ling;w;w;n;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen dp;pawn;bai xiangling;/stepwalking_GoStep(\"shaolinling\")",
		"chen shl;knock gate;n;n;nu;n;n;n;nu;n;e;e;mpawn yingxiong ling",
		},
		["����"]="����"
	},
},

["�������"] = {
	{
		["id"]="xuan zhen",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;1s;ridebj;w;w;n;w;s;w;knock floor 3;enter hole",
		},
		["ReturnPath"]={
		"#3 n;w;n;e;n;n;n;e;n;e;e;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen tam;w;s;w;knock floor 3;enter hole",
		},
		["����"]="������"
	},
},
["���Ǻ�"] = {
	{
		["id"]="su xinghe",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;#8 s;e;e;s;w;w",
		},
		["ReturnPath"]={
		"e;e;e;e;n;w;#8 n;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen mp22",
		},
		["����"]="��ң"
	},
},
["Ľ�ݸ�"] = {
	{
		["id"]="murong fu",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;sz;e;#6 s;sw;e;e;se;s;qu yanziwu;/stepwalking_GoStep(\"murong\")",
		"out;s;s;e",
		},
		["ReturnPath"]={
		"n;n;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen mp13",
		},
		["����"]="������"
	},
},
["�쵤��"] = {
	{
		["id"]="zhu danchen",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;dl;e;n;e;n;n;n;e;n;enter;e;e;n;n;e",
		},
		["ReturnPath"]={
		"w;s;s;w;w;out;s;w;s;s;s;w;s;w;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen dl;n;n;e;n;enter;e;e;n;n;e",
		},
		["����"]="����"
	},
},
["����"] = {
	{
		["id"]="jian zhanglao",
		["GoPath"]={
		"give;/stepwalking_GoStep(\"gaibang\")",
		"e;e;n;n;n;w;n;yz;w;w;s;gc-gb;enter",
		},
		["ReturnPath"]={
		"out;gb-gc;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen gc;gc-gb;enter;open door;enter",
		},
		["����"]="ؤ��"
	},
},
["������"] = {
	{
		["id"]="lin zhennan",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;fz;s;s;w;w;w;n;enter;n",
		},
		["ReturnPath"]={
		"s;out;s;e;e;e;n;n;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen fz;s;s;w;w;w;n;enter;n",
		},
		["����"]="����"
	},
},
["ʷ��ɽ"] = {
	{
		["id"]="shi qingshan",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;w;w;w;w;s;s",
		},
		["ReturnPath"]={
		"n;n;e;e;e;e;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen gc;w;w;w;w;s;s",
		},
		["����"]="����"
	},
},
["������"] = {
	{
		["id"]="huo xiansheng",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;dl;e;n;e;n;n;n;e;n;enter;w",
		},
		["ReturnPath"]={
		"e;out;s;w;s;s;s;w;s;w;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen dl;n;n;e;n;enter;w",
		},
		["����"]="����"
	},
},
["֣��ͷ"] = {
	{
		["id"]="zheng biaotou",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;;fz;s;s;w;w;w;n;enter;n;n",
		},
		["ReturnPath"]={
		"s;s;out;s;e;e;e;n;n;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen fz;s;s;w;w;w;n;enter;n;n",
		},
		["����"]="����"
	},
},
["��һ��"] = {
	{
		["id"]="fan yifei",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;#4 s;#4 e;#3 se",
		},
		["ReturnPath"]={
		"nw;nw;nw;w;w;w;w;n;n;n;n;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen gyz;n;n;w",
		},
		["����"]="����ׯ"
	},
},
["½��Ӣ"] = {
	{
		["id"]="lu guanying",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;gc-gyz",
		},
		["ReturnPath"]={
		"gyz-gc;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen gyz",
		},
		["����"]="����ׯ"
	},
},
["��ݼ"] = {
	{
		["id"]="liu jing",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;#8 s;su;se;sw;w;w;n;knock gate;push gate;enter;n;w",
		},
		["ReturnPath"]={
		"e;s;out;s;e;e;ne;nw;nd;#8 n;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen gc;#8 s;su;se;sw;w;w;n;knock gate;push gate;enter;n;w",
		},
		["����"]="����"
	},
},
["������"] = {
	{
		["id"]="danqing sheng",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;give 1 silver to ma fu;ridehz;w;w;n;n;n;n;sw;w;sw;w;wu;n;n;n;knock 4;knock 2;knock 5;knock 3;/stepwalking_GoStep(\"meizhuang\")",
		"#2 n;e",
		},
		["ReturnPath"]={
		"w;#5 s;open gate;s;s;s;ed;e;ne;e;ne;#4 s;e;e;1s;rideyz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen mp8;out;s;wd;#3 n;e",
		},
		["����"]="÷ׯ"
	},
},
["������"] = {
	{
		["id"]="liu guoxuan",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;fz;s;s;w;#7 s;e;enter chuan;/stepwalking_GoStep(\"taiwan\")",
		"",
		},
		["ReturnPath"]={
		"enter chuan;/stepwalking_StepReturn(\"taiwan\")",
		"w;#7 n;e;n;n;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen fz;s;s;w;#7 s;e;enter chuan;/stepwalking_GoStep(\"taiwan\")",
		},
		["����"]="̨��"
	},
},
["��Ӣ"] = {
	{
		["id"]="cheng ying",
		["GoPath"]={
		"takeout 1 gold;e;e;n;n;n;w;n;yz;w;w;s;#10 e;s;s;#3 e;ask lao chuanfu about ����;/stepwalking_GoStep(\"taohuachuan\")",
		"/stepwalking_GoStep(\"taohua\")",
		"s;/stepwalking_GoStep(\"taohua\")",
		"s;s;w",
		},
		["ReturnPath"]={
		"drop gao;drop cha;e;s;s;s;s;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen thd;s;/stepwalking_GoStep(\"taohua\")",
		"s;s;w",
		},
		["����"]="�һ���"
	},
},

["ˮ�"] = {
	{
		["id"]="shui dai",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;1s;ridecd;s;s;w;#6 s;wu;wu;nd;wu;wu",
		},
		["ReturnPath"]={
		"ed;ed;su;ed;ed;#6 n;e;n;n;1s;rideyz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen xs;ed;n",
		},
		["����"]="Ѫ����"
	},
},
["׿��"] = {
	{
		["id"]="zhuoma",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;#8 s;w;nw;w;sw;w;sw;sw;w;s;w;sw;#6 w;#6 s;wu;wu;nd;su;wu;wu;su;wu;su;/stepwalking_GoStep(\"xueshan\")",
		"n",
		},
		["ReturnPath"]={
		"su;e;enter;midao;e;xy;s;e;s;s;s;w;w",
		},
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;#8 s;w;nw;w;sw;w;sw;sw;w;s;w;sw;#6 w;#6 s;wu;wu;nd;su;wu;wu;su;wu;su;/stepwalking_GoStep(\"xueshan\")",
		"n",
		},
		["MemberGoPath"]={
		"chen xs;ed;n;ed;ed;su;wu;wu;su;wu;su;/stepwalking_GoStep(\"xueshan\")",
		"n",
		},
		["����"]="Ѫ����"
	},
},
["���׷�"] = {
	{
		["id"]="dao baifeng",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;dl;e;n;e;n;#3 n;e;eu;e;ed;se;sd;sd;w;n;n",
		},
		["ReturnPath"]={
		"s;s;e;nu;nu;nw;wu;w;wd;w;#4 s;w;s;w;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen dl;#3 n;e;eu;e;ed;se;sd;sd;w;n;n",
		"n",
		},
		["����"]="����"
	},
},

["�����"] = {
	{
		["id"]="qu lingfeng",
		["GoPath"]={
		"takeout 1 gold;e;e;n;n;n;w;n;yz;w;w;s;#10 e;s;s;#3 e;ask lao chuanfu about ����;/stepwalking_GoStep(\"taohuachuan\")",
		"/stepwalking_GoStep(\"taohua\")",
		"s;/stepwalking_GoStep(\"taohua\")",
		"s;s;s;e;ask ya pu about all;/stepwalking_GoStep(\"taohua\")",
		"u",
		},
		["ReturnPath"]={
		"d;w;s;s;s;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen thd;s;/stepwalking_GoStep(\"taohua\")",
		"s;s;s;e;ask ya pu about all;/stepwalking_GoStep(\"taohua\")",
		"u",
		},
		["����"]="�һ���"
	},
},
["��Ա��"] = {
	{
		["id"]="cui yuanwai",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;#5 w;n;n;n",
		},
		["ReturnPath"]={
		"s;s;s;#5 e;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen gc;#5 w;n;n;n",
		},
		["����"]="����"
	},
},
["������"] = {
	{
		["id"]="hai gonggong",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;#10 e",
		},
		["ReturnPath"]={
		"#10 w;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen gc;#10 e",
		},
		["����"]="����"
	},
},
["��������"] = {
	{
		["id"]="shen zhao",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;bj;w;w;n;e;e;n;n;n;n;ask shi wei about all;/stepwalking_GoStep(\"kangqingwangfu\")",
		"n",
		},
		["ReturnPath"]={
		"look;/stepwalking_StepReturn(\"kangqingwangfu\")",
		"#4 s;w;w;s;e;e;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen tam;e;e;n;n;n;n;ask shi wei about all;/stepwalking_GoStep(\"kangqingwangfu\")",
		"n",
		},
		["����"]="����"
	},
},
["�����ϼ�˾"] = {
	{
		["id"]="lao jisi",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;give 1 silver to ma fu;ridedl;e;n;e;s;s;#3 w;nw;ne;n;wu;wd;wd;n;w;enter",
		},
		["ReturnPath"]={
		"out;e;s;eu;eu;ed;s;sw;se;#3 e;n;n;w;s;w;give 1 silver to ma fu;rideyz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen dl;s;s;s;#3 w;nw;ne;n;wu;wd;wd;n;w;enter",
		},
		["����"]="����"
	},
},
["�����"] = {
	{
		["id"]="li kexiu",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;hz;w;w;n",
		},
		["ReturnPath"]={
		"s;e;e;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen hz;w;n",
		},
		["����"]="����"
	},
},
["������"] = {
	{
		["id"]="zhang zhaozhong",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;hz;w;w",
		},
		["ReturnPath"]={
		"e;e;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen hz;w",
		},
		["����"]="����"
	},
},
["������"] = {
	{
		["id"]="peng lianhu",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;#3 n;#3 w;#2 n;e;ne;n;w;w;w",
		},
		["ReturnPath"]={
		"e;e;e;s;sw;w;#2 s;#3 e;#3 s;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen gc;#4 n;#3 w;#2 n;e;ne;n;w;w;w",
		},
		["����"]="�ƺӾ���"
	},
},
["Ǯ�ཡ"] = {
	{
		["id"]="qian qingjian",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;#3 n;#3 w;#2 n;e;ne;n;w;w",
		},
		["ReturnPath"]={
		"e;e;s;sw;w;#2 s;#3 e;#3 s;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen gc;#4 n;#3 w;#2 n;e;ne;n;w;w",
		},
		["����"]="�ƺӾ���"
	},
},
["�Ϻ�����"] = {
	{
		["id"]="nanhai eshen",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;give 1 silver to ma fu;rideyd;give 1 silver to ma fu;ridelz;w;w;n;e;e;ne;n;ne;n;ne",
		},
		["ReturnPath"]={
		"sw;s;sw;s;sw;w;w;s;e;e;give 1 silver to ma fu;rideyd;give 1 silver to ma fu;rideyz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen lz;e;e;ne;n;ne;n;ne",
		},
		["����"]="����"
	},
},
["������"] = {
	{
		["id"]="zuo lengchan",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;gc-ss;#3 n;nu;ne;u;/stepwalking_GoStep(\"songshan\")",
		"#5 nu;n;n;ask yao hou about all;/stepwalking_GoStep(\"songshan\")",
		"n",
		},
		["ReturnPath"]={
		"#3 s;#5 sd;d;sw;sd;#3 s;ss-gc;n;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen mp4;n;ask yao hou about all;/stepwalking_GoStep(\"songshan\")",
		"n",
		},
		["����"]="��ɽ"
	},
},

["�ɻ���"] = {
	{
		["id"]="caihua zi",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;1s;rideyl;s;se;wu;n;nd;n;nw;w",
		},
		["ReturnPath"]={
		"e;se;s;su;s;ed;nw;n;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen xx;n;nw;w",
		},
		["����"]="���޺�"
	},
},

["������"] = {
	{
		["id"]="wu qinglie",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;#3 n;#3 w;#2 n;e;ne;n;w;w",
		},
		["ReturnPath"]={
		"e;e;s;sw;w;#2 s;#3 e;#3 s;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen gc;#4 n;#3 w;#2 n;e;ne;n;w;w",
		},
		["����"]="�ƺӾ���"
	},
},
["������"] = {
	{
		["id"]="ma qingxiong",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;#3 n;#3 w;#2 n;e;ne;n;w",
		},
		["ReturnPath"]={
		"e;s;sw;w;#2 s;#3 e;#3 s;e;e;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen gc;#4 n;#3 w;#2 n;e;ne;n;w",
		},
		["����"]="�ƺӾ���"
	},
},

["��˹����"] = {
	{
		["id"]="bosi shangren",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;1s;rideyl;s;se",
		},
		["ReturnPath"]={
		"nw;n;1s;rideyz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen yl;s;se",
		},
		["����"]="����"
	},
},
["����ľ��"] = {
	{
		["id"]="alamuhan",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;1s;rideyl;s;nw",
		},
		["ReturnPath"]={
		"se;n;1s;rideyz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen yl;s;nw",
		},
		["����"]="��ɽ"
	},
},

["���Ʋֹ�ʦ"] = {
	{
		["id"]="gongtangcang guoshi",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;bj;w;w;s;s;s;w",
		},
		["ReturnPath"]={
		"e;n;n;n;e;e;yz;xy;s;e;s;s;s;w;w",
		},
		["MemberGoPath"]={
		"chen tam;s;s;s;s;w",
		},
		["����"]="����"
	},
},
}

--heiyistats = ""
pausetimes = 0

--team job
function guobaohu_start()

	Common_AddCustomerAlias("pfm_alias", "pfm", "exert regenerate\nexert recover\nperform strike.xuan")
	Common_AddCustomerAlias("pw_alias", "pw", "exert wanfaguizong")
	Common_AddCustomerAlias("chd_alias", "chd", "drop cloth\nwear all")
	
	Common_AddCustomerTrigger("guobaohu1", "guobaohu1","^������������йء�job������Ϣ��", "/guobaohu_questjob()")
	Common_AddCustomerTrigger("guobaohu2", "guobaohu1","^����û������ˡ�", "/guobaohu_fail()")
	Common_AddCustomerTrigger("guobaohu3", "guobaohu1","^������������йء�fangqi������Ϣ��", "ask guo jing about job")
	Common_AddCustomerTrigger("guobaohu4", "guobaohu1","^������������йء�over������Ϣ��", "/guobaohu_finish()")

	Common_AddCustomerTrigger("guobaohu51", "guobaohu2","^�������˵�ͷ������˵��:�ɹ���������һ�����ְ���,����Ҫ��ɱ(?P<where>.*)����ȥ������һ��", "/guobaohu_startgojob(\"%<where>\")")
	Common_AddCustomerTrigger("guobaohu52", "guobaohu2","^����˵��������һ�ε�����û���", "/guobaohu_fangqi()")
	Common_AddCustomerTrigger("guobaohu53", "guobaohu2","^����˵��������²������ȵȻ��", "/guobaohu_pause()")
	Common_AddCustomerTrigger("guobaohu54", "guobaohu2","^����˵�������Ǽ�Σ�չ������ҿ�(.*?)��Ҫ��Ϣһ��", "/guobaohu_pause()")
	Common_AddCustomerTrigger("guobaohu55", "guobaohu2","^����˵���������ҿ�û�и�������񣬵Ȼ������ɡ�", "/guobaohu_pause()")
	
	Common_AddCustomerTrigger("guobaohu102", "guobaohu3","^(?P<front>.*)ֻ�ܶ�ս���еĶ���ʹ�á�", "/guobaohu_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("guobaohu103", "guobaohu3","^(?P<front>.*)ֻ����ս����ʹ�á�", "/guobaohu_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("guobaohu104", "guobaohu3","^(?P<front>.*)ֻ����ս���жԶ���ʹ�á�", "/guobaohu_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("guobaohu105", "guobaohu3","^(?P<front>.*)ֻ�ܶԶ���ʹ�á�", "/guobaohu_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("guobaohu106", "guobaohu3","^��Ҫ��˭ʩչ��һ��(?P<front>.*)", "/guobaohu_nofight(\"%<front>\")")

	Common_AddCustomerTrigger("guobaohu151", "guobaohu4","^��Ҫ��ʲô��","/guobaohu_notarget()")		
	Common_AddCustomerTrigger("guobaohu152", "guobaohu4","^�����(.*?)ŭĿ���ӣ��ǲ���","/guobaohu_hastarget()")		

	Common_AddCustomerTrigger("guobaohu201", "guobaohu5","^��Ժ����˺ȵ�:�󵨿�ͽ,����������Ұ","/guobaohu_dokill()")	
	Common_AddCustomerTrigger("guobaohu202", "guobaohu5","^��(.*?)վ��������", "/guobaohu_dazuo()")
	Common_AddCustomerTrigger("guobaohu203", "guobaohu5","^���������������뵤������۾������������һ������", "/guobaohu_dazuo()")
	Common_AddCustomerTrigger("guobaohu204", "guobaohu5","^�㽫��Ϣ����������ʮ�����죬���ص��ֻ����ȫ��ů����ġ�", "/guobaohu_dazuo()")
	Common_AddCustomerTrigger("guobaohu205", "guobaohu5","^�޾���ɱ�⻺��ɢ��ȫ�������ۣ�������һ������", "/guobaohu_dazuo()")
	Common_AddCustomerTrigger("guobaohu206", "guobaohu5","^�㽫����������������������һȦ���������뵤������֣�������һ������", "/guobaohu_dazuo()")
	Common_AddCustomerTrigger("guobaohu207", "guobaohu5","^������������������һ�����죬�����������ڵ������̧�����۾���", "/guobaohu_dazuo()")

	Common_AddCustomerTrigger("guobaohu301", "guobaohu7","^���(.*?)һЩ������", "/guobaohu_gotojob()")
	Common_AddCustomerTrigger("guobaohu302", "guobaohu7","^�����������������ˡ�", "drop 1 silver")
	Common_AddCustomerTrigger("guobaohu303", "guobaohu7","^������û������������", "takeout 99 silver")
	Common_AddCustomerTrigger("guobaohu304", "guobaohu7","^��û����ô���(.*?)", "takeout 99 silver")
	Common_AddCustomerTrigger("guobaohu305", "guobaohu7","^�������ܱ��ֿ����ˡ�", "drop 1 silver")
	Common_AddCustomerTrigger("guobaohu306", "guobaohu7","^����ʺ���û���Ƕ�", "deposit gold;deposit silver")
		
	Common_AddCustomerTrigger("guobaohu551", "guobaohu12","^���Ժ����ԣ�", "/guobaohu_TooManyCommand()")
	Common_AddCustomerTrigger("guobaohu552", "guobaohu12","^��Ķ���̫��,����ȡ���ˡ�", "/guobaohu_fail()")


	Common_AddCustomerTimer("guobaohu1", "guobaohu",0, 0, 1, "pfm")
	Common_AddCustomerTimer("guobaohu2", "guobaohu",0, 0, 1, "give "..WorldName().." 21 silver")

	Common_AddCustomerTimer("timerpause", "timerpause",0, 1, 0, "/guobaohu_timerpause()",17409)
	
	stepwalking_start()
	
	guobaohu_DisableAll()
	SetVariable("currstats","guobaohu")
	SetVariable("jobpath","")
	SetVariable("searchstep",0)
	SetVariable("targetnum",1)
	SetVariable("jobstep",1)
	SetVariable("jobok",0)
	EnableTimer("autoemote", false)
	EnableTriggerGroup("guobaohu1", true)
	Common_SendToWorld("chd;pw;ask guo jing about job")
end

function guobaohu_DisableAll()
	EnableTriggerGroup("guobaohu1", false)
	EnableTriggerGroup("guobaohu2", false)
	EnableTriggerGroup("guobaohu3", false)
	EnableTriggerGroup("guobaohu4", false)
	EnableTriggerGroup("guobaohu5", false)
	EnableTriggerGroup("guobaohu6", false)
	EnableTriggerGroup("guobaohu7", false)
	EnableTriggerGroup("guobaohu12", true)
	EnableTimerGroup("guobaohu", false)
end

function guobaohu_timerpause()
	if _G.EndRobot > 0 then
		return
	end

	Common_SendToWorld("why")
	pausetimes = pausetimes + 1
	if pausetimes > 8 then 
		pausetimes = 0
		guobaohu_DisableAll()
		DoAfterSpecial(5,"why;quit",10)
	end

end

function guobaohu_pause()
	guobaohu_DisableAll()
	if _G.EndRobot > 0 then
		EnableTimer("timerpause", false)
		EnableTimer("autoemote", true)
	else
		if _G.ReadShenzhaoInJob == 1 then
			guobaohu_Randushu()
		end
		
		if _G.FullSkillInJob == 1 then
			local i = math.random(1,table.getn(_G.ResearchSkills_tbl))
			DoAfterSpecial(1,"w;#4 n;w;yanjiu ".._G.ResearchSkills_tbl[i].." ".._G.ResearchTimes..";yj",10)
			DoAfterSpecial(5,"e;#4 s;e;ask guo jing about job",10)
			EnableTriggerGroup("guobaohu1", true)
			return
		end

		DoAfterSpecial(1,"ask guo jing about job",10)
		EnableTriggerGroup("guobaohu1", true)

	end
end

function guobaohu_questjob()
	guobaohu_DisableAll()
	EnableTriggerGroup("guobaohu2", true)
end

function guobaohu_finish()
	guobaohu_DisableAll()
	Common_SendToWorld("hp")
	DoAfterSpecial(1,"/guobaohu_xiuxi()",10)
end

function guobaohu_fangqi()
	guobaohu_DisableAll()
	pausetimes = 0
	DoAfterSpecial(1,"ask guo jing about fangqi",10)
	EnableTriggerGroup("guobaohu1", true)
end


function guobaohu_startgojob(didian)
	pausetimes = 0
	guobaohu_DisableAll()
	local jobpath = didian
	SetVariable("jobpath",jobpath)
	SetVariable("jobstep",1)
	_G.JobMsg = "������������ ���"..jobpath
	World_RefreshStatus()
	
	pausetimes = 0
	if guobaohupath_tbl[jobpath] == nil then
		EnableTriggerGroup("guobaohu1", true)
		DoAfterSpecial(1,"ask guo jing about fangqi",10)
		return
	end	

	EnableTimer("guobaohu2",true)
	EnableTriggerGroup("guobaohu7",true)	
end

function guobaohu_gotojob()
	guobaohu_DisableAll()
	SetVariable("jobstep",1)
	local target = GetVariable("jobpath")
	local targetnum = tonumber(GetVariable("targetnum"))
	if targetnum > table.getn(guobaohupath_tbl[target]) then
		EnableTriggerGroup("guobaohu1", true)
		DoAfterSpecial(1,"ask guo jing about fangqi",10)
		return
	end
	
	local member = tonumber(GetVariable("member",0))
	if member == 1 then
		if guobaohupath_tbl[target][targetnum]["MemberGoPath"] ~= nil then
			if table.getn(guobaohupath_tbl[target][targetnum]["MemberGoPath"]) == 1 then
				Common_SendToWorld(guobaohupath_tbl[target][targetnum]["MemberGoPath"][1]..";/stepwalking_GoTarget()")
			else
				Common_SendToWorld(guobaohupath_tbl[target][targetnum]["MemberGoPath"][1])
			end
			
			return
		end
	end
	
	if table.getn(guobaohupath_tbl[target][targetnum]["GoPath"]) == 1 then
		Common_SendToWorld(guobaohupath_tbl[target][targetnum]["GoPath"][1]..";/stepwalking_GoTarget()")
	else
		Common_SendToWorld(guobaohupath_tbl[target][targetnum]["GoPath"][1])
	end
end

function guobaohu_dokill()
	guobaohu_DisableAll()
	pausetimes = 0
	EnableTriggerGroup("guobaohu3", true)
	EnableTimer("guobaohu1", true)
end

function guobaohu_dazuo()
	Common_SendToWorld("yq;dazuo 10")
end

function guobaohu_notarget()
	guobaohu_DisableAll()
	SetVariable("jobok",0)
	local target = GetVariable("jobpath")
	local targetnum = tonumber(GetVariable("targetnum"))
	if targetnum > table.getn(guobaohupath_tbl[target]) then
		Common_SendToWorld("/stepwalking_TargetFail()")
		return
	end
	
	local member = tonumber(GetVariable("member",0))
	if member == 1 then
		EnableTriggerGroup("guobaohu1", true)
		Common_SendToWorld("chen xy;ask guo jing about fangqi")
		return
	end

	if table.getn(guobaohupath_tbl[target][targetnum]["ReturnPath"]) == 1 then
		Common_SendToWorld(guobaohupath_tbl[target][targetnum]["ReturnPath"][1]..";/stepwalking_TargetReturn()")
	else
		Common_SendToWorld(guobaohupath_tbl[target][targetnum]["ReturnPath"][1])
	end
end

function guobaohu_hastarget()
	guobaohu_DisableAll()
	EnableTriggerGroup("guobaohu5", true)
	guobaohu_Randushu()
end

function guobaohu_nofight(txt)
    if Common_FilterTxt(txt) == nil then
		return
	end 
	guobaohu_DisableAll()

	guobaohu_returnjob()
end

function guobaohu_returnjob()
	guobaohu_DisableAll()
	
	SetVariable("jobok",1)
	SetVariable("jobstep",1)
	local target = GetVariable("jobpath")
	local targetnum = tonumber(GetVariable("targetnum"))
	if targetnum > table.getn(guobaohupath_tbl[target]) then
		Common_SendToWorld("/stepwalking_TargetFail()")
		return
	end

	local member = tonumber(GetVariable("member",0))
	if member == 1 then
		Common_SendToWorld("chen xy;ask guo jing about over")
		EnableTriggerGroup("huangjob1", true)
	else
		if table.getn(guobaohupath_tbl[target][targetnum]["ReturnPath"]) == 1 then
			Common_SendToWorld(guobaohupath_tbl[target][targetnum]["ReturnPath"][1]..";/stepwalking_TargetReturn()")
		else
			Common_SendToWorld(guobaohupath_tbl[target][targetnum]["ReturnPath"][1])
		end
	end

end

function guobaohu_Randushu()
	if _G.ReadShenzhaoInJob == 1 then
		Common_SendToWorld("yandu shenzhao jing")
		Common_SendToWorld("yandu shenzhao jing")
		Common_SendToWorld("exert regenerate")
		Common_SendToWorld("exert regenerate")
		Common_SendToWorld("exert regenerate")
	end
end

function guobaohu_fail()
	guobaohu_DisableAll()
	DoAfterSpecial(1,"halt;why;quit",10)
end

--================================================================
--questͨ�ýӿ�

--����
function guobaohu_OnGoTarget()
	guobaohu_DisableAll()
	EnableTriggerGroup("guobaohu4", true)
	local target = GetVariable("jobpath")
	local targetnum = tonumber(GetVariable("targetnum"))
	Common_SendToWorld("slapsb "..guobaohupath_tbl[target][targetnum]["id"]..";look lo")
end

--����
function guobaohu_OnTargetReturn()
	guobaohu_DisableAll()
	local jobpath = GetVariable("jobpath")
	local jobok = tonumber(GetVariable("jobok"))
	if jobok == 1 then
		DoAfterSpecial(1,"ask guo jing about over",10)
		EnableTriggerGroup("guobaohu1", true)
		return
	else
		local targetnum = tonumber(GetVariable("targetnum"))
		targetnum = targetnum + 1
		if table.getn(guobaohupath_tbl[jobpath]) < targetnum then	
			Common_SendToWorld("/stepwalking_TargetFail()")
		else
			SetVariable("targetnum",targetnum)
			Common_SendToWorld("/guobaohu_gotojob()")
		end
	end
end

--ʧ��
function guobaohu_OnTargetFail()
	guobaohu_DisableAll()
	EnableTriggerGroup("guobaohu1", true)
	DoAfterSpecial(1,"ask guo jing about fangqi",10)
end

--������
function guobaohu_OnNextGo()
	guobaohu_DisableAll()
	local jobpath = GetVariable("jobpath")
	local jobstep = tonumber(GetVariable("jobstep"))
	local targetnum = tonumber(GetVariable("targetnum"))
	jobstep = jobstep + 1
	SetVariable("jobstep",jobstep)
	if (jobstep + 1 > table.getn(guobaohupath_tbl[jobpath][targetnum]["GoPath"])) then
		Common_SendToWorld(guobaohupath_tbl[jobpath][targetnum]["GoPath"][jobstep]..";/stepwalking_GoTarget()")		
	else
		Common_SendToWorld(guobaohupath_tbl[jobpath][targetnum]["GoPath"][jobstep])
	end
end

--������
function guobaohu_OnNextReturn()
	guobaohu_DisableAll()
	local jobpath = GetVariable("jobpath")
	local jobstep = tonumber(GetVariable("jobstep"))
	local targetnum = tonumber(GetVariable("targetnum"))
	jobstep = jobstep + 1
	SetVariable("jobstep",jobstep)
	if (jobstep + 1 > table.getn(guobaohupath_tbl[jobpath][targetnum]["ReturnPath"])) then
		Common_SendToWorld(guobaohupath_tbl[jobpath][targetnum]["ReturnPath"][jobstep]..";/stepwalking_TargetReturn()")		
	else
		Common_SendToWorld(guobaohupath_tbl[jobpath][targetnum]["ReturnPath"][jobstep])
	end
end
--=================================================================
--�����Ϻ��Զ�Robot
function guobaohu_OnConnect()
	local member = tonumber(GetVariable("member",0))
	if member == 1 then
		DoAfterSpecial(1,"chen xy;/guobaohu_start()",10)
	else
		DoAfterSpecial(1,"e;s;s;gc-xi;/guobaohu_start()",10)
	end
end

--�������ߺ�
function  guobaohu_OnReconnect()
	guobaohu_DisableAll()
	DoAfterSpecial(1,"/guobaohu_fail()",10)
end

--����̫��
function guobaohu_TooManyCommand()
	DoAfterSpecial(20, "/guobaohu_fail()", 10)		
end

--����
function guobaohu_OnEvent()
	guobaohu_DisableAll()
	world.Disconnect()
end

--��Ϣ
function guobaohu_doxiuxi()
	xiuxi_doxiuxi()
	
	local food = tonumber(GetVariable("food"))
	local foodmax = tonumber(GetVariable("food_max"))
	local water = tonumber(GetVariable("water"))
	local watermax = tonumber(GetVariable("water_max"))
	if (food > foodmax/2) and (water > watermax/2) then
		xiuxi_doxiuxi()
		DoAfterSpecial(1,"w;n;n;n;n;w;sleep",10)
		return
	end 
	Common_SendToWorld ("s;s;e;buy baozi;eat baozi;eat baozi;eat baozi;drop baozi")
	DoAfterSpecial(1.5,"buy jiudai;drink jiudai;drink jiudai;drink jiudai;drop jiudai;w;n;n",10)
	DoAfterSpecial(3,"w;n;n;n;n;w;sleep",10)
	EnableTriggerGroup("xiuxi2",true)
	
end

function guobaohu_xiuxi()
	if _G.EndRobot > 0 then
		guobaohu_DisableAll()
		EnableTimer("timerpause", false)
		EnableTimer("autoemote", true)
	else
		guobaohu_DisableAll()
		xiuxi_start("guobaohu")
	end
end

function guobaohu_xiuxicomplete()  
	xiuxi_complete()
	if _G.EndRobot == 0 then
		DoAfterSpecial(0.5, "e;s;s;s;s;e;/guobaohu_start()", 10)
		return
	end
end