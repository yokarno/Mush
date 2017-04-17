require("hy.common.common")
require("hy.common.stepwalking")
require("hy.common.cmd")
require("hy.xiuxi")    
        
guobaohupath_tbl = {
["宋兵"] = {
	{
		["id"]="song bing",
		["GoPath"]={
		"e;n",
		},
		["ReturnPath"]={
		"s;w",
		},
		["区域"]="襄阳"
	},
	{
		["id"]="song bing",
		["GoPath"]={
		"e;e;e;n",
		},
		["ReturnPath"]={
		"s;w;w;w",
		},
		["区域"]="襄阳"
	},
	{
		["id"]="song bing",
		["GoPath"]={
		"w;w;w;n",
		},
		["ReturnPath"]={
		"s;e;e;e",
		},
		["区域"]="襄阳"
	},
	{
		["id"]="song bing",
		["GoPath"]={
		"#5 e",
		},
		["ReturnPath"]={
		"#5 w",
		},
		["区域"]="襄阳"
	},	
	{
		["id"]="song bing",
		["GoPath"]={
		"#5 w",
		},
		["ReturnPath"]={
		"#5 e",
		},
		["区域"]="襄阳"
	},	
	{
		["id"]="song bing",
		["GoPath"]={
		"#3 s;w",
		},
		["ReturnPath"]={
		"e;#3 n",
		},
		["区域"]="襄阳"
	},	
},

["偏将"] = {
	{
		["id"]="pian jiang",
		["GoPath"]={
		"#3 s;w",
		},
		["ReturnPath"]={
		"e;#3 n",
		},
		["区域"]="襄阳"
	},	
	{
		["id"]="pian jiang",
		["GoPath"]={
		"e;n;n;n",
		},
		["ReturnPath"]={
		"s;s;s;w",
		},
		["区域"]="襄阳"
	},
	{
		["id"]="pian jiang",
		["GoPath"]={
		"e;e;e;n",
		},
		["ReturnPath"]={
		"s;w;w;w",
		},
		["区域"]="襄阳"
	},
	{
		["id"]="pian jiang",
		["GoPath"]={
		"w;w;w;n",
		},
		["ReturnPath"]={
		"s;e;e;e",
		},
		["区域"]="襄阳"
	},
},
["裨将"] = {
	{
		["id"]="pi jiang",
		["GoPath"]={
		"#5 e",
		},
		["ReturnPath"]={
		"#5 w",
		},
		["区域"]="襄阳"
	},	
	{
		["id"]="pi jiang",
		["GoPath"]={
		"#5 w",
		},
		["ReturnPath"]={
		"#5 e",
		},
		["区域"]="襄阳"
	},	
	{
		["id"]="pi jiang",
		["GoPath"]={
		"e;n;n;n",
		},
		["ReturnPath"]={
		"s;s;s;w",
		},
		["区域"]="襄阳"
	},
},
["佐将"] = {
	{
		["id"]="zuo jiang",
		["GoPath"]={
		"#3 s;w",
		},
		["ReturnPath"]={
		"e;#3 n",
		},
		["区域"]="襄阳"
	},	
	{
		["id"]="zuo jiang",
		["GoPath"]={
		"e;n;n;n",
		},
		["ReturnPath"]={
		"s;s;s;w",
		},
		["区域"]="襄阳"
	},
	{
		["id"]="zuo jiang",
		["GoPath"]={
		"e;e;e;n",
		},
		["ReturnPath"]={
		"s;w;w;w",
		},
		["区域"]="襄阳"
	},
	{
		["id"]="zuo jiang",
		["GoPath"]={
		"w;w;w;n",
		},
		["ReturnPath"]={
		"s;e;e;e",
		},
		["区域"]="襄阳"
	},
},

["郭芙"] = {
	{
		["id"]="guo fu",
		["GoPath"]={
		"w;w;s;s;s",
		},
		["ReturnPath"]={
		"n;n;n;e;e",
		},
		["区域"]="襄阳"
	},
},
["老先生"] = {
	{
		["id"]="lao xiansheng",
		["GoPath"]={
		"s;e",
		},
		["ReturnPath"]={
		"w;n",
		},
		["区域"]="襄阳"
	},
},

["书店老板"] = {
	{
		["id"]="shudian laoban",
		["GoPath"]={
		"w;w;n;n;w",
		},
		["ReturnPath"]={
		"e;s;s;e;e",
		},
		["区域"]="襄阳"
	},
},
["武三通"] = {
	{
		["id"]="wu santong",
		["GoPath"]={
		"w;w",
		},
		["ReturnPath"]={
		"e;e",
		},
		["区域"]="襄阳"
	},
},

["铁匠"] = {
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
		["区域"]="扬州"
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
		["区域"]="杭州"
	},
},
["朱子柳"] = {
	{
		["id"]="zhu ziliu",
		["GoPath"]={
		"w;w;s",
		},
		["ReturnPath"]={
		"n;e;e",
		},
		["区域"]="襄阳"
	},
},
["店小二"] = {
	{
		["id"]="xiao er",
		["GoPath"]={
		"s;s;e",
		},
		["ReturnPath"]={
		"w;n;n",
		},
		["区域"]="襄阳"
	},
},
["静玄师太"] = {
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
		["区域"]="峨嵋"
	},
},
["静照师太"] = {
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
		["区域"]="峨嵋"
	},
},
["宋远桥"] = {
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
		["区域"]="武当"
	},
},
["莫声谷"] = {
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
		["区域"]="武当"
	},
},
["陆乘风"] = {
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
		["区域"]="归云庄"
	},
},
["韩宝驹"] = {
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
		["区域"]="归云庄"
	},
},
["黄药师"] = {
	{
		["id"]="huang yaoshi",
		["GoPath"]={
		"takeout 1 gold;e;e;n;n;n;w;n;yz;w;w;s;#10 e;s;s;#3 e;ask lao chuanfu about 出海;/stepwalking_GoStep(\"taohuachuan\")",
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
		["区域"]="桃花岛"
	},
},
["余沧海"] = {
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
		["区域"]="青城山"
	},
},
["殷野王"] = {
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
		["区域"]="明教"
	},
},
["邓百川"] = {
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
		["区域"]="燕子坞"
	},
},
["尹志平"] = {
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
		["区域"]="全真"
	},
},
["小龙女"] = {
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
		["区域"]="古墓"
	},
},
["刘承风"] = {
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
		["区域"]="血刀门"
	},
},
["欧阳锋"] = {
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
		["区域"]="白驼"
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
		["区域"]="白驼"
	},
},

["九翼道人"] = {
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
		["区域"]="灵鹫宫"
	},
},
["阿紫"] = {
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
		["区域"]="星宿海"
	},
},
["玉磬子"] = {
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
		["区域"]="泰山"
	},
},
["玉音子"] = {
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
		["区域"]="泰山"
	},
},
["岳夫人"] = {
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
		["区域"]="华山"
	},
},
["岳不群"] = {
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
		["区域"]="华山"
	},
},
["令狐冲"] = {
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
		["区域"]="华山"
	},
},
["玄苦大师"] = {
	{
		["id"]="xuanku dashi",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;s;e;e;pawn;bai xiangling;/stepwalking_GoStep(\"shaolinling\")",
		"w;w;n;enter dong;say 天堂有路你不走呀;d;3;ne;ne;u;sw;e;sd;e;nu;nu;wu;nu;nu;nu;e;ask xu about all;/stepwalking_GoStep(\"shaolin\")",
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
		["区域"]="少林"
	},
},
["清善比丘"] = {
	{
		["id"]="qingshan biqiu",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;s;e;e;pawn;bai xiangling;/stepwalking_GoStep(\"shaolinling\")",
		"w;w;n;enter dong;say 天堂有路你不走呀;d;3;ne;ne;u;sw;e;sd;e;nu;nu;wu;nu;nu;nu;e;ask xu about all;/stepwalking_GoStep(\"shaolin\")",
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
		["区域"]="少林"
	},
},
["庄夫人"] = {
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
		["区域"]="北京"
	},
},
["双儿"] = {
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
		["区域"]="北京"
	},
},
["吴六奇"] = {
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
		["区域"]="北京"
	},
},
["萧远山"] = {
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
		["区域"]="关外"
	},
},
["李沅芷"] = {
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
		["区域"]="杭州"
	},
},
["向问天"] = {
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
		["区域"]="泉州"
	},
},
["曲洋"] = {
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
		["区域"]="衡阳"
	},
},
["黑白子"] = {
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
		["区域"]="梅庄"
	},
},
["天柏道人"] = {
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
		["区域"]="泰山"
	},
},
["本尘"]={
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
		["区域"]="天龙寺"
	},
},
["本观"]={
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
		["区域"]="天龙寺"
	},
},
["韦一笑"] = {
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
		["区域"]="明教"
	},
},
["谢逊"] = {
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
		["区域"]="明教"
	},
},
["澄坚"] = {
	{
		["id"]="chengjian luohan",
		["GoPath"]={
		"e;e;n;n;n;w;n;yz;w;w;s;s;e;e;pawn;bai xiangling;/stepwalking_GoStep(\"shaolinling\")",
		"w;w;n;enter dong;say 天堂有路你不走呀;d;3;ne;ne;u;sw;e;sd;e;nu;nu;wu;nu;nu;nu;e;ask xu about all;/stepwalking_GoStep(\"shaolin\")",
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
		["区域"]="少林"
	},
},

["玄贞道长"] = {
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
		["区域"]="云龙门"
	},
},
["苏星河"] = {
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
		["区域"]="逍遥"
	},
},
["慕容复"] = {
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
		["区域"]="燕子坞"
	},
},
["朱丹臣"] = {
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
		["区域"]="大理"
	},
},
["简长老"] = {
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
		["区域"]="丐帮"
	},
},
["林震南"] = {
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
		["区域"]="福州"
	},
},
["史青山"] = {
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
		["区域"]="扬州"
	},
},
["霍先生"] = {
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
		["区域"]="大理"
	},
},
["郑镖头"] = {
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
		["区域"]="福州"
	},
},
["范一飞"] = {
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
		["区域"]="归云庄"
	},
},
["陆冠英"] = {
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
		["区域"]="归云庄"
	},
},
["刘菁"] = {
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
		["区域"]="衡阳"
	},
},
["丹青生"] = {
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
		["区域"]="梅庄"
	},
},
["刘国轩"] = {
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
		["区域"]="台湾"
	},
},
["程英"] = {
	{
		["id"]="cheng ying",
		["GoPath"]={
		"takeout 1 gold;e;e;n;n;n;w;n;yz;w;w;s;#10 e;s;s;#3 e;ask lao chuanfu about 出海;/stepwalking_GoStep(\"taohuachuan\")",
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
		["区域"]="桃花岛"
	},
},

["水岱"] = {
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
		["区域"]="血刀门"
	},
},
["卓玛"] = {
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
		["区域"]="血刀门"
	},
},
["刀白凤"] = {
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
		["区域"]="大理"
	},
},

["曲灵风"] = {
	{
		["id"]="qu lingfeng",
		["GoPath"]={
		"takeout 1 gold;e;e;n;n;n;w;n;yz;w;w;s;#10 e;s;s;#3 e;ask lao chuanfu about 出海;/stepwalking_GoStep(\"taohuachuan\")",
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
		["区域"]="桃花岛"
	},
},
["崔员外"] = {
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
		["区域"]="扬州"
	},
},
["海公公"] = {
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
		["区域"]="扬州"
	},
},
["神照上人"] = {
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
		["区域"]="北京"
	},
},
["乌夷老祭司"] = {
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
		["区域"]="大理"
	},
},
["李可秀"] = {
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
		["区域"]="杭州"
	},
},
["张召重"] = {
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
		["区域"]="杭州"
	},
},
["彭连虎"] = {
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
		["区域"]="黄河九曲"
	},
},
["钱青健"] = {
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
		["区域"]="黄河九曲"
	},
},
["南海鳄神"] = {
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
		["区域"]="灵州"
	},
},
["左冷禅"] = {
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
		["区域"]="嵩山"
	},
},

["采花子"] = {
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
		["区域"]="星宿海"
	},
},

["吴青烈"] = {
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
		["区域"]="黄河九曲"
	},
},
["马青雄"] = {
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
		["区域"]="黄河九曲"
	},
},

["波斯商人"] = {
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
		["区域"]="伊犁"
	},
},
["阿拉木罕"] = {
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
		["区域"]="天山"
	},
},

["贡唐仓国师"] = {
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
		["区域"]="北京"
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
	
	Common_AddCustomerTrigger("guobaohu1", "guobaohu1","^你向郭靖打听有关『job』的消息。", "/guobaohu_questjob()")
	Common_AddCustomerTrigger("guobaohu2", "guobaohu1","^这里没有这个人。", "/guobaohu_fail()")
	Common_AddCustomerTrigger("guobaohu3", "guobaohu1","^你向郭靖打听有关『fangqi』的消息。", "ask guo jing about job")
	Common_AddCustomerTrigger("guobaohu4", "guobaohu1","^你向郭靖打听有关『over』的消息。", "/guobaohu_finish()")

	Common_AddCustomerTrigger("guobaohu51", "guobaohu2","^郭靖点了点头，对你说道:蒙古人收买了一批武林败类,好象要暗杀(?P<where>.*)，你去保护他一下", "/guobaohu_startgojob(\"%<where>\")")
	Common_AddCustomerTrigger("guobaohu52", "guobaohu2","^郭靖说道：你上一次的任务还没完成", "/guobaohu_fangqi()")
	Common_AddCustomerTrigger("guobaohu53", "guobaohu2","^郭靖说道：你办事不力，先等会吧", "/guobaohu_pause()")
	Common_AddCustomerTrigger("guobaohu54", "guobaohu2","^郭靖说道：这是件危险工作，我看(.*?)需要休息一会", "/guobaohu_pause()")
	Common_AddCustomerTrigger("guobaohu55", "guobaohu2","^郭靖说道：现在我可没有给你的任务，等会再来吧。", "/guobaohu_pause()")
	
	Common_AddCustomerTrigger("guobaohu102", "guobaohu3","^(?P<front>.*)只能对战斗中的对手使用。", "/guobaohu_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("guobaohu103", "guobaohu3","^(?P<front>.*)只能在战斗中使用。", "/guobaohu_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("guobaohu104", "guobaohu3","^(?P<front>.*)只能在战斗中对对手使用。", "/guobaohu_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("guobaohu105", "guobaohu3","^(?P<front>.*)只能对对手使用。", "/guobaohu_nofight(\"%<front>\")")
	Common_AddCustomerTrigger("guobaohu106", "guobaohu3","^你要对谁施展这一招(?P<front>.*)", "/guobaohu_nofight(\"%<front>\")")

	Common_AddCustomerTrigger("guobaohu151", "guobaohu4","^你要看什么？","/guobaohu_notarget()")		
	Common_AddCustomerTrigger("guobaohu152", "guobaohu4","^你对着(.*?)怒目而视：是不是","/guobaohu_hastarget()")		

	Common_AddCustomerTrigger("guobaohu201", "guobaohu5","^你对黑衣人喝道:大胆狂徒,竟敢在这撒野","/guobaohu_dokill()")	
	Common_AddCustomerTrigger("guobaohu202", "guobaohu5","^你(.*?)站了起来。", "/guobaohu_dazuo()")
	Common_AddCustomerTrigger("guobaohu203", "guobaohu5","^你慢慢收气，归入丹田，睁开眼睛，轻轻的吐了一口气。", "/guobaohu_dazuo()")
	Common_AddCustomerTrigger("guobaohu204", "guobaohu5","^你将内息在体内运行十二周天，返回丹田，只觉得全身暖洋洋的。", "/guobaohu_dazuo()")
	Common_AddCustomerTrigger("guobaohu205", "guobaohu5","^无尽的杀意缓缓散入全身，睁开眼，长吐了一口气。", "/guobaohu_dazuo()")
	Common_AddCustomerTrigger("guobaohu206", "guobaohu5","^你将真气在体内沿脉络运行了一圈，缓缓纳入丹田，放下手，长吐了一口气。", "/guobaohu_dazuo()")
	Common_AddCustomerTrigger("guobaohu207", "guobaohu5","^你真气在体内运行了一个周天，冷热真气收于丹田，慢慢抬起了眼睛。", "/guobaohu_dazuo()")

	Common_AddCustomerTrigger("guobaohu301", "guobaohu7","^你给(.*?)一些白银。", "/guobaohu_gotojob()")
	Common_AddCustomerTrigger("guobaohu302", "guobaohu7","^这样东西不能随便给人。", "drop 1 silver")
	Common_AddCustomerTrigger("guobaohu303", "guobaohu7","^你身上没有这样东西。", "takeout 99 silver")
	Common_AddCustomerTrigger("guobaohu304", "guobaohu7","^你没有那么多的(.*?)", "takeout 99 silver")
	Common_AddCustomerTrigger("guobaohu305", "guobaohu7","^白银不能被分开给人。", "drop 1 silver")
	Common_AddCustomerTrigger("guobaohu306", "guobaohu7","^你的帐号上没有那多", "deposit gold;deposit silver")
		
	Common_AddCustomerTrigger("guobaohu551", "guobaohu12","^请稍后再试！", "/guobaohu_TooManyCommand()")
	Common_AddCustomerTrigger("guobaohu552", "guobaohu12","^你的动作太慢,任务被取消了。", "/guobaohu_fail()")


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
	_G.JobMsg = "郭靖保护任务 人物："..jobpath
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
--quest通用接口

--到达
function guobaohu_OnGoTarget()
	guobaohu_DisableAll()
	EnableTriggerGroup("guobaohu4", true)
	local target = GetVariable("jobpath")
	local targetnum = tonumber(GetVariable("targetnum"))
	Common_SendToWorld("slapsb "..guobaohupath_tbl[target][targetnum]["id"]..";look lo")
end

--返回
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

--失败
function guobaohu_OnTargetFail()
	guobaohu_DisableAll()
	EnableTriggerGroup("guobaohu1", true)
	DoAfterSpecial(1,"ask guo jing about fangqi",10)
end

--继续走
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

--继续回
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
--连接上后自动Robot
function guobaohu_OnConnect()
	local member = tonumber(GetVariable("member",0))
	if member == 1 then
		DoAfterSpecial(1,"chen xy;/guobaohu_start()",10)
	else
		DoAfterSpecial(1,"e;s;s;gc-xi;/guobaohu_start()",10)
	end
end

--重新连线后
function  guobaohu_OnReconnect()
	guobaohu_DisableAll()
	DoAfterSpecial(1,"/guobaohu_fail()",10)
end

--命令太多
function guobaohu_TooManyCommand()
	DoAfterSpecial(20, "/guobaohu_fail()", 10)		
end

--打雷
function guobaohu_OnEvent()
	guobaohu_DisableAll()
	world.Disconnect()
end

--休息
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