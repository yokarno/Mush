--门派job1，黄蓉job，官府job地点路径

menpaijobpath_tbl = {
["大理北门"]={
	["MemberGoPath"] = {
		"chen dl;n;n;n",
	},
	["GoPath"] = {
		"n;e;e;dl;e;n;e;n;n;n;n",
	},
	["ReturnPath"] = {
		"#4 s;w;s;w;yz;w;w;s",
	},
	["SearchStep"] = {"n","n","n","s;s;nw","n","s;se;s;w","w","nu","sd;s","n;wu","ed;e;e;e","eu","n","s;s","n;e","w;wd;w;s","w","n","s;e;e","n","s;w;s","w","e;e","w;s","n;n;n"},
	["SearchStepReturn"] = {"s","s;s","s;s;s","se;s","s;se;s","e","e;e","sd;e;e","n;e;e","ed;e;e","w","wd;w","s;wd;w","n;wd;w","w;wd;w","n","e;n","s;e;n","w;n","s;w;n","n;n","e;n;n","w;n;n","n;n;n"},
},
 
["扬州密林"]={
	["MemberGoPath"] = {
		"chen gc;s;s;s;s;e;e;e",
	},
	["GoPath"] = {
		"#8 e;s;s;s;s;w",
	},
	["ReturnPath"] = {
		"e;n;n;n;n;#8 w",
	},
	["SearchStep"] = {"e","s","w","e;n;n","n","s;s;se","se","nw;nw;w;w","w","w","e;e;e"},
	["SearchStepReturn"] = {"w","n;w","e;n;w","s;w","s;s;w","nw;w","nw;nw;w","e","e;e","e;e;e"},
},
 
["峨嵋草棚"]={
	["MemberGoPath"] = {
		"chen cd;#6 e;ne;e;sw;w",
	},
	["GoPath"] = {
		"n;e;e;em;e",
	},
	["ReturnPath"] = {
		"w;yz;w;w;s",
	},
	["SearchStep"] = {"e","su","w","e;nd;ne","n","s;w","e;sw;sw","sw","ne;ne;w"},
	["SearchStepReturn"] = {"w","nd;w","e;nd;w","sw;w","s;sw;w","e;sw;w","ne;w","ne;ne;w"},
},

["扬州西门"]={
	["MemberGoPath"] = {
		"chen gc;#6 w",
	},

	["GoPath"] = {
		"#6 w",
	},
	["ReturnPath"] = {
		"#6 e",
	},
	["SearchStep"] = {"n","n","n","s;wu","ed;s;s;w","w","w","e;e;e;e","n","n","s;s;e","n","s;s","n;e","w;w;w;sw","w","w","e;e;ne"},
	["SearchStepReturn"] = {"s","s;s","s;s;s","ed;s;s","e","e;e","e;e;e","w","s;w","s;s;w","w;w","s;w;w","n;w;w","w;w;w","ne","e;ne","e;e;ne"},
},

["雪山土路"]={
	["MemberGoPath"] = {
		"chen xs;ed;n;ed;ed;nd;nd;n;ed;s;s;sw;w;w;s;s",
	},
	["GoPath"] = {
		"n;e;e;give 1 silver to ma fu;rideyl;s;se;se;sw;w;w",
	},
	["ReturnPath"] = {
		"e;e;ne;nw;nw;n;give 1 silver to ma fu;rideyz;w;w;s",
	},
	["SearchStep"] = {"w","e;e","e","ne","sw;w;w;n","n","w","e;e","w;s;s"},
	["SearchStepReturn"] = {"e","w","w;w","sw;w;w","s","s;s","e;s;s","w;s;s"},
},

["苏州留园"]={
	["MemberGoPath"] = {
		"chen sz;s;s;s;w",
	},
	["GoPath"] = {
		"n;e;e;sz;e;s;s;s;s;w",
	},
	["ReturnPath"] = {
		"e;#4 n;w;yz;w;w;s",
	},
	["SearchStep"] = {"w","w","sw","ne;e;e;e","e","w;s","s","n;n;n","n","s;e","w;ne","sw;sw","ne;s;w"},
	["SearchStepReturn"] = {"e","e;e","ne;e;e","w","w;w","n;w","n;n;w","s;w","s;s;w","w;s;w","sw;s;w","ne;s;w"},
},

["苏州寒山寺"]={
	["MemberGoPath"] = {
		"chen sz;sw;w;w;w;w;w;nw",
	},
	["GoPath"] = {
		"n;e;e;sz;e;s;sw;#5 w;nw",
	},
	["ReturnPath"] = {
		"se;#5 e;ne;n;w;yz;w;w;s",
	},
	["SearchStep"] = {"enter","e","out","n","s;enter;w;out;se","e","e","w;w;nw"},
	["SearchStepReturn"] = {"out","w;out","enter;w;out","s;enter;w;out","nw","w;nw","w;w;nw"},
},

["杭州飞来峰"]={
	["MemberGoPath"] = {
		"chen hz;w;sw;sw;w;w;w;sw;w;#3 wu;w;#2 wu;#6 nd;sw;s",
	},
	["GoPath"] = {
		"n;e;e;hz;w;w;sw;sw;w;w;w;sw;w;wu;wu;wu;w;wu;wu;#6 nd;sw;s",
	},
	["ReturnPath"] = {
		"n;ne;#6 su;ed;ed;e;ed;ed;ed;e;ne;e;e;e;ne;ne;e;e;yz;w;w;s",
	},
	["SearchStep"] = {"wu","nw","se;ed;eu","eu","wd;wd;n","n","n","s;enter","out;s;ne","su","nd;ne","sw;sw;nw","e","w;n","s;s","n;se;s"},
	["SearchStepReturn"] = {"ed","se;ed","wd","wd;wd","s","s;s","s;s;s","out;s;s","sw;s","nd;sw;s","sw;sw;s","se;s","w;se;s","s;se;s","n;se;s"},
},

["杭州净慈寺"]={
	["MemberGoPath"] = {
		"chen hz;w;sw;sw;w;s",
	},
	["GoPath"] = {
		"n;e;e;hz;w;w;sw;sw;w;s",
	},
	["ReturnPath"] = {
		"n;e;ne;ne;e;e;yz;w;w;s",
	},
	["SearchStep"] = {"n","nu","sd;w","w","e;n","s;e;e","ne","sw;sw","ne;w;s;enter","out"},
	["SearchStepReturn"] = {"s","sd;s","e;s","e;e;s","s;e;s","w;s","sw;w;s","ne;w;s","out"},
},

["杭州翠微亭"]={
	["MemberGoPath"] = {
		"chen hz;w;sw;sw;w;w;w;sw;w;#3 wu;w;#2 wu;#6 nd;sw;s;eu;eu",
	},
	["GoPath"] = {
		"n;e;e;hz;w;w;sw;sw;w;w;w;sw;w;wu;wu;wu;w;wu;wu;#6 nd;sw;s;eu;eu",
	},
	["ReturnPath"] = {
		"wd;wd;n;ne;#6 su;ed;ed;e;ed;ed;ed;e;ne;e;e;e;ne;ne;e;e;yz;w;w;s",
	},
	["SearchStep"] = {"wd","wd","n","n","s;s;wu","ed;eu;eu"},
	["SearchStepReturn"] = {"eu","eu;eu","s;eu;eu","s;s;eu;eu","ed;eu;eu"},
},

["杭州聚景园"]={
	["MemberGoPath"] = {
		"chen hz;w;sw;w;w",
	},
	["GoPath"] = {
		"n;e;e;hz;w;w;sw;w;w",
	},
	["ReturnPath"] = {
		"e;e;ne;e;e;yz;w;w;s",
	},
	["SearchStep"] = {"ne","sw;e","e","ne","sw;sw","ne;w;w"},
	["SearchStepReturn"] = {"sw","w","w;w","sw;w;w","ne;w;w"},
},

["苗疆易溪部"]={
	["MemberGoPath"] = {
		"chen dl;n;n;n;w;w;wu;wd;wd;s;s;se",
	},
	["GoPath"] = {
		"n;e;e;dl;e;n;e;s;s;#3 w;nw;ne;n;wu;wd;wd;s;s;se",
	},
	["ReturnPath"] = {
		"nw;n;n;eu;eu;ed;s;sw;se;#3 e;n;n;w;s;w;yz;w;w;s",
	},
	["SearchStep"] = {"s","n;e","w;nw","n","n","s;s;wu","w","e;ed;se"},
	["SearchStepReturn"] = {"n","w","se","s;se","s;s;se","ed;se","e;ed;se"},
},
 
["扬州中央广场"]={
	["MemberGoPath"] = {
		"chen gc",
	},
	["GoPath"] = {
		"",
	},
	["ReturnPath"] = {
		"",
	},
	["SearchStep"] = {"n","n","e","w;n","s;s;s;w","w","s;s","s","n;n;n;w","w","e;sw","ne;e;e;e;e","e","e","e","w;w;w;s","n;n","s;e;s","n;n","s;w;w;s","w","e;s","w","e;e","w;s","n;n;n"},
	["SearchStepReturn"] = {"s","s;s","w;s;s","s;s;s","e","e;e","n;n;e;e","n;n;n;e;e","e;e;e","e;e;e;e","ne;e;e;e","w","w;w","w;w;w","w;w;w;w","n;w","s;w","n;w;w","s;w;w","n","e;n","n;n","e;n;n","w;n;n","n;n;n"},
},
 
["杭州沿湖大道"]={
	["MemberGoPath"] = {
		"chen hz;w;sw;sw;w;w;w;n;n;ne;n",
	},
	["GoPath"] = {
		"n;e;e;hz;w;w;n;n;n;n;w;sw;w;w;s",
	},
	["ReturnPath"] = {
		"n;e;e;ne;e;s;s;s;s;e;e;yz;w;w;s",
	},
	["SearchStep"] = {"w","e;s","sw","s","n;ne;n;n","e","n","s;e","w;s","n;w;wu","ed;sw","s","n;ne;s"},
	["SearchStepReturn"] = {"e","n","ne;n","n;ne;n","s","w;s","s;w;s","w;w;s","n;w;s","ed;s","ne;s","n;ne;s"},
},

["杭州断桥"]={
	["MemberGoPath"] = {
		"chen hz;w;n;n;n;n;sw",
	},
	["GoPath"] = {
		"n;e;e;hz;w;w;n;n;n;n;sw",
	},
	["ReturnPath"] = {
		"ne;s;s;s;s;e;e;yz;w;w;s",
	},
	["SearchStep"] = {"w","sw","w","e;nw","se;ne;e;ne","se","s","n;nw;s","e","w;s","n;n;w","nu","sd;sw","ne;e;sw"},
	["SearchStepReturn"] = {"e","ne;e","e;ne;e","se;ne;e","sw","nw;sw","n;nw;sw","n;sw","w;n;sw","n;n;sw","e;sw","sd;e;sw","ne;e;sw"},
},

["杭州灵隐寺"]={
	["MemberGoPath"] = {
		"chen hz;w;sw;sw;w;w;w;sw;w;#3 wu;w;#2 wu;#6 nd;sw;n",
	},
	["GoPath"] = {
		"n;e;e;hz;w;w;sw;sw;w;w;w;sw;w;wu;wu;wu;w;wu;wu;#6 nd;sw;n",
	},
	["ReturnPath"] = {
		"s;ne;#6 su;ed;ed;e;ed;ed;ed;e;ne;e;e;e;ne;ne;e;e;yz;w;w;s",
	},
	["SearchStep"] = {"n","s;enter","n","enter","out;s;out;s","s","eu","wd;wu","ed;n;nw","n","s;s","n;e","w;se;ne","su","nd;ne","sw;sw;n"},
	["SearchStepReturn"] = {"s","out","s;out","out;s;out","n","n;n","wd;n;n","ed;n;n","se;n","s;se;n","n;se;n","w;se;n","sw;n","nd;sw;n","sw;sw;n"},
},

["星宿海伊犁"]={
	["MemberGoPath"] = {
		"chen yl;s",
	},
	["GoPath"] = {
		"n;e;e;1s;rideyl;s",
	},
	["ReturnPath"] = {
		"n;1s;rideyz;w;w;s",
	},
	["SearchStep"] = {"nw","se;w","e;e","w;se","se","e","w;sw","ne;nw;wu","n","s;ed;nw"},
	["SearchStepReturn"] = {"se","e","w","nw","nw;nw","w;nw;nw","ne;nw;nw","ed;nw","s;ed;nw"},
},

["武当三天门"]={
	["MemberGoPath"] = {
		"chen wd;e;e;su;su;sd;#5 su;s;s;su;su",
	},
	["GoPath"] = {
		"#6 s;sw;nw;#3 w;wu;su;e;e;su;su;sd;#5 su;s;s;su;su",
	},
	["ReturnPath"] = {
		"nd;nd;n;n;#5 nd;nu;nd;nd;w;w;nd;ed;#3 e;se;ne;#6 n",
	},
	["SearchStep"] = {"nd","nd","n","s;su;su;su","w","e;s","s","n;n;nd"},
	["SearchStepReturn"] = {"su","su;su","s;su;su","nd","e;nd","n;nd","n;n;nd"},
},

["峨嵋十二盘"]={
	["MemberGoPath"] = {
		"chen em;nw;nu;wu;sw;wu",
	},
	["GoPath"] = {
		"n;e;e;a;1s;rideem;1s;rideem;s;d;ne",
	},
	["ReturnPath"] = {
		"sw;u;n;1s;rideem;1s;rideyz;w;w;s",
	},
	["SearchStep"] = {"ed","ne","ed","wu;sw;wu;sw","u","wu","ed;d;ne"},
	["SearchStepReturn"] = {"wu","sw;wu","wu;sw;wu","ne","d;ne","ed;d;ne"},
},

["峨嵋千佛庵"]={
	["MemberGoPath"] = {
		"chen em;sw;s;s",
	},
	["GoPath"] = {
		"n;e;e;em;em;s;d;ne;ed;ne;ed;sd;se;sw;s;s",
	},
	["ReturnPath"] = {
		"n;n;ne;nw;nu;wu;sw;wu;sw;up;n;em;yz;w;w;s",
	},
	["SearchStep"] = {"n","n","ne","sw;s;s;sw","wu","sw","ne;ed;ne;enter","out"},
	["SearchStepReturn"] = {"s","s;s","sw;s;s","ne","ed;ne","ne;ed;ne","out"},
},

["峨嵋九十九道拐"]={
	["MemberGoPath"] = {
		"chen em;sw;s;s;sw",
	},
	["GoPath"] = {
		"n;e;e;em;em;s;d;ne;ed;ne;ed;sd;se;sw;s;s;sw",
	},
	["ReturnPath"] = {
		"ne;n;n;ne;nw;nu;wu;sw;wu;sw;up;n;em;yz;w;w;s",
	},
	["SearchStep"] = {"wu","sw","wu","ed;ne;ed;ne","n","n","s;s;enter","out;sw"},
	["SearchStepReturn"] = {"ed","ne;ed","ed;ne;ed","sw","s;sw","s;s;sw","out;sw"},
},

["明教洪水旗大门"]= {
	["MemberGoPath"] = {
		"chen mj;wu;/stepwalking_SearchStep(\"mingjiao\")",
		"wu;#3 nu;#3 ne;nw;nw;#5 n",
	},
	["GoPath"] = {
		"gc-mj;wu;/stepwalking_SearchStep(\"mingjiao\")",
		"wu;#3 nu;#3 ne;nw;nw;#5 n",
	},
	["ReturnPath"] = {
		"#5s;se;se;#3 sw;#3 sd;ed;ed;mj-gc",
	},
	["SearchStep"] = {"s","s","s","n;n;n;enter","n","s;out"},
	["SearchStepReturn"] = {"n","n;n","n;n;n","out","s;out"},
},

["明教厚土旗门"]={
	["MemberGoPath"] = {
		"chen mj;wu;/stepwalking_SearchStep(\"mingjiao\")",
		"wu;nu;nu;nu;nw;nw;nw;ne;ne;nd;enter;n;e;n",
	},
	["GoPath"] = {
		"gc-mj;wu;/stepwalking_SearchStep(\"mingjiao\")",
		"wu;nu;nu;nu;nw;nw;nw;ne;ne;nd;enter;n;e;n",
	},
	["ReturnPath"] = {
		"s;w;s;out;su;sw;sw;se;se;se;sd;sd;sd;ed;ed;mj-gc",
	},
	["SearchStep"] = {"s","w","s","out","enter;n;e;n;enter","out"},
	["SearchStepReturn"] = {"n","e;n","n;e;n","enter;n;e;n","out"},
},

["明教烈火旗后门"]={
	["MemberGoPath"] = {
		"chen mj;wu;/stepwalking_SearchStep(\"mingjiao\")",
		"wu;nu;nu;nu;nu;enter;nu",
	},
	["GoPath"] = {
		"gc-mj;wu;/stepwalking_SearchStep(\"mingjiao\")",
		"wu;nu;nu;nu;nu;enter;nu",
	},
	["ReturnPath"] = {
		"sd;out;sd;sd;sd;sd;ed;ed;mj-gc",
	},
	["SearchStep"] = {"sd","w","e;e","w;out","sd","nu;enter;nu;nu","nu","nu","sd;sd;sd"},
	["SearchStepReturn"] = {"nu","e;nu","w;nu","enter;nu","nu;enter;nu","sd","sd;sd","sd;sd;sd"},
},

["福州东门"]={
	["MemberGoPath"] = {
		"chen fz;s;s;e;e",
	},
	["GoPath"] = {
		"n;e;e;fz;s;s;e;e",
	},
	["ReturnPath"] = {
		"w;w;n;n;yz;w;w;s",
	},
	["SearchStep"] = {"e","n","s;eu","n","s;wd;w;w","w","w","e;su","nd;e;e"},
	["SearchStepReturn"] = {"w","s;w","wd;w","s;wd;w","e","e;e","e;e;e","nd;e;e"},
},

["福州北大街"]={
	["MemberGoPath"] = {
		"chen fz;s;s;w;n",
	},
	["GoPath"] = {
		"n;e;e;fz;s;s;w;n",
	},
	["ReturnPath"] = {
		"s;e;n;n;yz;w;w;s",
	},
	["SearchStep"] = {"nu","sd;s","w","n","s;w","e;su","nd;e;e","e","w;su","nd;w;s","s","n;e","w;n;n"},
	["SearchStepReturn"] = {"sd","n","e;n","s;e;n","e;e;n","nd;e;n","w;n","w;w;n","nd;w;n","n;n","n;n;n","w;n;n"},
},

["星宿海沙漠"]={
	["MemberGoPath"] = {
		"chen bt;sd;s;sd;sd;se;e;e;se;e;s",
	},
	["GoPath"] = {
		"n;e;e;yl;s;#2 se;#2 w",
	},
	["ReturnPath"] = {
		"#8 e;w;#2 nw;n;yz;w;w;s",
	},
	["SearchStep"] = {"n","s","s","n","s"},
	["SearchStepReturn"] = {"s;n","n","w","s"},
},

["少林寺石阶"]={
	["MemberGoPath"] = {
		"chen shl;s;sd;sd;sd;wd;w;sd;sd;sd",
	},
	["GoPath"] = {
		"enter dong;say 天堂有路你不走呀;d;3;ne;ne;u;sw;e;sd;e;nu;nu;wu",
	},
	["ReturnPath"] = {
		"ed;#2 sd;e;ss-gc",
	},
	["SearchStep"] = {"nu","nu","nu","sd;sd;sd;ed","sd","sd","nu;nu;wu"},
	["SearchStepReturn"] = {"sd","sd;sd","sd;sd;sd","wu","nu;wu","nu;nu;wu"},
},

["襄阳石阶"]={
	["MemberGoPath"] = {
		"chen xy;e;e;e;e;su",
	},
	["GoPath"] = {
		"gc-xi;e;e;e;e;su",
	},
	["ReturnPath"] = {
		"nd;w;w;w;w;xi-gc",
	},
	["SearchStep"] = {"su","su","su","nd;nd;nd;nd","e","w;nu","nu","sd;sd;w","w","e;n","s;s","n;e;su"},
	["SearchStepReturn"] = {"nd","nd;nd","nd;nd;nd","su","w;su","sd;su","sd;sd;su","e;su","e;e;su","s;e;su","n;e;su"},
},

["华山猢狲愁"]={
	["MemberGoPath"] = {
		"chen hs;nd;nd;nd",
	},
	["GoPath"] = {
		"gc-hsjx;se;#2 su;#2 eu;su;#2 eu;su",
	},
	["ReturnPath"] = {
		"nd;#2 wd;nd;#2 wd;#2 nd;nw;hsjx-gc",
	},
	["SearchStep"] = {"su","su","su","nd;nd;wu","nu","sd;wu","ed;ed;nd;nd","wd","wd","eu;eu;su"},
	["SearchStepReturn"] = {"nd","nd;nd","nd;nd;nd","ed;nd","sd;ed;nd","ed;ed;nd","su","eu;su","eu;eu;su"},
},

["华山玉女峰"]={
	["MemberGoPath"] = {
		"chen hs;ask gao genming about all;/stepwalking_SearchStep(\"huashan\")",
		"eu",
	},
	["GoPath"] = {
		"gc-hsjx;se;#2 su;#2 eu;su;#2 eu;#4 su;ask gao genming about all;/stepwalking_SearchStep(\"huashan\")",
		"eu",
	},
	["ReturnPath"] = {
		"wd;#4 nd;#2 wd;nd;#2 wd;#2 nd;nw;hsjx-gc",
	},
	["SearchStep"] = {"w","e;n","sw","ne;w","e;n","n","s;s;nw","ne","sw;se;s;sd","su","su","nd;nd;nu;ne","ne","sw;sw;wd","sw","wu","ed;ne;nd","nd","su;su;eu"},
	["SearchStepReturn"] = {"e","s","ne;s","e;s","s;s","s;s;s","se;s","sw;se;s","nu","nd;nu","nd;nd;nu","sw","sw;sw","eu","ne;eu","ed;ne;eu","su;eu","su;su;eu"},
},

["慕容小径"]={
	["MemberGoPath"] = {
		"chen mp13;s",
	},
	["GoPath"] = {
		"gc-mr;qu yanziwu;/stepwalking_SearchStep(\"murong\")",
		"out;s;s;e;s",
	},
	["ReturnPath"] = {
		"n;n;n;w;s",
	},
	["SearchStep"] = {"s","s","s","n;n;w","w","e;e;e","n","s;e","w;w;n;n","e","w;w","w","e;n","s;s","n;e;n","s;s"},
	["SearchStepReturn"] = {"n","n;n","n;n;n","e;n","e;e;n","w;n","s;w;n","w;w;n","s","w;s","e;s","e;e;s","s;e;s","n;e;s","s;s"},
},

["慕容柳树林"]={
	["MemberGoPath"] = {
		"chen sz;s;s;s;s;s;sw;e;e;se;s;qu mr;/stepwalking_SearchStep(\"murong\")",
		"out;s;w;w;nw;tan qin;/stepwalking_SearchStep(\"murong\")",
		"out;s;e;e;e;e;n",		
	},
	["GoPath"] = {
		"gc-mr;qu mr;/stepwalking_SearchStep(\"murong\")",
		"out;s;w;w;nw;tan qin;/stepwalking_SearchStep(\"murong\")",
		"out;s;e;e;e;e;n",
	},
	["ReturnPath"] = {
		"s;w;w;w;s;s;s;qu yanziwu;/stepwalking_SearchStepReturn(\"murong\")",
		"out;s;s;e;n;n;w;s",
	},
	["SearchStep"] = {"e","n","s;e","s","w","s","n;w","w","w","e;e;s","s","n;w","e;n;n"},
	["SearchStepReturn"] = {"w","s;w","w;w","w;w;n","w;n","n;w;n","n","e;n","e;e;n","n;n","n;n;n","e;n;n"},
},

["大理大和街"]={
	["MemberGoPath"] = {
		"chen dl;s;w",
	},
	["GoPath"] = {
		"n;e;e;dl;e;n",
	},
	["ReturnPath"] = {
		"s;w;yz;w;w;s",
	},
	["SearchStep"] = {"s","n;n","enter","n","s;u","d;out;s;e","e","n","s;s","n;w;n","n","s;e","w;s;s","e","w;s","n;n;w"},
	["SearchStepReturn"] = {"n","s","out;s","s;out;s","d;out;s","w","w;w","s;w;w","n;w;w","s;w","s;s;w","w;s;w","n;w","w;n;w","n;n;w"},
},

["苏州城北门"]={
	["MemberGoPath"] = {
		"chen sz;n;n;n",
	},
	["GoPath"] = {
		"n;e;e;sz;e;n;n",
	},
	["ReturnPath"] = {
		"s;s;w;yz;w;w;s",
	},
	["SearchStep"] = {"w","e;n","nw","sw","ne;se;sw","s","n;ne;s;s","w","e;e","w;s","s","n;sw","ne;n;n"},
	["SearchStepReturn"] = {"e","s","se;s","ne;se;s","ne;s","n;ne;s","n","e;n","w;n","n;n","n;n;n","ne;n;n"},
},

["苏州城玄妙观"]={
	["MemberGoPath"] = {
		"chen sz;sw;w;s",
	},
	["GoPath"] = {
		"n;e;e;1s;ridesz;e;s;sw;w;s",
	},
	["ReturnPath"] = {
		"n;e;ne;n;w;1s;rideyz;w;w;s",
	},
	["SearchStep"] = {"n","n","s;w","w","e;e;e","n","s;s","n;ne","sw;se","nw;nw","se;w;s"},
	["SearchStepReturn"] = {"s","s;s","e;s","e;e;s","w;s","s;w;s","n;w;s","sw;w;s","nw;w;s","se;w;s"},
},

["少林寺山门殿"]={
	["MemberGoPath"] = {
		"chen dp;pawn;bai xiangling;/stepwalking_SearchStep(\"shaolinling\")",
		"chen shl;knock gate;n;mpawn yingxiong ling",
	},
	["GoPath"] = {
		"s;e;e;pawn;bai xiangling;/stepwalking_SearchStep(\"shaolinling\")",
		"w;w;n;enter dong;say 天堂有路你不走呀;d;3;ne;ne;u;sw;e;sd;e;nu;nu;wu;nu;nu;nu;e;ask xu about all;/stepwalking_SearchStep(\"shaolin\")",
		"eu;/stepwalking_SearchStep(\"shaolin\")",
		"nu;nu;nu;n;knock gate;n",
	},
	["ReturnPath"] = {
		"open gate;s;s;#3 sd;wd;w;w;#3 sd;ed;#2 sd;e;s;eu;ed;s;s;s;su;sd;s;e;e;yz;w;w;s;s;e;e;pawn yingxiong ling;w;w;n",
	},
	["SearchStep"] = {"w","e;e","w;n","w","e;e","w;nu","w","e;e","w;n","s;sd;s;open gate;s","w","e;e","w;s","n;knock gate;n"},
	["SearchStepReturn"] = {"e","w","s","e;s","w;s","sd;s","e;sd;s","w;sd;s","s;sd;s","knock gate;n","e;knock gate;n","w;knock gate;n","n;knock gate;n"},
},

["少林寺走廊"]={
	["MemberGoPath"] = {
		"chen dp;pawn;bai xiangling;/stepwalking_SearchStep(\"shaolinling\")",
		"chen shl;knock gate;n;mpawn yingxiong ling;n;nu;n;n;n;nu;n;n;e",
	},
	["GoPath"] = {
		"s;e;e;pawn;bai xiangling;/stepwalking_SearchStep(\"shaolinling\")",
		"w;w;n;enter dong;say 天堂有路你不走呀;d;3;ne;ne;u;sw;e;sd;e;nu;nu;wu;nu;nu;nu;e;ask xu about all;/stepwalking_SearchStep(\"shaolin\")",
		"eu;/stepwalking_SearchStep(\"shaolin\")",
		"nu;nu;nu;n;knock gate;n;n;nu;n;n;n;nu;n;n;e",
	},
	["ReturnPath"] = {
		"w;s;s;sd;s;s;s;sd;s;s;open gate;s;s;#3 sd;wd;w;w;#3 sd;ed;#2 sd;e;s;eu;ed;s;s;s;su;sd;s;e;e;yz;w;w;s;s;e;e;pawn yingxiong ling;w;w;n",
	},
	["SearchStep"] = {"e","n","n","s;w","s;e;sd","s","n;nu;w;n;n","n","s;s;w","n","s;nu","sd;w","e;e;s;w","s","e","w;w","e;s","n;n;u","n","s;d;w","w","e;e;e;s;s","e","w;n;e","n","s;s","n;w;n"},
	["SearchStepReturn"] = {"w","s;w","s;s;w","s","nu;w","n;nu;w","s;s","s;s;s","e;s","s;e;s","sd;e;s","e;e;s","e","n;e","n","e;e;n","n;e;n","d;e","s;d;e","e;e","e;e;e","n;n","w;n;n","w;n","s;w;n","n;w;n"},
},

["少林寺般若堂九部"]={
	["MemberGoPath"] = {
		"chen dp;pawn;bai xiangling;/stepwalking_SearchStep(\"shaolinling\")",
		"chen shl;knock gate;n;mpawn yingxiong ling;n;nu;n;n;n;nu;n;w;w;n;n;n;n",
	},
	["GoPath"] = {
		"s;e;e;pawn;bai xiangling;/stepwalking_SearchStep(\"shaolinling\")",
		"w;w;n;enter dong;say 天堂有路你不走呀;d;3;ne;ne;u;sw;e;sd;e;nu;nu;wu;nu;nu;nu;e;ask xu about all;/stepwalking_SearchStep(\"shaolin\")",
		"eu;/stepwalking_SearchStep(\"shaolin\")",
		"nu;nu;nu;n;knock gate;n;n;nu;n;n;n;nu;n;n;w;w;sd",
	},
	["ReturnPath"] = {
		"nu;e;e;s;s;sd;s;s;s;sd;s;s;open gate;s;s;#3 sd;wd;w;w;#3 sd;ed;#2 sd;e;s;eu;ed;s;s;s;su;sd;s;e;e;yz;w;w;s;s;e;e;pawn ling;w;w;n",
	},
	["SearchStep"] = {"s","s","s","n;n;n;nu","n","n","s;e","w;s;e","e","w;s","n;w;sd"},
	["SearchStepReturn"] = {"n","n;n","n;n;n","sd","s;sd","s;s;sd","w;s;sd","w;sd","w;w;sd","n;w;sd"},
},

["武当山路"]={
	["MemberGoPath"] = {
		"chen wd;e;e",
	},
	["GoPath"] = {
		"#6 s;sw;nw;#3 w;wu;su;e;e",
	},
	["ReturnPath"] = {
		"w;w;nd;ed;#3 e;se;ne;#6 n",
	},
	["SearchStep"] = {"su","su","sd","nu;nd;nd;w","w","nd","su;s","n;ed","wu;e;e"},
	["SearchStepReturn"] = {"nd","nd;nd","nu;nd;nd","e","e;e","su;e;e","n;e;e","wu;e;e"},
},

["雪山山脚"]={
	["MemberGoPath"] = {
		"chen xs;ed;n;ed;ed;nd;nd;n;ed",
	},
	["GoPath"] = {
		"n;e;e;give 1 silver to ma fu;rideyl;s;se;se;sw;w;w;n;n;e;e;ne;n;n",
	},
	["ReturnPath"] = {
		"s;s;sw;w;w;s;s;e;e;ne;nw;nw;n;give 1 silver to ma fu;rideyz;w;w;s",
	},
	["SearchStep"] = {"wu","s","su","nd;n;ed;s","s","sw","ne;n;n"},
	["SearchStepReturn"] = {"ed","n;ed","nd;n;ed","n","n;n","ne;n;n"},
},

["峨嵋九老洞"]={
	["MemberGoPath"] = {
		"chen em;sw;s;s;sw;wu;sw;wu;sw;enter",
	},
	["GoPath"] = {
		"n;e;e;em;em;s;wu;se;enter",
	},
	["ReturnPath"] = {
		"out;nw;ed;n;em;yz;w;w;s",
	},
	["SearchStep"] = {"out","nw","wu","ed;ed","wu;se;ne","ed","wu;sw;enter;e","leave"},
	["SearchStepReturn"] = {"enter","se;enter","ed;se;enter","wu;se;enter","sw;enter","wu;sw;enter","leave"},
},

["峨嵋古德林"]={
	["MemberGoPath"] = {
		"chen em;nw;e",
	},
	["GoPath"] = {
		"n;e;e;give 1 silver to ma fu;rideem;give 1 silver to ma fu;rideem;s;d;ne;ed;ne;ed;sd;e",
	},
	["ReturnPath"] = {
		"s;nu;wu;sw;wu;sw;up;n;give 1 silver to ma fu;rideem;give 1 silver to ma fu;rideyz;w;w;s",
	},
	["SearchStep"] = {"nw","s","se","se","nw;sw","ne;nw;nu","enter","out;wu","ed;sd;e"},
	["SearchStepReturn"] = {"nw","e","nw;e","nw;nw;e","ne;nw;e","sd;e","out;sd;e","ed;sd;e"},
},

["函古关"]={
	["MemberGoPath"] = {
		"chen ly;w;w;w;w",
	},
	["GoPath"] = {
		"#9 w;nw;#12 w",
	},
	["ReturnPath"] = {
		"#12 e;se;#9 e",
	},
	["SearchStep"] = {"e","e","e","w;w;w;w","n","n","s;s;w","w","e;e;e;s","e","w;s","e","w;w","e;s","n;n;n"},
	["SearchStepReturn"] = {"w","w;w","w;w;w","e","s;e","s;s;e","e;e","e;e;e","n","w;n","n;n","w;n;n","e;n;n","n;n;n"},
},

["长安终南山口"]={
	["MemberGoPath"] = {
		"chen ly;w;w;w;w;w;w",
	},
	["GoPath"] = {
		"#9 w;nw;#14 w",
	},
	["ReturnPath"] = {
		"#14 e;se;#9 e",
	},
	["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},

["终南山口"]={
	["MemberGoPath"] = {
		"chen ly;w;w;w;w;w;w",
	},
	["GoPath"] = {
		"#9 w;nw;#14 w",
	},
	["ReturnPath"] = {
		"#14 e;se;#9 e",
	},
	["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},

["福州闽江"]={
	["MemberGoPath"] = {
		"chen fz;s;s;w;w;w;w;w;nw;w;nw",
	},
	["GoPath"] = {
		"n;e;e;fz;s;s;#5 w;nw;w;nw",
	},
	["ReturnPath"] = {
		"se;e;se;#5 e;n;n;yz;w;w;s",
	},
	["SearchStep"] = {"nw","nu","nd","su;sd;sw","sw","ne;ne;se;se","n","s;e","e","w;w;nw"},
	["SearchStepReturn"] = {"se","sd;se","su;sd;se","ne;se","ne;ne;se","nw","s;nw","w;nw","w;w;nw"},
},

["闽江"]={
	["MemberGoPath"] = {
		"chen fz;s;s;w;w;w;w;w;nw;w;nw",
	},
	["GoPath"] = {
		"n;e;e;fz;s;s;#5 w;nw;w;nw",
	},
	["ReturnPath"] = {
		"se;e;se;#5 e;n;n;yz;w;w;s",
	},
	["SearchStep"] = {"nw","nu","nd","su;sd;sw","sw","ne;ne;se;se","n","s;e","e","w;w;nw"},
	["SearchStepReturn"] = {"se","sd;se","su;sd;se","ne;se","ne;ne;se","nw","s;nw","w;nw","w;w;nw"},
},

["汉水南岸"]={
	["MemberGoPath"] = {
		"chen gc;#8 n",
	},
	["GoPath"] = {
		"#8 n",
	},
	["ReturnPath"] = {
		"#8 s",
	},
	["SearchStep"] = {"s","s","s","n;n;n"},
	["SearchStepReturn"] = {"n","n;n","n;n;n"},
},

["华山中条山密林"]={
	["MemberGoPath"] = {
		"chen ly;w;w;w;w;w;n;n;ne;e;e;eu;su",
	},
	["GoPath"] = {
		"#9 w;nw;#13 w;n;n;ne;e;e;eu;su",
	},
	["ReturnPath"] = {
		"nd;wd;w;w;sw;s;s;#13 e;se;#9 e",
	},
	["SearchStep"] = {"nd","wd","w","w","sw","ne;e;e;eu;su"},
	["SearchStepReturn"] = {"su","eu;su","e;eu;su","e;e;eu;su","ne;e;e;eu;su"},
},

["中条山密林"]={
	["MemberGoPath"] = {
		"chen ly;w;w;w;w;w;n;n;ne;e;e;eu;su",
	},
	["GoPath"] = {
		"#9 w;nw;#13 w;n;n;ne;e;e;eu;su",
	},
	["ReturnPath"] = {
		"nd;wd;w;w;sw;s;s;#13 e;se;#9 e",
	},
	["SearchStep"] = {"nd","wd","w","w","sw","ne;e;e;eu;su"},
	["SearchStepReturn"] = {"su","eu;su","e;eu;su","e;e;eu;su","ne;e;e;eu;su"},
},

["星宿天山脚下"]={
	["MemberGoPath"] = {
		"chen yl;s;se",
	},
	["GoPath"] = {
		"n;e;e;1s;rideyl;s;se",
	},
	["ReturnPath"] = {
		"nw;n;1s;rideyz;w;w;s",
	},
	["SearchStep"] = {"s","n;nw","w","e;e","w;nw","se;se;wu","n","nu","sd;nd","su;s;ed;se","sw","w","e;ne;e","se","nw;w;w","#7 e;w;nw"},
	["SearchStepReturn"] = {"n","se","e;se","w;se","se;se","ed","s;ed","sd;s;ed","su;s;ed","nw","ne;nw","e;ne;nw","w;nw","nw;w;nw","#7 e;w;nw"},
},

["天山脚下"]={
	["MemberGoPath"] = {
		"chen yl;s;se",
	},
	["GoPath"] = {
		"n;e;e;1s;rideyl;s;se",
	},
	["ReturnPath"] = {
		"nw;n;1s;rideyz;w;w;s",
	},
	["SearchStep"] = {"s","n;nw","w","e;e","w;nw","se;se;wu","n","nu","sd;nd","su;s;ed;se","sw","w","e;ne;e","se","nw;w;w","#7 e;w;nw"},
	["SearchStepReturn"] = {"n","se","e;se","w;se","se;se","ed","s;ed","sd;s;ed","su;s;ed","nw","ne;nw","e;ne;nw","w;nw","nw;w;nw","#7 e;w;nw"},
},

["华山脚下"]={
	["MemberGoPath"] = {
		"chen hs;#4 nd;wd;wd;nd;wd;wd;nd;nd;nw",
	},
	["GoPath"] = {
		"gc-hsjx",
	},
	["ReturnPath"] = {
		"hsjx-gc",
	},
	["SearchStep"] = {"n","s;w","w","w","e;s","n;e;e;se","ne","sw;su","su","nd;nd;nw"},
	["SearchStepReturn"] = {"s","e","e;e","e;e;e","n;e;e","nw","sw;nw","nd;nw","nd;nd;nw"},
},

["平定州"]={
	["MemberGoPath"] = {
		"chen tam;w;w;w;w;se;w",
	},
	["GoPath"] = {
		"n;e;e;bj;w;w;n;w;w;w;w;se;w",
	},
	["ReturnPath"] = {
		"e;nw;e;e;e;e;s;e;e;yz;w;w;s",
	},
	["SearchStep"] = {"e","e","e","w;w;w;w","sw","e","w;w","e;sw","ne;ne;e"},
	["SearchStepReturn"] = {"w","w;w","w;w;w","e","ne;e","w;ne;e","e;ne;e","ne;ne;e"},
},

["黑木崖乱石坡"]={
	["MemberGoPath"] = {
		"chen tam;w;w;w;w;se;w;w;sw",
	},
	["GoPath"] = {
		"n;e;e;bj;w;w;n;w;w;w;w;se;w;w;sw",
	},
	["ReturnPath"] = {
		"ne;e;e;nw;e;e;e;e;s;e;e;yz;w;w;s",
	},
	["SearchStep"] = {"e","su","nd;w;ne","e","e","w;w;sw;sw","sw","ne;ne;w","w","w","e;su","nd;e;n","su","nd;e","s","e","s;e"},
	["SearchStepReturn"] = {"w","nd;w","sw","w;sw","w;w;sw","ne","ne;ne","e","e;e","e;e;e","nd;e;e","n;n;e","nd;n;n;e","s;n;e","n;e","s;e"},
},

["乱石坡"]={
	["MemberGoPath"] = {
		"chen tam;w;w;w;w;se;w;w;sw",
	},
	["GoPath"] = {
		"n;e;e;bj;w;w;n;w;w;w;w;se;w;w;sw",
	},
	["ReturnPath"] = {
		"ne;e;e;nw;e;e;e;e;s;e;e;yz;w;w;s",
	},
	["SearchStep"] = {"e","su","nd;w;ne","e","e","w;w;sw;sw","sw","ne;ne;w","w","w","e;su","nd;e;n","su","nd;e","s","e","s;e"},
	["SearchStepReturn"] = {"w","nd;w","sw","w;sw","w;w;sw","ne","ne;ne","e","e;e","e;e;e","nd;e;e","n;n;e","nd;n;n;e","s;n;e","n;e","s;e"},
},

["华山村南村口"]={
	["MemberGoPath"] = {
		"chen hs;#4 nd;wd;wd;nd;wd;wd;nd;nd;nw;#5 w;#5 s",
	},
	["GoPath"] = {
		"#9 w;nw;#13 w;n;n;nw;n",
	},
	["ReturnPath"] = {
		"s;se;s;s;#13 e;se;#9 e",
	},
	["SearchStep"] = {"n","n","n","s;e","w;s;s;s","se","s","n;ne","sw;nw;n"},
	["SearchStepReturn"] = {"s","s;s","s;s;s","w;s;s","n","nw;n","n;nw;n","sw;nw;n"},
},

["福州闽赣古道"]={
	["MemberGoPath"] = {
		"chen gc;#8 s;su;se;se",
	},
	["GoPath"] = {
		"#8 s;su;se;se",
	},
	["ReturnPath"] = {
		"nw;nw;nd;#8 n",
	},
	["SearchStep"] = {"eu","ed","ne","sw;wu;wd;nw","nw","nd","su;se;sw","w","e;ne;se"},
	["SearchStepReturn"] = {"wd","wu;wd","sw;wu;wd","se","se;se","su;se;se","ne;se","e;ne;se"},
},

["闽赣古道"]={
	["MemberGoPath"] = {
		"chen gc;#8 s;su;se;se",
	},
	["GoPath"] = {
		"#8 s;su;se;se",
	},
	["ReturnPath"] = {
		"nw;nw;nd;#8 n",
	},
	["SearchStep"] = {"eu","ed","ne","sw;wu;wd;nw","nw","nd","su;se;sw","w","e;ne;se"},
	["SearchStepReturn"] = {"wd","wu;wd","sw;wu;wd","se","se;se","su;se;se","ne;se","e;ne;se"},
},

["泰山玉皇顶"]={
	["MemberGoPath"] = {
		"chen mp3;nw",
	},
	["GoPath"] = {
		"#10 e;ne;#5 n;#4 nu;#2 n;nu;nu;n;n;nu;nu;wu;nu;n;n;wu;wu;nw;#4 nu;/stepwalking_SearchStep(\"taishan\")",
		"#5 nu",
	},
	["ReturnPath"] = {
		"#9 sd;se;ed;ed;s;s;sd;ed;sd;sd;s;s;sd;sd;s;s;#4 sd;#5 s;sw;#10 w",
	},
	["SearchStep"] = {"u","w","e;e","w;d;w","nu","sd;e;ed","eu","e","w;wd;wu;sd","w","nu","sd;e;eu","ed","wu;eu","wd;wd;sd","sd","nu;nu;nu"},
	["SearchStepReturn"] = {"d","e;d","w;d","e","sd;e","wu","wd;wu","w;wd;wu","nu","e;nu","sd;e;nu","wd;nu","wu;wd;nu","wd;wd;nu","nu;nu","nu;nu;nu"},
},

["玉皇顶"]={
	["MemberGoPath"] = {
		"chen mp3;nw",
	},
	["GoPath"] = {
		"#10 e;ne;#5 n;#4 nu;#2 n;nu;nu;n;n;nu;nu;wu;nu;n;n;wu;wu;nw;#4 nu;/stepwalking_SearchStep(\"taishan\")",
		"#5 nu",
	},
	["ReturnPath"] = {
		"#9 sd;se;ed;ed;s;s;sd;ed;sd;sd;s;s;sd;sd;s;s;#4 sd;#5 s;sw;#10 w",
	},
	["SearchStep"] = {"u","w","e;e","w;d;w","nu","sd;e;ed","eu","e","w;wd;wu;sd","w","nu","sd;e;eu","ed","wu;eu","wd;wd;sd","sd","nu;nu;nu"},
	["SearchStepReturn"] = {"d","e;d","w;d","e","sd;e","wu","wd;wu","w;wd;wu","nu","e;nu","sd;e;nu","wd;nu","wu;wd;nu","wd;wd;nu","nu;nu","nu;nu;nu"},
},

["星宿六盘山"]={
	["MemberGoPath"] = {
		"chen yl;s;se;se;e;se;e;e;eu",
	},
	["GoPath"] = {
		"n;e;e;give 1 silver to ma fu;rideyl;s;se;se;e;se;e;e;eu",
	},
	["ReturnPath"] = {
		"wd;w;w;nw;w;nw;nw;n;give 1 silver to ma fu;rideyz;w;w;s",
	},
	["SearchStep"] = {"sd","e","e","w;w;nu;wd","w","w","e;e;eu"},
	["SearchStepReturn"] = {"nu","w;nu","w;w;nu","eu","e;eu","e;e;eu"},
},

["六盘山"]={
	["MemberGoPath"] = {
		"chen yl;s;se;se;e;se;e;e;eu",
	},
	["GoPath"] = {
		"n;e;e;give 1 silver to ma fu;rideyl;s;se;se;e;se;e;e;eu",
	},
	["ReturnPath"] = {
		"wd;w;w;nw;w;nw;nw;n;give 1 silver to ma fu;rideyz;w;w;s",
	},
	["SearchStep"] = {"sd","e","e","w;w;nu;wd","w","w","e;e;eu"},
	["SearchStepReturn"] = {"nu","w;nu","w;w;nu","eu","e;eu","e;e;eu"},
},

["星宿天山山路"]={
	["MemberGoPath"] = {
		"chen yl;s;se;wu",
	},
	["GoPath"] = {
		"n;e;e;1s;rideyl;s;se;wu",
	},
	["ReturnPath"] = {
		"ed;nw;n;yz;w;w;s",
	},
	["SearchStep"] = {"n","nu","wu","ed;sd;nd","su;s;ed","s","n;nw","w","e;e","w;nw","se;se;se","e","w;sw","ne;nw;wu"},
	["SearchStepReturn"] = {"s","sd;s","ed;sd;s","su;s","wu","n;wu","se;wu","e;se;wu","w;se;wu","se;se;wu","nw;wu","w;nw;wu","ne;nw;wu"},
},

["天山山路"]={
	["MemberGoPath"] = {
		"chen yl;s;se;wu",
	},
	["GoPath"] = {
		"n;e;e;1s;rideyl;s;se;wu",
	},
	["ReturnPath"] = {
		"ed;nw;n;yz;w;w;s",
	},
	["SearchStep"] = {"n","nu","wu","ed;sd;nd","su;s;ed","s","n;nw","w","e;e","w;nw","se;se;se","e","w;sw","ne;nw;wu"},
	["SearchStepReturn"] = {"s","sd;s","ed;sd;s","su;s","wu","n;wu","se;wu","e;se;wu","w;se;wu","se;se;wu","nw;wu","w;nw;wu","ne;nw;wu"},
},

["星宿嘉峪关"]={
	["MemberGoPath"] = {
		"chen yl;s;se;se;e;se;e;e",
	},
	["GoPath"] = {
		"n;e;e;give 1 silver to ma fu;rideyl;s;se;se;e;se;e;e",
	},
	["ReturnPath"] = {
		"w;w;nw;w;nw;nw;n;give 1 silver to ma fu;rideyz;w;w;s",
	},
	["SearchStep"] = {"w","w","w","e;n","s;nw","se;e;e;eu","sd","e","w;nu;wd"},
	["SearchStepReturn"] = {"e","e;e","e;e;e","s;e;e","se;e;e","wd","nu;wd","w;nu;wd"},
},

["嘉峪关"]={
	["MemberGoPath"] = {
		"chen yl;s;se;se;e;se;e;e",
	},
	["GoPath"] = {
		"n;e;e;give 1 silver to ma fu;rideyl;s;se;se;e;se;e;e",
	},
	["ReturnPath"] = {
		"w;w;nw;w;nw;nw;n;give 1 silver to ma fu;rideyz;w;w;s",
	},
	["SearchStep"] = {"w","w","w","e;n","s;nw","se;e;e;eu","sd","e","w;nu;wd"},
	["SearchStepReturn"] = {"e","e;e","e;e;e","s;e;e","se;e;e","wd","nu;wd","w;nu;wd"},
},

["北京西单北大街"]={
	["MemberGoPath"] = {
		"chen tam;w;w;n;n",
	},
	["GoPath"] = {
		"n;e;e;bj;w;w;n;w;w;n;n",
	},
	["ReturnPath"] = {
		"s;s;e;e;s;e;e;yz;w;w;s",
	},
	["SearchStep"] = {"e","u","d;w;n","n","n","s;e","w;nu","sd;s;s;s","w","e;s","s","n;e","w;w","e;n;n"},
	["SearchStepReturn"] = {"w","d;w","s","s;s","s;s;s","w;s;s","sd;s;s","n","e;n","n;n","n;n;n","w;n;n","e;n;n"},
},

["西单北大街"]={
	["MemberGoPath"] = {
		"chen tam;w;w;n;n",
	},
	["GoPath"] = {
		"n;e;e;bj;w;w;n;w;w;n;n",
	},
	["ReturnPath"] = {
		"s;s;e;e;s;e;e;yz;w;w;s",
	},
	["SearchStep"] = {"e","u","d;w;n","n","n","s;e","w;nu","sd;s;s;s","w","e;s","s","n;e","w;w","e;n;n"},
	["SearchStepReturn"] = {"w","d;w","s","s;s","s;s;s","w;s;s","sd;s;s","n","e;n","n;n","n;n;n","w;n;n","e;n;n"},
},

--["武道场"]={
--	["GoPath"] = {
--		"#7 w;s"},
--	["ReturnPath"] = {
--		"n;#7 e"},
--	["SearchStep"] = {"skyline","out;n","w","w","e;e;e","sd","nu;n","s;e","w;sd","nu;w;s"},
--	["SearchStepReturn"] = {"out","s","e;s","e;e;s","w;s","nu;w;s","s;w;s","w;w;s","nu;w;s"},
--},

["北京王府井大街"]={
	["MemberGoPath"] = {
		"chen tam;e;e;n;n",
	},
	["GoPath"] = {
		"n;e;e;bj;w;w;n;e;e;n;n",
	},
	["ReturnPath"] = {
		"s;s;w;w;s;e;e;yz;w;w;s",
	},
	["SearchStep"] = {"w","u","d;e;e","e","ne","sw;se","nw;w;w;n","w","w","e;s","n;e;n","s;s;s","w","w","e;e;s","w","e;e","w;n;n"},
	["SearchStepReturn"] = {"e","d;e","w","w;w","sw;w;w","nw;w;w","s","e;s","e;e;s","n;e;s","s;s","n","e;n","e;e;n","n;n","e;n;n","w;n;n"},
},

["王府井大街"]={
	["MemberGoPath"] = {
		"chen tam;e;e;n;n",
	},
	["GoPath"] = {
		"n;e;e;bj;w;w;n;e;e;n;n",
	},
	["ReturnPath"] = {
		"s;s;w;w;s;e;e;yz;w;w;s",
	},
	["SearchStep"] = {"w","u","d;e;e","e","ne","sw;se","nw;w;w;n","w","w","e;s","n;e;n","s;s;s","w","w","e;e;s","w","e;e","w;n;n"},
	["SearchStepReturn"] = {"e","d;e","w","w;w","sw;w;w","nw;w;w","s","e;s","e;e;s","n;e;s","s;s","n","e;n","e;e;n","n;n","e;n;n","w;n;n"},
},

["全真教碑"]={
	["MemberGoPath"] = {
		"chen quz;wd",
	},
	["GoPath"] = {
		"gc-znsj;;n;#3 nu;#2 wu;nu;nu;n;w;nw;n;#5 nu;se;eu;su;e",
	},
	["ReturnPath"] = {
		"w;wd;w;nd;wd;nw;#5 sd;s;se;e;s;sd;sd;#2 ed;#3 sd;s;;znsj-gc",
	},
	["SearchStep"] = {"eu","wd;nu","nu","nu","sd;sd;sd;w","su","su","nd;nd;nd","nu","sd;wd","eu;su;e"},
	["SearchStepReturn"] = {"wd","sd","sd;sd","sd;sd;sd","e","nd;e","nd;nd;e","su;e","sd;su;e","eu;su;e"},
},

["全真老妪岩"]={
	["MemberGoPath"] = {
		"chen quz;wd;w;nd;wd;nw;#4 sd",
	},
	["GoPath"] = {
		"gc-znsj;;n;#3 nu;#2 wu;n;w;nw;n;nu",
	},
	["ReturnPath"] = {
		"sd;s;se;e;s;#2 sd;#2 ed;#3 sd;s;;znsj-gc",
	},
	["SearchStep"] = {"nu","nu","nu","sd;wu","ed;sd;sd;sd","ed","wu;s","w","e;se","nw;n;nu"},
	["SearchStepReturn"] = {"sd","sd;sd","sd;sd;sd","ed;sd;sd","nu","wu;nu","n;nu","e;n;nu","nw;n;nu"},
},

["老妪岩"]={
	["MemberGoPath"] = {
		"chen quz;wd;w;nd;wd;nw;#4 sd",
	},
	["GoPath"] = {
		"gc-znsj;;n;#3 nu;#2 wu;n;w;nw;n;nu",
	},
	["ReturnPath"] = {
		"sd;s;se;e;s;#2 sd;#2 ed;#3 sd;s;;znsj-gc",
	},
	["SearchStep"] = {"nu","nu","nu","sd;wu","ed;sd;sd;sd","ed","wu;s","w","e;se","nw;n;nu"},
	["SearchStepReturn"] = {"sd","sd;sd","sd;sd;sd","ed;sd;sd","nu","wu;nu","n;nu","e;n;nu","nw;n;nu"},
},

["关外老龙头"]={
	["MemberGoPath"] = {
		"chen tam;e;e;e;e;se;se;ne",
	},
	["GoPath"] = {
		"n;e;e;1s;ridebj;1s;rideht;e;#6 s;#2 sw;s;#3 sw;se",
	},
	["ReturnPath"] = {
		"nw;#3 ne;n;#2 ne;#6 n;w;1s;ridebj;1s;rideyz;w;w;s",
	},
	["SearchStep"] = {"nw","ne","ne","sw;sw;se;sw","s","s","n;w","e;n;nw","nw","se;s","n;se;ne"},
	["SearchStepReturn"] = {"se","sw;se","sw;sw;se","ne","n;ne","n;n;ne","e;n;ne","se;ne","se;se;ne","n;se;ne"},
},

["老龙头"]={
	["MemberGoPath"] = {
		"chen tam;e;e;e;e;se;se;ne",
	},
	["GoPath"] = {
		"n;e;e;1s;ridebj;1s;rideht;e;#6 s;#2 sw;s;#3 sw;se",
	},
	["ReturnPath"] = {
		"nw;#3 ne;n;#2 ne;#6 n;w;1s;ridebj;1s;rideyz;w;w;s",
	},
	["SearchStep"] = {"nw","ne","ne","sw;sw;se;sw","s","s","n;w","e;n;nw","nw","se;s","n;se;ne"},
	["SearchStepReturn"] = {"se","sw;se","sw;sw;se","ne","n;ne","n;n;ne","e;n;ne","se;ne","se;se;ne","n;se;ne"},
},

["嘉兴城"]={
	["MemberGoPath"] = {
		"chen gc;#10 e;s;s;e",
	},
	["GoPath"] = {
		"n;e;e;sz;e;s;se;e;e;e;e",
	},
	["ReturnPath"] = {
		"w;w;w;w;nw;n;w;yz;w;w;s",
	},
	["SearchStep"] = {"w","n","nw","se;s;w","w","e;e;e;e","se","nw;e","w;w"},
	["SearchStepReturn"] = {"e","s;e","se;s;e","e;e","e;e;e","w","nw;w","w;w"},
},

["扬州西门"]={
	["MemberGoPath"] = {
		"chen gc;#6 w",
	},
	["GoPath"] = {
		"#6 w",
	},
	["ReturnPath"] = {
		"#6 e",
	},
	["SearchStep"] = {"n","n","n","s;wu","ed;s;s;w","w","w","e;e;e;e","n","n","s;s;e","n","s;s","n;e","w;w;w;sd","w","w","e;e;nu"},
	["SearchStepReturn"] = {"s","s;s","s;s;s","ed;s;s","e","e;e","e;e;e","w","s;w","s;s;w","w;w","s;w;w","n;w;w","w;w;w","nu","e;nu","e;e;nu"},
},

["福州仙霞岭"]={
	["MemberGoPath"] = {
		"chen gc;#10 e;se;s;e;s;s;su",
	},
	["GoPath"] = {
		"n;e;e;fz;s;s;#5 w;nw;w;nw;nw;nu;nd;nu;n",
	},
	["ReturnPath"] = {
		"s;sd;su;sd;se;se;e;se;#5 e;n;n;yz;w;w;s",
	},
	["SearchStep"] = {"s","w","e;sd","w","e;su","nd;nu;n;nd","e","w;n","s;w","n","e","s;e","w;se","nw;s;su"},
	["SearchStepReturn"] = {"n","e;n","nu;n","e;nu;n","nd;nu;n","su","w;su","s;su","e;su","s;e;su","s;s;su","w;s;su","nw;s;su"},
},

["仙霞岭"]={
	["MemberGoPath"] = {
		"chen gc;#10 e;se;s;e;s;s;su",
	},
	["GoPath"] = {
		"n;e;e;fz;s;s;#5 w;nw;w;nw;nw;nu;nd;nu;n",
	},
	["ReturnPath"] = {
		"s;sd;su;sd;se;se;e;se;#5 e;n;n;yz;w;w;s",
	},
	["SearchStep"] = {"s","w","e;sd","w","e;su","nd;nu;n;nd","e","w;n","s;w","n","e","s;e","w;se","nw;s;su"},
	["SearchStepReturn"] = {"n","e;n","nu;n","e;nu;n","nd;nu;n","su","w;su","s;su","e;su","s;e;su","s;s;su","w;s;su","nw;s;su"},
},

["泰山一天门"]= {
	["MemberGoPath"] = {
		"chen gc;#10 e;ne;#5 n;#3 nu",
	},
	["GoPath"] = {
		"gc-ts;n;n;#3 nu",
	},
	["ReturnPath"] = {
		"#3 sd;s;s;ts-gc",
	},
	["SearchStep"] = {"sd","sd","s","n;w","e;nu;nu;nu","eu","nu","sd;wd;sd"},
	["SearchStepReturn"] = {"nu","nu;nu","n;nu;nu","e;nu;nu","sd","wd;sd","sd;wd;sd"},
},

["宁远"]={
	["GoPath"] = {
		"gc-ts;n;n;nu;nu;nu",
	},
	["ReturnPath"] = {
		"sd;sd;sd;s;s;ts-gc",
	},
	["SearchStep"] = {"sd","sd","s","n;w","e;nu;nu;nu","eu","nu","sd;wd;sd"},
	["SearchStepReturn"] = {"nu","nu;nu","n;nu;nu","e;nu;nu","sd","wd;sd","sd;wd;sd"},
},

["关外小土屋"]={
	["MemberGoPath"] = {
		"chen gw;n;n;w;s",
	},
	["GoPath"] = {
		"gc-gw;n;w;s",
	},
	["ReturnPath"] = {
		"n;e;s;gw-gc",
	},
	["SearchStep"] = {"n","e","s","e","w;s","n;n;w;s"},
	["SearchStepReturn"] = {"s","w;s","n;w;s","w;n;w;s","n;n;w;s"},
},

["小土屋"]={
	["MemberGoPath"] = {
		"chen gw;n;n;w;s",
	},
	["GoPath"] = {
		"gc-gw;n;w;s",
	},
	["ReturnPath"] = {
		"n;e;s;gw-gc",
	},
	["SearchStep"] = {"n","e","s","e","w;s","n;n;w;s"},
	["SearchStepReturn"] = {"s","w;s","n;w;s","w;n;w;s","n;n;w;s"},
},

["大理下关城"]={
	["MemberGoPath"] = {
		"chen dl;#4 n;nw;n",
	},
	["GoPath"] = {
		"n;e;e;dl;e;n;e;n;n;n;n;n;nw;n",
	},
	["ReturnPath"] = {
		"s;se;s;#4 s;w;s;w;yz;w;w;s",
	},
	["SearchStep"] = {"s","se","n","s;s","n;nw;n;ne","e","enter","out;s","n;w;n","nu","sd;s;sw;nw","sw","ne;n","sw","ne;ne","sw;n","s;s;se"},
	["SearchStepReturn"] = {"n","nw;n","s;nw;n","n;nw;n","sw","w;sw","out;w;sw","n;w;sw","s;sw","sd;s;sw","se","ne;se","s;se","ne;s;se","sw;s;se","s;s;se"},
},

["下关城"]={
	["MemberGoPath"] = {
		"chen dl;#4 n;nw;n",
	},
	["GoPath"] = {
		"n;e;e;dl;e;n;e;n;n;n;n;n;nw;n",
	},
	["ReturnPath"] = {
		"s;se;s;#4 s;w;s;w;yz;w;w;s",
	},
	["SearchStep"] = {"s","se","n","s;s","n;nw;n;ne","e","enter","out;s","n;w;n","nu","sd;s;sw;nw","sw","ne;n","sw","ne;ne","sw;n","s;s;se"},
	["SearchStepReturn"] = {"n","nw;n","s;nw;n","n;nw;n","sw","w;sw","out;w;sw","n;w;sw","s;sw","sd;s;sw","se","ne;se","s;se","ne;s;se","sw;s;se","s;s;se"},
},

["大理李子箐石林"]={
	["MemberGoPath"] = {
		"chen dl;#4 n;nw;n;ne;n;nu;w",
	},
	["GoPath"] = {
		"n;e;e;dl;e;n;e;n;n;n;n;n;nw;n;ne;n;nu;w",
	},
	["ReturnPath"] = {
		"e;sd;s;sw;s;se;s;#4 s;w;s;w;yz;w;w;s",
	},
	["SearchStep"] = {"e","enter","out;ne","sw;sd","s","n;nu;w"},
	["SearchStepReturn"] = {"w","out;w","sw;w","nu;w","n;nu;w"},
},

["李子箐石林"]={
	["MemberGoPath"] = {
		"chen dl;#4 n;nw;n;ne;n;nu;w",
	},
	["GoPath"] = {
		"n;e;e;dl;e;n;e;n;n;n;n;n;nw;n;ne;n;nu;w",
	},
	["ReturnPath"] = {
		"e;sd;s;sw;s;se;s;#4 s;w;s;w;yz;w;w;s",
	},
	["SearchStep"] = {"e","enter","out;ne","sw;sd","s","n;nu;w"},
	["SearchStepReturn"] = {"w","out;w","sw;w","nu;w","n;nu;w"},
},

["大理大叠水瀑布"]={
	["MemberGoPath"] = {
		"chen dl;s;s;e;ne;n;nu;nu",
	},
	["GoPath"] = {
		"n;e;e;dl;e;n;e;n;n;n;n;e;eu;e;ed;se",
	},
	["ReturnPath"] = {
		"nw;wu;w;wd;w;#4 s;w;s;w;yz;w;w;s",
	},
	["SearchStep"] = {"nw","wu","w","e;ed;se;ed","e","e","w;enter","out;w;wu;sd","eu","ed","wu;wd;sd","w","e;s","n;nu;nu"},
	["SearchStepReturn"] = {"se","ed;se","e;ed;se","wu","w;wu","w;w;wu","out;w;wu","nu","wd;nu","wu;wd;nu","nu;nu","e;nu;nu","n;nu;nu"},
},

["大叠水瀑布"]={
	["MemberGoPath"] = {
		"chen dl;s;s;e;ne;n;nu;nu",
	},
	["GoPath"] = {
		"n;e;e;dl;e;n;e;n;n;n;n;e;eu;e;ed;se",
	},
	["ReturnPath"] = {
		"nw;wu;w;wd;w;#4 s;w;s;w;yz;w;w;s",
	},
	["SearchStep"] = {"nw","wu","w","e;ed;se;ed","e","e","w;enter","out;w;wu;sd","eu","ed","wu;wd;sd","w","e;s","n;nu;nu"},
	["SearchStepReturn"] = {"se","ed;se","e;ed;se","wu","w;wu","w;w;wu","out;w;wu","nu","wd;nu","wu;wd;nu","nu;nu","e;nu;nu","n;nu;nu"},
},

["大理罗伽甸"]={
	["MemberGoPath"] = {
		"chen dl;s;s;e;ne;n;nu;nu;ed;e;e;eu;e;se",
	},
	["GoPath"] = {
		"n;e;e;dl;e;n;e;n;n;n;n;e;eu;e;ed;se;ed;e;e;eu;e;se",
	},
	["ReturnPath"] = {
		"nw;w;wd;w;w;wu;nw;wu;w;wd;w;#4 s;w;s;w;yz;w;w;s",
	},
	["SearchStep"] = {"e","s","u","d;n;e","se","nw;w;w;nw","w","wd","eu;e;se;sw","w","wu","ed;e;ne"},
	["SearchStepReturn"] = {"w","n;w","d;n;w","w;w","nw;w;w","se","e;se","eu;e;se","ne","e;ne","ed;e;ne"},
},

["罗伽甸"]={
	["MemberGoPath"] = {
		"chen dl;s;s;e;ne;n;nu;nu;ed;e;e;eu;e;se",
	},
	["GoPath"] = {
		"n;e;e;dl;e;n;e;n;n;n;n;e;eu;e;ed;se;ed;e;e;eu;e;se",
	},
	["ReturnPath"] = {
		"nw;w;wd;w;w;wu;nw;wu;w;wd;w;#4 s;w;s;w;yz;w;w;s",
	},
	["SearchStep"] = {"e","s","u","d;n;e","se","nw;w;w;nw","w","wd","eu;e;se;sw","w","wu","ed;e;ne"},
	["SearchStepReturn"] = {"w","n;w","d;n;w","w;w","nw;w;w","se","e;se","eu;e;se","ne","e;ne","ed;e;ne"},
},

["大理阳宗镇"]={
	["MemberGoPath"] = {
		"chen dl;s;s;e;ne;n;nu;nu;ed;e;e;eu;e;se;e;e;se;eu;ed",
	},
	["GoPath"] = {
		"n;e;e;dl;e;n;e;n;n;n;n;e;eu;e;ed;se;e;ed;e;e;eu;e;se;e;e;se;eu;ed",
	},
	["ReturnPath"] = {
		"wu;wd;nw;w;w;nw;w;wd;w;w;wu;w;nw;wu;w;wd;w;s;s;s;s;w;s;w;yz;w;w;s",
	},
	["SearchStep"] = {"su","nd;wu","wd","nw","se;eu;ed;ne","e","u","d;w;sw;sw","su","sd","nu;nd;ne"},
	["SearchStepReturn"] = {"nd","ed","eu;ed","se;eu;ed","sw","w;sw","d;w;sw","ne","nd;ne","nu;nd;ne"},
},

["阳宗镇"]={
	["MemberGoPath"] = {
		"chen dl;s;s;e;ne;n;nu;nu;ed;e;e;eu;e;se;e;e;se;eu;ed",
	},
	["GoPath"] = {
		"n;e;e;dl;e;n;e;n;n;n;n;e;eu;e;ed;se;e;ed;e;e;eu;e;se;e;e;se;eu;ed",
	},
	["ReturnPath"] = {
		"wu;wd;nw;w;w;nw;w;wd;w;w;wu;w;nw;wu;w;wd;w;s;s;s;s;w;s;w;yz;w;w;s",
	},
	["SearchStep"] = {"su","nd;wu","wd","nw","se;eu;ed;ne","e","u","d;w;sw;sw","su","sd","nu;nd;ne"},
	["SearchStepReturn"] = {"nd","ed","eu;ed","se;eu;ed","sw","w;sw","d;w;sw","ne","nd;ne","nu;nd;ne"},
},

["嵩山太室阙"]={
	["MemberGoPath"] = {
		"chen shl;s;sd;sd;sd;wd;w;sd;sd;sd;ed;sd;sd;e",
	},
	["GoPath"] = {
		"gc-ss",
	},
	["ReturnPath"] = {
		"ss-gc",
	},
	["SearchStep"] = {"n","n","n","s;s;s;w","w","nu","sd;e;nu","nu","sd;sd;e;e","nw","e","w;se;enter","w","e;e","w;s","n;out;s","s","n;n;n","e","w;n","s;s;w"},
	["SearchStepReturn"] = {"s","s;s","s;s;s","e","e;e","sd;e;e","sd;e","sd;sd;e","w","se;w","w;se;w","out;w","e;out;w","w;out;w","n;out;w","n;w","n;n;w","s;w","w;s;w","s;s;w"},
},

["少林太室阙"]={
	["MemberGoPath"] = {
		"chen shl;s;sd;sd;sd;wd;w;sd;sd;sd;ed;sd;sd;e",
	},
	["GoPath"] = {
		"gc-ss",
	},
	["ReturnPath"] = {
		"ss-gc",
	},
	["SearchStep"] = {"n","n","n","s;s;s;w","w","nu","sd;e;nu","nu","sd;sd;e;e","nw","e","w;se;enter","w","e;e","w;s","n;out;s","s","n;n;n","e","w;n","s;s;w"},
	["SearchStepReturn"] = {"s","s;s","s;s;s","e","e;e","sd;e;e","sd;e","sd;sd;e","w","se;w","w;se;w","out;w","e;out;w","w;out;w","n;out;w","n;w","n;n;w","s;w","w;s;w","s;s;w"},
},

["太室阙"]={
	["MemberGoPath"] = {
		"chen shl;s;sd;sd;sd;wd;w;sd;sd;sd;ed;sd;sd;e",
	},
	["GoPath"] = {
		"gc-ss",
	},
	["ReturnPath"] = {
		"ss-gc",
	},
	["SearchStep"] = {"n","n","n","s;s;s;w","w","nu","sd;e;nu","nu","sd;sd;e;e","nw","e","w;se;enter","w","e;e","w;s","n;out;s","s","n;n;n","e","w;n","s;s;w"},
	["SearchStepReturn"] = {"s","s;s","s;s;s","e","e;e","sd;e;e","sd;e","sd;sd;e","w","se;w","w;se;w","out;w","e;out;w","w;out;w","n;out;w","n;w","n;n;w","s;w","w;s;w","s;s;w"},
},

["少林石阶"]={
	["MemberGoPath"] = {
		"chen shl;s;sd;sd;sd;wd;w",
	},
	["GoPath"] = {
		"gbd;3;ne;ne;u;sw;e;sd;e;nu;nu;wu;nu;nu;nu",
	},
	["ReturnPath"] = {
		"sd;sd;sd;ed;#2 sd;e;ss-gc",
	},
	["SearchStep"] = {"sd","sd","sd","nu;nu;nu;e","eu","nu","sd;wd;w"},
	["SearchStepReturn"] = {"nu","nu;nu","nu;nu;nu","w","wd;w","sd;wd;w"},
},

["嵩山铁梁峡"]={
	["MemberGoPath"] = {
		"chen shl;s;sd;sd;sd;wd;w;sd;sd;sd;ed;sd;sd;e;n;n;n;nu;ne;u;/stepwalking_SearchStep(\"songshan\")",
		"",
	},
	["GoPath"] = {
		"gc-ss;#3 n;nu;ne;u;/stepwalking_SearchStep(\"songshan\")",
		"",
	},
	["ReturnPath"] = {
		"d;sw;sd;#3 s;ss-gc",
	},
	["SearchStep"] = {"nu","nu","nu","sd;sd;sw","w","e;nu","sd;sd","nu;ne;sd;d","sw","sd","nu;nw","se;ne;u"},
	["SearchStepReturn"] = {"sd","sd;sd","sd;sd;sd","ne;sd","e;ne;sd","sd;ne;sd","nu;ne;sd","u","ne;u","nu;ne;u","se;ne;u"},
},

["铁梁峡"]={
	["MemberGoPath"] = {
		"chen shl;s;sd;sd;sd;wd;w;sd;sd;sd;ed;sd;sd;e;n;n;n;nu;ne;u;/stepwalking_SearchStep(\"songshan\")",
		"",
	},
	["GoPath"] = {
		"gc-ss;#3 n;nu;ne;u;/stepwalking_SearchStep(\"songshan\")",
		"",
	},
	["ReturnPath"] = {
		"d;sw;sd;#3 s;ss-gc",
	},
	["SearchStep"] = {"nu","nu","nu","sd;sd;sw","w","e;nu","sd;sd","nu;ne;sd;d","sw","sd","nu;nw","se;ne;u"},
	["SearchStepReturn"] = {"sd","sd;sd","sd;sd;sd","ne;sd","e;ne;sd","sd;ne;sd","nu;ne;sd","u","ne;u","nu;ne;u","se;ne;u"},
},

["嵩山峻极禅院山门"]={
	["MemberGoPath"] = {
		"chen mp4;s;sd",
	},
	["GoPath"] = {
		"gc-ss;#3 n;nu;ne;u;/stepwalking_SearchStep(\"songshan\")",
		"#4 nu",
	},
	["ReturnPath"] = {
		"#4 sd;d;sw;sd;#3 s;ss-gc",
	},
	["SearchStep"] = {"nu","sd;wu","ed;sd","sd","sd","nu;nu;nu"},
	["SearchStepReturn"] = {"sd","ed","nu","nu;nu","nu;nu;nu"},
},

["峻极禅院山门"]={
	["MemberGoPath"] = {
		"chen mp4;s;sd",
	},
	["GoPath"] = {
		"gc-ss;#3 n;nu;ne;u;/stepwalking_SearchStep(\"songshan\")",
		"#4 nu",
	},
	["ReturnPath"] = {
		"#4 sd;d;sw;sd;#3 s;ss-gc",
	},
	["SearchStep"] = {"nu","sd;wu","ed;sd","sd","sd","nu;nu;nu"},
	["SearchStepReturn"] = {"sd","ed","nu","nu;nu","nu;nu;nu"},
},

["古墓神禾原"]={
	["MemberGoPath"] = {
		"chen quz;wd;w;nd;wd;nw;#5 sd;s",
	},
	["GoPath"] = {
		"gc-znsj;;n;#3 nu;#2 wu;n;w;nw",
	},
	["ReturnPath"] = {
		"se;e;s;#2 sd;#2 ed;#3 sd;s;;znsj-gc",
	},
	["SearchStep"] = {"w","e;se","e","s","n;w;nw;n","ed","wu;nu","nu","sd;sd;s"},
	["SearchStepReturn"] = {"e","nw","w;nw","n;w;nw","s","wu;s","sd;s","sd;sd;s"},
},

["神禾原"]={
	["MemberGoPath"] = {
		"chen quz;wd;w;nd;wd;nw;#5 sd;s",
	},
	["GoPath"] = {
		"gc-znsj;;n;#3 nu;#2 wu;n;w;nw",
	},
	["ReturnPath"] = {
		"se;e;s;#2 sd;#2 ed;#3 sd;s;;znsj-gc",
	},
	["SearchStep"] = {"w","e;se","e","s","n;w;nw;n","ed","wu;nu","nu","sd;sd;s"},
	["SearchStepReturn"] = {"e","nw","w;nw","n;w;nw","s","wu;s","sd;s","sd;sd;s"},
},

["终南山大校场"]={
	["MemberGoPath"] = {
		"chen quz;wd;w;nd;wd;nw;#2 sd",
	},
	["GoPath"] = {
		"gc-znsj;;n;#3 nu;#2 wu;n;w;nw;n;nu;nu;nu",
	},
	["ReturnPath"] = {
		"sd;sd;sd;s;se;e;s;#2 sd;#2 ed;#3 sd;s;;znsj-gc",
	},
	["SearchStep"] = {"sd","sd","sd","nu;nu;nu;nu","nu","se","nw;sd;sd;wu","nd","su;nw","nd","su;se;wu","sd","nu;nu","sd;ed;ed"},
	["SearchStepReturn"] = {"nu","nu;nu","nu;nu;nu","sd","sd;sd","nw;sd;sd","ed","su;ed","se;ed","su;se;ed","ed;ed","nu;ed;ed","sd;ed;ed"},
},

["金锁关"]={
	["MemberGoPath"] = {
		"chen hs;nd",
	},
	["GoPath"] = {
		"gc-hsjx;se;#2 su;#2 eu;su;#2 eu;su;su;su",
	},
	["ReturnPath"] = {
		"nd;nd;nd;#2 wd;nd;#2 wd;#2 nd;nw;hsjx-gc",
	},
	["SearchStep"] = {"su","sw","ne;eu","wd;nd;nd","nd","nd","su;su;wu","nu","sd;wu","ed;ed;su"},
	["SearchStepReturn"] = {"nd","ne;nd","wd;nd","su","su;su","su;su;su","ed;su","sd;ed;su","ed;ed;su"},
},

["华山平心石"]={
	["MemberGoPath"] = {
		"chen hs;#4 nd;wd",
	},
	["GoPath"] = {
		"gc-hsjx;se;#2 su;#2 eu;su;eu",
	},
	["ReturnPath"] = {
		"wd;nd;#2 wd;#2 nd;nw;hsjx-gc",
	},
	["SearchStep"] = {"eu","su","su","nd;nd;wd;wd","nd","wd","eu;su;eu"},
	["SearchStepReturn"] = {"wd","nd;wd","nd;nd;wd","eu","su;eu","eu;su;eu"},
},

["平心石"]={
	["MemberGoPath"] = {
		"chen hs;#4 nd;wd",
	},
	["GoPath"] = {
		"gc-hsjx;se;#2 su;#2 eu;su;eu",
	},
	["ReturnPath"] = {
		"wd;nd;#2 wd;#2 nd;nw;hsjx-gc",
	},
	["SearchStep"] = {"eu","su","su","nd;nd;wd;wd","nd","wd","eu;su;eu"},
	["SearchStepReturn"] = {"wd","nd;wd","nd;nd;wd","eu","su;eu","eu;su;eu"},
},

["华山千尺幢"]={
	["MemberGoPath"] = {
		"chen hs;#4 nd;wd;wd;nd",
	},
	["GoPath"] = {
		"gc-hsjx;se;#2 su;#2 eu",
	},
	["ReturnPath"] = {
		"#2 wd;#2 nd;nw;hsjx-gc",
	},
	["SearchStep"] = {"wd","wd","nd","su;eu;eu;su","eu","eu","wd;wd;nd"},
	["SearchStepReturn"] = {"eu","eu;eu","su;eu;eu","nd","wd;nd","wd;wd;nd"},
},

["千尺幢"]={
	["MemberGoPath"] = {
		"chen hs;#4 nd;wd;wd;nd",
	},
	["GoPath"] = {
		"gc-hsjx;se;#2 su;#2 eu",
	},
	["ReturnPath"] = {
		"#2 wd;#2 nd;nw;hsjx-gc",
	},
	["SearchStep"] = {"wd","wd","nd","su;eu;eu;su","eu","eu","wd;wd;nd"},
	["SearchStepReturn"] = {"eu","eu;eu","su;eu;eu","nd","wd;nd","wd;wd;nd"},
},

["华山山洪瀑布"]={
	["MemberGoPath"] = {
		"chen hs;#4 nd;wd;wd;nd;wd;wd;nd;nd;ne",
	},
	["GoPath"] = {
		"gc-hsjx;se;ne",
	},
	["ReturnPath"] = {
		"sw;nw;hsjx-gc",
	},
	["SearchStep"] = {"sw","su","su","nd;nd;nw","n","s;w","e;se;ne"},
	["SearchStepReturn"] = {"ne","nd;ne","nd;nd;ne","se;ne","s;se;ne","e;se;ne"},
},


["山洪瀑布"]={
	["MemberGoPath"] = {
		"chen hs;#4 nd;wd;wd;nd;wd;wd;nd;nd;ne",
	},
	["GoPath"] = {
		"gc-hsjx;se;ne",
	},
	["ReturnPath"] = {
		"sw;nw;hsjx-gc",
	},
	["SearchStep"] = {"sw","su","su","nd;nd;nw","n","s;w","e;se;ne"},
	["SearchStepReturn"] = {"ne","nd;ne","nd;nd;ne","se;ne","s;se;ne","e;se;ne"},
},

["峨嵋清音阁"]={
	["MemberGoPath"] = {
		"chen em",
	},
	["GoPath"] = {
		"n;e;e;em;em;s;d;ne;ed;ne;ed;sd;se",
	},
	["ReturnPath"] = {
		"nw;nu;wu;sw;wu;sw;up;n;em;yz;w;w;s",
	},
	["SearchStep"] = {"sw","s","s","n;n;ne;se","ed","s","n;ed","wu;wu;nw;nw","nu","enter","out;wu","ed;sd;e","se","s;se"},
	["SearchStepReturn"] = {"ne","n;ne","n;n;ne","nw","wu;nw","n;wu;nw","wu;wu;nw","se","sd;se","out;sd;se","ed;sd;se","s;se","s;se"},
},

["清音阁"]={
	["MemberGoPath"] = {
		"chen em",
	},
	["GoPath"] = {
		"n;e;e;em;em;s;d;ne;ed;ne;ed;sd;se",
	},
	["ReturnPath"] = {
		"nw;nu;wu;sw;wu;sw;up;n;em;yz;w;w;s",
	},
	["SearchStep"] = {"sw","s","s","n;n;ne;se","ed","s","n;ed","wu;wu;nw;nw","nu","enter","out;wu","ed;sd;e","se","s;se"},
	["SearchStepReturn"] = {"ne","n;ne","n;n;ne","nw","wu;nw","n;wu;nw","wu;wu;nw","se","sd;se","out;sd;se","ed;sd;se","s;se","s;se"},
},

["峨嵋十二盘"]={
	["MemberGoPath"] = {
		"chen em;nw;nu;wu;sw;wu",
	},
	["GoPath"] = {
		"n;e;e;a;1s;rideem;1s;rideem;s;d;ne;ed;ne",
	},
	["ReturnPath"] = {
		"sw;wu;sw;u;n;1s;rideem;1s;rideyz;w;w;s",
	},
	["SearchStep"] = {"sw","wu","sw","ne;ed;ne;ed","enter","out;sd","se","nw;e","se","s;nu;wu"},
	["SearchStepReturn"] = {"ne","ed;ne","ne;ed;ne","wu","out;wu","nu;wu","nw;nu;wu","s;nu;wu","s;nu;wu"},
},

["十二盘"]={
	["MemberGoPath"] = {
		"chen em;nw;nu;wu;sw;wu",
	},
	["GoPath"] = {
		"n;e;e;a;1s;rideem;1s;rideem;s;d;ne;ed;ne",
	},
	["ReturnPath"] = {
		"sw;wu;sw;u;n;1s;rideem;1s;rideyz;w;w;s",
	},
	["SearchStep"] = {"sw","wu","sw","ne;ed;ne;ed","enter","out;sd","se","nw;e","se","s;nu;wu"},
	["SearchStepReturn"] = {"ne","ed;ne","ne;ed;ne","wu","out;wu","nu;wu","nw;nu;wu","s;nu;wu","s;nu;wu"},
},

["峨嵋九老洞口"]={
	["MemberGoPath"] = {
		"chen em;sw;s;s;sw;wu;sw;wu;sw",
	},
	["GoPath"] = {
		"n;e;e;em;em;s;wu;se",
	},
	["ReturnPath"] = {
		"nw;ed;n;em;yz;w;w;s",
	},
	["SearchStep"] = {"ne","ed","ne","sw;wu;sw;nw","ed","d","u;wu;wu","wu","ed;ed;se;enter","w","leave;out"},
	["SearchStepReturn"] = {"sw","wu;sw","sw;wu;sw","se","wu;se","u;wu;se","ed;se","ed;ed;se","out","leave;out"},
},

["九老洞口"]={
	["MemberGoPath"] = {
		"chen em;sw;s;s;sw;wu;sw;wu;sw",
	},
	["GoPath"] = {
		"n;e;e;em;em;s;wu;se",
	},
	["ReturnPath"] = {
		"nw;ed;n;em;yz;w;w;s",
	},
	["SearchStep"] = {"ne","ed","ne","sw;wu;sw;nw","ed","d","u;wu;wu","wu","ed;ed;se;enter","w","leave;out"},
	["SearchStepReturn"] = {"sw","wu;sw","sw;wu;sw","se","wu;se","u;wu;se","ed;se","ed;ed;se","out","leave;out"},
},

["峨嵋九十九道拐"]={
	["MemberGoPath"] = {
		"chen em;sw;s;s;sw",
	},
	["GoPath"] = {
		"n;e;e;em;em;s;d;ne;ed;ne;ed;sd;se;sw;s;s;sw;wu",
	},
	["ReturnPath"] = {
		"ed;ne;n;n;ne;nw;nu;wu;sw;wu;sw;up;n;em;yz;w;w;s",
	},
	["SearchStep"] = {"ed","ne","n","s;enter","out;sw;wu;sw","wu","sw","ne;ed;ne"},
	["SearchStepReturn"] = {"wu","sw;wu","s;sw;wu","out;sw;wu","ne","ed;ne","ne;ed;ne"},
},

["九十九道拐"]={
	["MemberGoPath"] = {
		"chen em;sw;s;s;sw",
	},
	["GoPath"] = {
		"n;e;e;em;em;s;d;ne;ed;ne;ed;sd;se;sw;s;s;sw;wu",
	},
	["ReturnPath"] = {
		"ed;ne;n;n;ne;nw;nu;wu;sw;wu;sw;up;n;em;yz;w;w;s",
	},
	["SearchStep"] = {"ed","ne","n","s;enter","out;sw;wu;sw","wu","sw","ne;ed;ne"},
	["SearchStepReturn"] = {"wu","sw;wu","s;sw;wu","out;sw;wu","ne","ed;ne","ne;ed;ne"},
},

["峨嵋千佛庵"]={
	["MemberGoPath"] = {
		"chen em;sw;s;s",
	},
	["GoPath"] = {
		"n;e;e;em;em;s;d;ne;ed;ne;ed;sd;se;sw;s;s",
	},
	["ReturnPath"] = {
		"n;n;ne;nw;nu;wu;sw;wu;sw;up;n;em;yz;w;w;s",
	},
	["SearchStep"] = {"n","n","ne","sw;s;s;sw","wu","sw","ne;ed;ne;enter","out"},
	["SearchStepReturn"] = {"s","s;s","sw;s;s","ne","ed;ne","ne;ed;ne","out"},
},

["千佛庵"]={
	["MemberGoPath"] = {
		"chen em;sw;s;s",
	},
	["GoPath"] = {
		"n;e;e;em;em;s;d;ne;ed;ne;ed;sd;se;sw;s;s",
	},
	["ReturnPath"] = {
		"n;n;ne;nw;nu;wu;sw;wu;sw;up;n;em;yz;w;w;s",
	},
	["SearchStep"] = {"n","n","ne","sw;s;s;sw","wu","sw","ne;ed;ne;enter","out"},
	["SearchStepReturn"] = {"s","s;s","sw;s;s","ne","ed;ne","ne;ed;ne","out"},
},

["终南山空地"]={
	["MemberGoPath"] = {
		"chen quz;wd;w;nd;wd;nw;#2 sd;wu;wu;nu;wu;wu;su;eu;sd;sd",
	},
	["GoPath"] = {
		"gc-znsj;n;#3 nu;#2 wu;n;w;nw;n;#3 nu;#2 wu;nu;wu;wu;su;eu;sd;sd",
	},
	["ReturnPath"] = {
		"nu;nu;wd;nd;ed;ed;sd;ed;ed;sd;sd;sd;s;se;e;s;sd;sd;ed;ed;sd;sd;sd;s;znsj-gc",
	},
	["SearchStep"] = {"nu","nu","wd","eu;sd;sd;s","s","su","sw","ne;nd;w","e;e","n;n"},
	["SearchStepReturn"] = {"sd","sd;sd","eu;sd;sd","n","n;n","nd;n;n","ne;nd;n;n","s;n","n;n"},
},

["终南山主峰"]={
	["MemberGoPath"] = {
		"chen quz;wd;w;nd;wd;nw;#2 sd;wu;wu;nu;wu;wu;su;eu",
	},
	["GoPath"] = {
		"gc-znsj;n;#3 nu;#2 wu;n;w;nw;n;#3 nu;#2 wu;nu;wu;wu;su;eu",
	},
	["ReturnPath"] = {
		"wd;nd;ed;ed;sd;ed;ed;sd;sd;sd;s;se;e;s;sd;sd;ed;ed;sd;sd;sd;s;;znsj-gc",
	},
	["SearchStep"] = {"wd","nd","ed","wu;su;eu;sd","sd","s","w","s;n;nu;nu"},
	["SearchStepReturn"] = {"eu","su;eu","wu;su;eu","nu","nu;nu","n;nu;nu","s;n;nu;nu"},
},

["悬天崖"]={
	["MemberGoPath"] = {
		"chen mj;wu;/stepwalking_SearchStep(\"mingjiao\")",
		"wu;nu",
	},
	["GoPath"] = {
		"gc-mj;wu;/stepwalking_SearchStep(\"mingjiao\")",
		"wu;nu",
	},
	["ReturnPath"] = {
		"sd;ed;ed;mj-gc",
	},
	["SearchStep"] = {"u;/AutoSearch_SearchStep(\"mingjiao\",\"\")","d;sd","w","w","e;e;ed","ed","www;wu;wu;nu;nu","nu","nu","sd;nw","se;ne","sw;sd;sd"},
	["SearchStepReturn"] = {"d","nu","e;nu","e;e;nu","wu;nu","wu;wu;nu","sd","sd;sd","sd;sd;sd","se;sd;sd","sw;sd;sd"},
},

["明教烈火旗大门"]={
	["MemberGoPath"] = {
		"chen mj;wu;/stepwalking_SearchStep(\"mingjiao\")",
		"wu;nu;nu;nu;nu",
	},
	["GoPath"] = {
		"gc-mj;wu;/stepwalking_SearchStep(\"mingjiao\")",
		"wu;nu;nu;nu;nu",
	},
	["ReturnPath"] = {
		"sd;sd;sd;sd;ed;ed;mj-gc",
	},
	["SearchStep"] = {"sd","sd","sd","nu;nu;nw","nw","se;se;ne","ne","sw;sw;nu;enter","w","e;e","w;nu","nu","sd;sd;out"},
	["SearchStepReturn"] = {"nu","nu;nu","nu;nu;nu","se;nu","se;se;nu","sw;nu","sw;sw;nu","out","e;out","w;out","sd;out","sd;sd;out"},
},

["烈火旗大门"]={
	["MemberGoPath"] = {
		"chen mj;wu;/stepwalking_SearchStep(\"mingjiao\")",
		"wu;nu;nu;nu;nu",
	},
	["GoPath"] = {
		"gc-mj;wu;/stepwalking_SearchStep(\"mingjiao\")",
		"wu;nu;nu;nu;nu",
	},
	["ReturnPath"] = {
		"sd;sd;sd;sd;ed;ed;mj-gc",
	},
	["SearchStep"] = {"sd","sd","sd","nu;nu;nw","nw","se;se;ne","ne","sw;sw;nu;enter","w","e;e","w;nu","nu","sd;sd;out"},
	["SearchStepReturn"] = {"nu","nu;nu","nu;nu;nu","se;nu","se;se;nu","sw;nu","sw;sw;nu","out","e;out","w;out","sd;out","sd;sd;out"},
},

["雪山寺山门"]={
	["MemberGoPath"] = {
		"chen xs",
	},
	["GoPath"] = {
		"gc-cd;#6 s;wu;wu;nd;wu;wu;s;wu",
	},
	["ReturnPath"] = {
		"ed;n;ed;ed;su;ed;ed;#6 n;cd-gc",
	},
	["SearchStep"] = {"ed","n","ed","wu;s;wu;n","n","w","e;e","w;s;e","w;w","n","s;w","e;e;s"},
	["SearchStepReturn"] = {"wu","s;wu","wu;s;wu","s","s;s","e;s;s","w;s;s","w;s","e;s","s;e;s","e;e;s"},
},

["洪水旗大门"]={
	["MemberGoPath"] = {
		"chen mj;wu;/stepwalking_SearchStep(\"mingjiao\")",
		"wu;#3 nu;#3 ne;nw;nw;#5 n",
	},
	["GoPath"] = {
		"gc-mj;wu;/stepwalking_SearchStep(\"mingjiao\")",
		"wu;nu;nu;nu;ne;ne;ne;nw;nw;n;n;n;n;n",
	},
	["ReturnPath"] = {
		"#5 s;se;se;sw;sw;sw;sd;sd;sd;ed;ed;mj-gc",
	},
	["SearchStep"] = {"s","s","s","n;n;n;enter","n","s;out"},
	["SearchStepReturn"] = {"n","n;n","n;n;n","out","s;out"},
},

["北大街"]={
	["MemberGoPath"] = {
		"chen mj;wu;/stepwalking_SearchStep(\"mingjiao\")",
		"wu;#3 nu;#3 ne;nw;nw;#5 n",
	},
	["GoPath"] = {
		"gc-mj;wu;/stepwalking_SearchStep(\"mingjiao\")",
		"wu;nu;nu;nu;ne;ne;ne;nw;nw;n;n;n;n;n",
	},
	["ReturnPath"] = {
		"#5 s;se;se;sw;sw;sw;sd;sd;sd;ed;ed;mj-gc",
	},
	["SearchStep"] = {"n","e","u","d;w;n","n","s;w","e;s;s;s","w","e;e","w;s","n;n"},
	["SearchStepReturn"] = {"s","w;s","d;w;s","s;s","s;s;s","e;s;s","n","e;n","w;n","n;n"},
},

["青石大道"]={
	["MemberGoPath"] = {
		"chen gc;s;s;s;s;s",
	},
	["GoPath"] = {
		"#5 s",
	},
	["ReturnPath"] = {
		"#5 n",
	},
	["SearchStep"] = {"s","sd","nu;s","s","n;n;se","s","n;e","w;nw;n;n","w","w","e;e;e","e","w;w;n","w","e;e","w;n","s;s;s"},
	["SearchStepReturn"] = {"n","nu;n","n;n","n;n;n","nw;n","n;nw;n","w;nw;n","s","e;s","e;e;s","w;s","w;w;s","s;s","e;s;s","w;s;s","s;s;s"},
},

["长安关洛道"]={
	["MemberGoPath"] = {
		"chen ly;w;w;w",
	},
	["GoPath"] = {
		"#9 w;nw;#11 w",
	},
	["ReturnPath"] = {
		"#11 e;se;#9 e",
	},
	["SearchStep"] = {"e","e","e","w;n","s;sd","nu;w;w;w","w","n","s;w","e;e;s","s","n;e","w;n;e"},
	["SearchStepReturn"] = {"w","w;w","w;w;w","s;w;w","nu;w;w","e","e;e","s;e;e","e;e;e","n;e","n;n;e","w;n;e"},
},

["关洛道"]={
	["MemberGoPath"] = {
		"chen ly;w;w;w",
	},
	["GoPath"] = {
		"#9 w;nw;#11 w",
	},
	["ReturnPath"] = {
		"#11 e;se;#9 e",
	},
	["SearchStep"] = {"e","e","e","w;n","s;sd","nu;w;w;w","w","n","s;w","e;e;s","s","n;e","w;n;e"},
	["SearchStepReturn"] = {"w","w;w","w;w;w","s;w;w","nu;w;w","e","e;e","s;e;e","e;e;e","n;e","n;n;e","w;n;e"},
},

["泰山大驿道"]={
	["MemberGoPath"] = {
		"chen gc;#9 e",
	},
	["GoPath"] = {
		"#9 e",
	},
	["ReturnPath"] = {
		"#9 w",
	},
	["SearchStep"] = {"e","ne","n","s;sw;se","s","n;nw;w;w","w","n","s;s","n;w","e;e;s","s","n;n;n","e","s;e"},
	["SearchStepReturn"] = {"w","sw;w","s;sw;w","nw;w","n;nw;w","e","e;e","s;e;e","n;e;e","e;e;e","n;e","n;n;e","s;e","s;e"},
},

["大驿道"]={
	["MemberGoPath"] = {
		"chen gc;#9 e",
	},
	["GoPath"] = {
		"#9 e",
	},
	["ReturnPath"] = {
		"#9 w",
	},
	["SearchStep"] = {"e","ne","n","s;sw;se","s","n;nw;w;w","w","n","s;s","n;w","e;e;s","s","n;n;n","e","s;e"},
	["SearchStepReturn"] = {"w","sw;w","s;sw;w","nw;w","n;nw;w","e","e;e","s;e;e","n;e;e","e;e;e","n;e","n;n;e","s;e","s;e"},
},

["全真官道"]={
	["MemberGoPath"] = {
		"chen ly;w;w;w;w;w;w;w;w;w",
	},
	["GoPath"] = {
		"#9 w;nw;#17 w",
	},
	["ReturnPath"] = {
		"#17 e;se;#9 e",
	},
	["SearchStep"] = {"e","e","e","w;nw","se;w;w;w","w","w","e;s","n;e;e"},
	["SearchStepReturn"] = {"w","w;w","w;w;w","se;w;w","e","e;e","e;e;e","n;e;e"},
},

["官道"]={
	["MemberGoPath"] = {
		"chen ly;w;w;w;w;w;w;w;w;w",
	},
	["GoPath"] = {
		"#9 w;nw;#17 w",
	},
	["ReturnPath"] = {
		"#17 e;se;#9 e",
	},
	["SearchStep"] = {"e","e","e","w;nw","se;w;w;w","w","w","e;s","n;e;e"},
	["SearchStepReturn"] = {"w","w;w","w;w;w","se;w;w","e","e;e","e;e;e","n;e;e"},
},

["武功镇东街"]={
	["MemberGoPath"] = {
		"chen wgz;se;sd;sw;e;e;e",
	},
	["GoPath"] = {
		"#9 w;nw;#19 w",
	},
	["ReturnPath"] = {
		"#19 e;se;#9 e",
	},
	["SearchStep"] = {"e","e","e","w;w;w;s","s","w","e;e","w;s","n;n;n;w","s","n;n","n","s;w","e;s;w","n","s;w","e;s","n;e;e"},
	["SearchStepReturn"] = {"w","w;w","w;w;w","n","n;n","e;n;n","w;n;n","n;n;n","e","n;e","s;e","s;s;e","e;s;e","e;e","s;e;e","e;e;e","n;e;e"},
},

["东街"]={
	["MemberGoPath"] = {
		"chen wgz;se;sd;sw;e;e;e",
	},
	["GoPath"] = {
		"#9 w;nw;#19 w",
	},
	["ReturnPath"] = {
		"#19 e;se;#9 e",
	},
	["SearchStep"] = {"e","e","e","w;w;w;s","s","w","e;e","w;s","n;n;n;w","s","n;n","n","s;w","e;s;w","n","s;w","e;s","n;e;e"},
	["SearchStepReturn"] = {"w","w;w","w;w;w","n","n;n","e;n;n","w;n;n","n;n;n","e","n;e","s;e","s;s;e","e;s;e","e;e","s;e;e","e;e;e","n;e;e"},
},

["武功镇富家大门"]={
	["MemberGoPath"] = {
		"chen wgz;se;sd;sw;e;e;e;s",
	},
	["GoPath"] = {
		"#9 w;nw;#19 w;s",
	},
	["ReturnPath"] = {
		"n;#19 e;se;#9 e",
	},
	["SearchStep"] = {"s","w","e;e","s","w","w","e;s","n;n;n;n","e","e","w;w;w","s","n;w","e;n","s;e;s"},
	["SearchStepReturn"] = {"n","e;n","w;n","n;w;n","n;n","e;n;n","n;n;n","s","w;s","w;w;s","e;s","n;e;s","e;e;s","s;e;s"},
},

["富家大门"]={
	["MemberGoPath"] = {
		"chen wgz;se;sd;sw;e;e;e;s",
	},
	["GoPath"] = {
		"#9 w;nw;#19 w;s",
	},
	["ReturnPath"] = {
		"n;#19 e;se;#9 e",
	},
	["SearchStep"] = {"s","w","e;e","s","w","w","e;s","n;n;n;n","e","e","w;w;w","s","n;w","e;n","s;e;s"},
	["SearchStepReturn"] = {"n","e;n","w;n","n;w;n","n;n","e;n;n","n;n;n","s","w;s","w;w;s","e;s","n;e;s","e;e;s","s;e;s"},
},

["全真山路"]={
	["MemberGoPath"] = {
		"chen wgz;se;sd",
	},
	["GoPath"] = {
		"#9 w;nw;#19 w;w;w;w;ne",
	},
	["ReturnPath"] = {
		"sw;e;e;e;#19 e;se;#9 e",
	},
	["SearchStep"] = {"nu","nw","n","s;nw","se;sw","ne;se;sd;eu","ne","nu","sd;sw;se","eu","wd;nw;wd;sw","w","w","e;e;e","e","w;n","s;s","n;w;ne"},
	["SearchStepReturn"] = {"sd","se;sd","s;se;sd","se;se;sd","ne;se;sd","wd","sw;wd","sd;sw;wd","nw;wd","wd;nw;wd","ne","e;ne","e;e;ne","w;ne","w;w;ne","s;w;ne","n;w;ne"},
},

["山路"]={
	["MemberGoPath"] = {
		"chen wgz;se;sd",
	},
	["GoPath"] = {
		"#9 w;nw;#19 w;w;w;w;ne",
	},
	["ReturnPath"] = {
		"sw;e;e;e;#19 e;se;#9 e",
	},
	["SearchStep"] = {"nu","nw","n","s;nw","se;sw","ne;se;sd;eu","ne","nu","sd;sw;se","eu","wd;nw;wd;sw","w","w","e;e;e","e","w;n","s;s","n;w;ne"},
	["SearchStepReturn"] = {"sd","se;sd","s;se;sd","se;se;sd","ne;se;sd","wd","sw;wd","sd;sw;wd","nw;wd","wd;nw;wd","ne","e;ne","e;e;ne","w;ne","w;w;ne","s;w;ne","n;w;ne"},
},

["全真小村庄"]={
	["MemberGoPath"] = {
		"chen wgz;se",
	},
	["GoPath"] = {
		"#9 w;nw;#19 w;w;w;w;ne;nu",
	},
	["ReturnPath"] = {
		"sd;sw;e;e;e;#19 e;se;#9 e",
	},
	["SearchStep"] = {"nw","n","s;nw","se;sw","ne;se;sd","eu","ne","sw;se","nw;wd;sw","w","e;e","w;ne;nu"},
	["SearchStepReturn"] = {"se","s;se","se;se","ne;se","nu","wd;nu","sw;wd;nu","nw;wd;nu","ne;nu","e;ne;nu}{w;ne;nu"},
},

["小村庄"]={
	["MemberGoPath"] = {
		"chen wgz;se",
	},
	["GoPath"] = {
		"#9 w;nw;#19 w;w;w;w;ne;nu",
	},
	["ReturnPath"] = {
		"sd;sw;e;e;e;#19 e;se;#9 e",
	},
	["SearchStep"] = {"nw","n","s;nw","se;sw","ne;se;sd","eu","ne","sw;se","nw;wd;sw","w","e;e","w;ne;nu"},
	["SearchStepReturn"] = {"se","s;se","se;se","ne;se","nu","wd;nu","sw;wd;nu","nw;wd;nu","ne;nu","e;ne;nu}{w;ne;nu"},
},

["星宿海"]={
	["MemberGoPath"] = {
		"chen xx;n",
	},
	["GoPath"] = {
		"n;e;e;1s;rideyl;s;se;wu;n;nd;n",
	},
	["ReturnPath"] = {
		"s;su;s;ed;nw;n;1s;rideyz;w;w;s",
	},
	["SearchStep"] = {"n","s;nw","w","e;ne","se","sw;s","wu","nu","sd;ed;s","n;su","s","n;nu","sd;nd;n"},
	["SearchStepReturn"] = {"s","se","e;se","sw;se","sw","n","ed;n","sd;ed;n","n;n","nd;n","n;nd;n","sd;nd;n"},
},

["星宿丝绸之路"]={
	["MemberGoPath"] = {
		"chen yl;s;se;se;e;se",
	},
	["GoPath"] = {
		"n;e;e;1s;rideyl;s;se;se;e;se",
	},
	["ReturnPath"] = {
		"nw;w;nw;nw;n;yz;w;w;s",
	},
	["SearchStep"] = {"e","e","eu","wd;w;w;w","w","w","e;s","n;e;ed","e","w;nu","sd;wu;e;nw","w","nw","se;sw","ne;w","#7 e;se;n","n","e","w;s;s"},
	["SearchStepReturn"] = {"w","w;w","wd;w;w","e","e;e","e;e;e","n;e;e","wu;e","w;wu;e","sd;wu;e","se","e;se","se;e;se","ne;e;se","#7 e;se","s","s;s","w;s;s"},
},

["丝绸之路"]={
	["MemberGoPath"] = {
		"chen yl;s;se;se;e;se",
	},
	["GoPath"] = {
		"n;e;e;1s;rideyl;s;se;se;e;se",
	},
	["ReturnPath"] = {
		"nw;w;nw;nw;n;yz;w;w;s",
	},
	["SearchStep"] = {"e","e","eu","wd;w;w;w","w","w","e;s","n;e;ed","e","w;nu","sd;wu;e;nw","w","nw","se;sw","ne;w","#7 e;se;n","n","e","w;s;s"},
	["SearchStepReturn"] = {"w","w;w","wd;w;w","e","e;e","e;e;e","n;e;e","wu;e","w;wu;e","sd;wu;e","se","e;se","se;e;se","ne;e;se","#7 e;se","s","s;s","w;s;s"},
},

["长安城西门"]={
	["MemberGoPath"] = {
		"chen ca;s;s;s;w",
	},
	["GoPath"] = {
		"gc-ca;w;w",
	},
	["ReturnPath"] = {
		"e;e;ca-gc",
	},
	["SearchStep"] = {"wd","n","n","s;s;eu;w","w","nu","sd;e;e;e","e","e","w;w;n","u","d;s;w;n","w","e;e","w;nw","w","e;n","s;se;s"},
	["SearchStepReturn"] = {"eu","s;eu","s;s;eu","e","e;e","sd;e;e","w","w;w","w;w;w","s;w","d;s;w","s","e;s","w;s","se;s","e;se;s","s;se;s"},
},

["长安城东门"]={
	["MemberGoPath"] = {
		"chen ca;s;s;s;e;e;e;e",
	},
	["GoPath"] = {
		"gc-ca;e;e;e",
	},
	["ReturnPath"] = {
		"w;w;w;ca-gc",
	},
	["SearchStep"] = {"e","se","e","w;w","e;nw;w;w","n","u","d;s;w","n","s;w","e;wd","eu;e;e"},
	["SearchStepReturn"] = {"w","nw;w","w;nw;w","e;nw;w","e","s;e","d;s;e","e;e","s;e;e","e;e;e","eu;e;e"},
},

["城东门"]={
	["MemberGoPath"] = {
		"chen ca;s;s;s;e;e;e;e",
	},
	["GoPath"] = {
		"gc-ca;e;e;e",
	},
	["ReturnPath"] = {
		"w;w;w;ca-gc",
	},
	["SearchStep"] = {"e","se","e","w;w","e;nw;w;w","n","u","d;s;w","n","s;w","e;wd","eu;e;e"},
	["SearchStepReturn"] = {"w","nw;w","w;nw;w","e;nw;w","e","s;e","d;s;e","e;e","s;e;e","e;e;e","eu;e;e"},
},

["华山上天梯"]={
	["MemberGoPath"] = {
		"chen hs;nd;nd",
	},
	["GoPath"] = {
		"gc-hsjx;se;#2 su;#2 eu;su;#2 eu;su;su",
	},
	["ReturnPath"] = {
		"nd;nd;#2 wd;nd;#2 wd;#2 nd;nw;hsjx-gc",
	},
	["SearchStep"] = {"nd","nd","wd","eu;su;su;wu","nu","sd;wu","w","e;ed;ed;su","su","eu","wd;sw","ne;nd;nd"},
	["SearchStepReturn"] = {"su","su;su","eu;su;su","ed","sd;ed","ed;ed","e;ed;ed","nd","nd;nd","wd;nd;nd","ne;nd;nd"},
},

["上天梯"]={
	["MemberGoPath"] = {
		"chen hs;nd;nd",
	},
	["GoPath"] = {
		"gc-hsjx;se;#2 su;#2 eu;su;#2 eu;su;su",
	},
	["ReturnPath"] = {
		"nd;nd;#2 wd;nd;#2 wd;#2 nd;nw;hsjx-gc",
	},
	["SearchStep"] = {"nd","nd","wd","eu;su;su;wu","nu","sd;wu","w","e;ed;ed;su","su","eu","wd;sw","ne;nd;nd"},
	["SearchStepReturn"] = {"su","su;su","eu;su;su","ed","sd;ed","ed;ed","e;ed;ed","nd","nd;nd","wd;nd;nd","ne;nd;nd"},
},

["树林"]={
	["MemberGoPath"] = {
		"chen gc;#8 s;e",
	},
	["GoPath"] = {
		"#8 s;e",
	},
	["ReturnPath"] = {
		"w;#8 n",
	},
	["SearchStep"] = {"e","s","w","e;e;n;w","n","n","s;s;w","n","s;nw","se;e;su","se","nw;nd;e"},
	["SearchStepReturn"] = {"n","e;n","e;e;n","e","s;e","s;s;e","e;e","s;e;e","se;e;e","nd;e","nw;nd;e"},
},

["扬州通泗桥"]= {
	["MemberGoPath"] = {
		"chen gc;w",
	},
	["GoPath"] = {
		"w",
	},
	["ReturnPath"] = {
		"e",
	},
	--["SearchStep"] = {"e","s","w","e;e;n;w","n","n","s;s;w","n","s;nw","se;e;su","se","nw;nd;e"},
	--["SearchStepReturn"] = {"n","e;n","e;e;n","e","s;e","s;s;e","e;e","s;e;e","se;e;e","nd;e","nw;nd;e"},
},

["南大街"]={
	["MemberGoPath"] = {
		"chen gc;#8 s;e",
	},
	["GoPath"] = {
		"#8 s;e",
	},
	["ReturnPath"] = {
		"w;#8 n",
	},
	["SearchStep"] = {"e","s","w","e;e;n;w","n","n","s;s;w","n","s;nw","se;e;su","se","nw;nd;e"},
	["SearchStepReturn"] = {"n","e;n","e;e;n","e","s;e","s;s;e","e;e","s;e;e","se;e;e","nd;e","nw;nd;e"},
},

["扬州南门"]={
	["MemberGoPath"] = {
		"chen gc;s;s;s;s",
	},
	["GoPath"] = {
		"#4 s",
	},
	["ReturnPath"] = {
		"#4 n",
	},
	["SearchStep"] = {"e","e","e","w;w;w;w","w","w","e;e;e;n","n","n","s;s;s;s","s","s","n;n;n"},
	["SearchStepReturn"] = {"w","w;w","w;w;w","e","e;e","e;e;e","s","s;s","s;s;s","n","n;n","n;n;n"},
},

["逍遥树林"]= {
	["MemberGoPath"] = {
		"chen gc;#8 s;e",
	},
	["GoPath"] = {
		"#8 s;e",
	},
	["ReturnPath"] = {
		"w;#8 n",
	},
	["SearchStep"] = {"e","s","w","e;e;n;w","n","n","s;s;w","n","s;nw","se;e;su","se","nw;nd;e"},
	["SearchStepReturn"] = {"n","e;n","e;e;n","e","s;e","s;s;e","e;e","s;e;e","se;e;e","nd;e","nw;nd;e"},
},

["武当青石大道"]= {
	["MemberGoPath"] = {
		"chen gc;s;s;s;s;s",
	},
	["GoPath"] = {
		"#5 s",
	},
	["ReturnPath"] = {
		"#5 n",
	},
	["SearchStep"] = {"s","sd","nu;s","s","n;n;se","s","n;e","w;nw;n;n","w","w","e;e;e","e","w;w;n","w","e;e","w;n","s;s;s"},
	["SearchStepReturn"] = {"n","nu;n","n;n","n;n;n","nw;n","n;nw;n","w;nw;n","s","e;s","e;e;s","w;s","w;w;s","s;s","e;s;s","w;s;s","s;s;s"},
},

["华山金锁关"]= {
	["MemberGoPath"] = {
		"chen hs;nd",
	},
	["GoPath"] = {
		"gc-hsjx;se;#2 su;#2 eu;su;#2 eu;su;su;su",
	},
	["ReturnPath"] = {
		"nd;nd;nd;#2 wd;nd;#2 wd;#2 nd;nw;hsjx-gc",
	},
	["SearchStep"] = {"su","sw","ne;eu","wd;nd;nd","nd","nd","su;su;wu","nu","sd;wu","ed;ed;su"},
	["SearchStepReturn"] = {"nd","ne;nd","wd;nd","su","su;su","su;su;su","ed;su","sd;ed;su","ed;ed;su"},
},

["长安函古关"]= {
	["MemberGoPath"] = {
		"chen ly;w;w;w;w",
	},
	["GoPath"] = {
		"#9 w;nw;#12 w",
	},
	["ReturnPath"] = {
		"#12 e;se;#9 e",
	},
	["SearchStep"] = {"e","e","e","w;w;w;w","n","n","s;s;w","w","e;e;e;s","e","w;s","e","w;w","e;s","n;n;n"},
	["SearchStepReturn"] = {"w","w;w","w;w;w","e","s;e","s;s;e","e;e","e;e;e","n","w;n","n;n","w;n;n","e;n;n","n;n;n"},
},

["崆峒轩辕宫"]= {
	["MemberGoPath"] = {
		"chen mp12",
	},
	-- ["GoPath"] = {
		-- "崆峒山;n;nu;n;nu;nu;wu;nu;wu;n;nu;open door;n;n;n",
	-- },
	-- ["ReturnPath"] = {
		-- "s;s;open door;s;sd;s;ed;sd;ed;sd;sd;s;sd;s;崆峒山/",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["大理天龙寺大门"]= {
	["MemberGoPath"] = {
		"chen dl;#4 n;nw;n;ne;e;s",
	},
	["GoPath"] = {
		"大理;#4 n;nw;n;ne;e;s",
	},
	["ReturnPath"] = {
		"n;w;sw;s;se;#4 s;大理/",
	},
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["蜀中唐门竹林"]= {
	["MemberGoPath"] = {
		"chen mp14;#5 n;nw;#3 n;w;nw",
	},
	["GoPath"] = {
		"gc-jz;#5 w;sw;#2 w;nw;w;#2 u;w;sd;e;open door;s;",
	},
	["ReturnPath"] = {
		"open door;n;w;nu;e;#2 d;e;se;#2 e;ne;#5 e;jz-gc",
	},
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["太原城西大街"]= {
	["MemberGoPath"] = {
		"chen ty",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["合肥城西大街"]= {
	["MemberGoPath"] = {
		"chen hf",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["九江城东大街"]= {
	["MemberGoPath"] = {
		"chen jj",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["碎叶城北大街"]= {
	["MemberGoPath"] = {
		"chen tam;w;w;w;w;se;w;s;nw;nu;nd;#12 n",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["定襄城北大街"]= {
	["MemberGoPath"] = {
		"chen dx",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["新疆乌拉泊北门"]= {
	["MemberGoPath"] = {
		"chen xj",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["徐州城西大街"]= {
	["MemberGoPath"] = {
		"chen xz",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["贵阳城十字街头"]= {
	["MemberGoPath"] = {
		"chen gy",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["南昌城广场"]= {
	["MemberGoPath"] = {
		"chen nc",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["长沙城广场"]= {
	["MemberGoPath"] = {
		"chen cs",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["宁远城官府驿站"]= {
	["MemberGoPath"] = {
		"chen ny",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["关外盛京十字路口"]= {
	["MemberGoPath"] = {
		"chen sj",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["神古活心流大门"]= {
	["MemberGoPath"] = {
		"chen mp20;#5 s",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["中州苗家大门"]= {
	["MemberGoPath"] = {
		"chen mp7;w;w;w;w",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["青城建福宫"]= {
	["MemberGoPath"] = {
		"chen cd;#6 n;w;n;n;n",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},

["泰山岱宗坊"]= {
	["MemberGoPath"] = {
		"chen gc;#10 e;ne;#5 n",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["华山莎萝坪"]= {
	["MemberGoPath"] = {
		"chen hs;#4 nd;wd;wd;nd;wd;wd;nd;nd",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["衡山棂星门"]= {
	["MemberGoPath"] = {
		"chen gc;#8 s;su;se;sw;w;n",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["恒山金龙峡"]= {
	["MemberGoPath"] = {
		"chen tam;s;s;s;s;se;sw",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["全真派山脚"]= {
	["MemberGoPath"] = {
		"chen wgz;se;sd;eu;se;eu",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["长白山白河"]= {
	["MemberGoPath"] = {
		"chen mp17;s",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["光明顶山门"]= {
	["MemberGoPath"] = {
		"chen mj",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["凌霄城石崖"]= {
	["MemberGoPath"] = {
		"chen mp16;out;s;s;s;s;open bridge;s;d;d;sd;s;sd;sd",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["星宿派天山山路"]= {
	["MemberGoPath"] = {
		"chen xx;su",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["慕容世家码头"]= {
	["MemberGoPath"] = {
		"chen sz;s;s;s;s;s;sw;e;e;se;s",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["日月神教乱石坡"]= {
	["MemberGoPath"] = {
		"chen tam;w;w;w;w;se;w;w;sw",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["落雁山落雁山庄"]= {
	["MemberGoPath"] = {
		"chen mp19;s;s;s;s",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["铁掌峰山脚下"]= {
	["MemberGoPath"] = {
		"chen mp18;s;s;sd;sd",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["昆仑派山门"]= {
	["MemberGoPath"] = {
		"chen mp25",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["峨眉报国寺"]= {
	["MemberGoPath"] = {
		"chen em;se;ed;ed;ed;ed;ed;ed;ed;e;ne",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["武当解剑岩"]= {
	["MemberGoPath"] = {
		"chen wd;nd;nd;nd;nd;nu;nd;nu;nd;nd;nd;nd;e;ed",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["南少林迎客亭"]= {
	["MemberGoPath"] = {
		"chen mp24",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["少林寺山门"]= {
	["MemberGoPath"] = {
		"chen shl;s;sd;sd;sd;wd",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["白驼山庄大厅"]= {
	["MemberGoPath"] = {
		"chen bt",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["桃花岛大厅"]= {
	["MemberGoPath"] = {
		"chen thd;#11 s",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["神龙教大厅"]= {
	["MemberGoPath"] = {
		"chen sld;wj;n;kan bush;n;n;e;n;n;n;uj",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["红花会大门"]= {
	["MemberGoPath"] = {
		"chen mp1;sd;ed;out",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["大理王府大门"]= {
	["MemberGoPath"] = {
		"chen dl;n;n;e;n",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["丐帮破庙"]= {
	["MemberGoPath"] = {
		"chen gc;#8 e;n;e;n;w;n;e;n;w;n",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["昆明近日古楼"]= {
	["MemberGoPath"] = {
		"chen km",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["北京天安门"]= {
	["MemberGoPath"] = {
		"chen tam",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["苏州沧浪亭"]= {
	["MemberGoPath"] = {
		"chen sz",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["襄阳广场"]= {
	["MemberGoPath"] = {
		"chen xy",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["长安城大街"]= {
	["MemberGoPath"] = {
		"chen ca",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["成都天府广场"]= {
	["MemberGoPath"] = {
		"chen cd",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["兰州广场"]= {
	["MemberGoPath"] = {
		"chen laz",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["荆州中心"]= {
	["MemberGoPath"] = {
		"chen jz",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["灵州城中心"]= {
	["MemberGoPath"] = {
		"chen lz",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["沧州北门"]= {
	["MemberGoPath"] = {
		"chen cz",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["宜兴"]= {
	["MemberGoPath"] = {
		"chen yx",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["塘沽北城门"]= {
	["MemberGoPath"] = {
		"chen tg",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["岳阳广场"]= {
	["MemberGoPath"] = {
		"chen yy",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["江陵北城门"]= {
	["MemberGoPath"] = {
		"chen jl",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["西藏城门"]= {
	["MemberGoPath"] = {
		"chen xiz",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["安南海防码头"]= {
	["MemberGoPath"] = {
		"chen an",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["高丽港口"]= {
	["MemberGoPath"] = {
		"chen cx",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["缥缈峰山脚"]= {
	["MemberGoPath"] = {
		"chen yl;s;se;wu;n;nu",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},
["扬州兵营"]= {
	["MemberGoPath"] = {
		"chen gc;w;w;w;w;s;s",
	},
	-- ["GoPath"] = {
		-- "#9 w;nw;#14 w",
	-- },
	-- ["ReturnPath"] = {
		-- "#14 e;se;#9 e",
	-- },
	--["SearchStep"] = {"e","n","n","s;s;e","s","n;e","w;w;w;w","w","w","e;e;nw","w","e;se;e"},
	--["SearchStepReturn"] = {"w","s;w","s;s;w","w;w","n;w;w","w;w;w","e","e;e","e;e;e","se;e","e;se;e;"},
},

}