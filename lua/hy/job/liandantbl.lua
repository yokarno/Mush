liandanpath_tbl = {
--yz south
{
	{
		["GoPath"] = {
			"s;s;s;s;w",
		},
		["StepPath"] = "",
		["ReturnPath"] = {
			"e;n;n;n;n",
		},
	},
	{
		["GoPath"] = {
			"s;s;s;s;w;w",
		},
		["StepPath"] = "w",
		["ReturnPath"] = {
			"e;e;n;n;n;n",
		},
	},
	{
		["GoPath"] = {
			"s;s;s;s;w;w;w",
		},
		["StepPath"] = "w",
		["ReturnPath"] = {
			"e;e;e;n;n;n;n",
		},
	},
	{
		["GoPath"] = {
			"s;s;s;s;w;w;w;w",
		},
		["StepPath"] = "w",
		["ReturnPath"] = {
			"e;e;e;e;n;n;n;n",
		},
	},
	{
		["GoPath"] = {
			"s;s;s;s;w;w;w;w;n",
		},
		["StepPath"] = "n",
		["ReturnPath"] = {
			"s;e;e;e;e;n;n;n;n",
		},
	},
	{
		["GoPath"] = {
			"s;s;s;s;w;w;w;w;n;e",
		},
		["StepPath"] = "e",
		["ReturnPath"] = {
			"w;s;e;e;e;e;n;n;n;n",
		},
	},
	{
		["GoPath"] = {
			"s;s;s;s;e",
		},
		["StepPath"] = "w;s;e;e;e;e;e",
		["ReturnPath"] = {
			"w;n;n;n;n",
		},
	},
	{
		["GoPath"] = {
			"s;s;s;s;e;e",
		},
		["StepPath"] = "e",
		["ReturnPath"] = {
			"w;w;n;n;n;n",
		},
	},
	{
		["GoPath"] = {
			"s;s;s;s;e;e;e",
		},
		["StepPath"] = "e",
		["ReturnPath"] = {
			"w;w;w;n;n;n;n",
		},
	},
	{
		["GoPath"] = {
			"s;s;s;s;e;e;e;e",
		},
		["StepPath"] = "e",
		["ReturnPath"] = {
			"w;w;w;w;n;n;n;n",
		},
	},
	{
		["GoPath"] = {
			"s;s;s;s;s;s;s;s;e",
		},
		["StepPath"] = "w;w;w;w;s;s;s;s;e",
		["ReturnPath"] = {
			"w;n;n;n;n;n;n;n;n",
		},
	},
	{
		["GoPath"] = {
			"s;s;s;s;s;s;s;s;e;e",
		},
		["StepPath"] = "e",
		["ReturnPath"] = {
			"w;n;w;n;n;n;n;n;n;n;n",
		},
	},
},

--yz east
{
	{
		["GoPath"] = {
			"#8 e;s",
		},
		["StepPath"] = "",
		["ReturnPath"] = {
			"n;#8 w",
		},
	},
	{
		["GoPath"] = {
			"#8 e;s;s",
		},
		["StepPath"] = "s",
		["ReturnPath"] = {
			"n;n;#8 w",
		},
	},
	{
		["GoPath"] = {
			"#8 e;s;s;s",
		},
		["StepPath"] = "s",
		["ReturnPath"] = {
			"n;n;n;#8 w",
		},
	},
	{
		["GoPath"] = {
			"#8 e;n",
		},
		["StepPath"] = "n;n;n;n",
		["ReturnPath"] = {
			"s;#8 w",
		},
	},
	{
		["GoPath"] = {
			"#8 e;n;e",
		},
		["StepPath"] = "e",
		["ReturnPath"] = {
			"s;#8 w",
		},
	},
	{
		["GoPath"] = {
			"#8 e;n;e;n",
		},
		["StepPath"] = "n",
		["ReturnPath"] = {
			"s;#8 w",
		},
	},
	{
		["GoPath"] = {
			"#8 e;n;e;n;w",
		},
		["StepPath"] = "w",
		["ReturnPath"] = {
			"s;#8 w",
		},
	},
	{
		["GoPath"] = {
			"#8 e;n;e;n;w;n",
		},
		["StepPath"] = "n",
		["ReturnPath"] = {
			"s;#8 w",
		},
	},
	{
		["GoPath"] = {
			"#8 e;n;e;n;w;n;e",
		},
		["StepPath"] = "e",
		["ReturnPath"] = {
			"s;#8 w",
		},
	},
	{
		["GoPath"] = {
			"#8 e;n;e;n;w;n;e;n",
		},
		["StepPath"] = "n",
		["ReturnPath"] = {
			"s;#8 w",
		},
	},
	{
		["GoPath"] = {
			"#8 e;n;e;n;w;n;e;n;w",
		},
		["StepPath"] = "w",
		["ReturnPath"] = {
			"s;#8 w",
		},
	},
},

--em shanjiao
{
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideem;e;e;su;w;sw",
		},
		["StepPath"] = "",
		["ReturnPath"] = {
			"ne;e;nd;w;w;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideem;e;e;su;w;sw;w;wu",
		},
		["StepPath"] = "w;wu",
		["ReturnPath"] = {
			"ed;e;ne;e;nd;w;w;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideem;e;e;su;w;sw;w;wu;#6 wu;nw;nw",
		},
		["StepPath"] = "#6 wu;nw;nw",
		["ReturnPath"] = {
			"se;se;#6 ed;ed;e;ne;e;nd;w;w;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideem;e;e;su;w;sw;w;wu;#6 wu;nw;nw;w",
		},
		["StepPath"] = "w",
		["ReturnPath"] = {
			"s;se;se;#6 ed;ed;e;ne;e;nd;w;w;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideem;e;e;su;w;sw;w;wu;#6 wu;nw;nw;e",
		},
		["StepPath"] = "se",
		["ReturnPath"] = {
			"s;se;se;#6 ed;ed;e;ne;e;nd;w;w;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
},

--em shanyao
{
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideem;give 1 silver to ma fu;rideem;s;#4 wu;#2 su;e",
		},
		["StepPath"] = "",
		["ReturnPath"] = {
			"w;#2 nd;#4 ed;n;give 1 silver to ma fu;rideem;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideem;give 1 silver to ma fu;rideem;s;#4 wu;#2 su;e;su",
		},
		["StepPath"] = "su",
		["ReturnPath"] = {
			"nd;w;#2 nd;#4 ed;n;give 1 silver to ma fu;rideem;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideem;give 1 silver to ma fu;rideem;s;#4 wu;#2 su;e;su;sw",
		},
		["StepPath"] = "sw",
		["ReturnPath"] = {
			"ne;nd;w;#2 nd;#4 ed;n;give 1 silver to ma fu;rideem;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideem;give 1 silver to ma fu;rideem;s;#4 wu;#2 su;e;su;sw;su",
		},
		["StepPath"] = "su",
		["ReturnPath"] = {
			"nd;ne;nd;w;#2 nd;#4 ed;n;give 1 silver to ma fu;rideem;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
},

--wg
{
	{
		["GoPath"] = {
			"#6 w;#3 w;nw;#8 w;#8 w;#6 w;ne;eu;ne;nu;nu",
		},
		["StepPath"] = "",
		["ReturnPath"] = {
			"sd;sd;sw;wd;sw;#8 e;#8 e;#6 e;se;#6 e;#3 e",
		},
	},
	{
		["GoPath"] = {
			"#6 w;#3 w;nw;#8 w;#8 w;#6 w;ne;eu;ne;nu;nu,nu",
		},
		["StepPath"] = "nu",
		["ReturnPath"] = {
			"sd;sd;sd;sw;wd;sw;#8 e;#8 e;#6 e;se;#6 e;#3 e",
		},
	},
	{
		["GoPath"] = {
			"#6 w;#3 w;nw;#8 w;#8 w;#6 w;ne;eu;ne;nu;nu,e",
		},
		["StepPath"] = "sd;e",
		["ReturnPath"] = {
			"w;sd;sd;sw;wd;sw;#8 e;#8 e;#6 e;se;#6 e;#3 e",
		},
	},
},

--dl south
{
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;ridedl;e;n;e;s;e",
		},
		["StepPath"] = "",
		["ReturnPath"] = {
			"w;n;w;s;w;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;ridedl;e;n;e;s;e;ne;n",
		},
		["StepPath"] = "ne;n",
		["ReturnPath"] = {
			"s;sw;w;n;w;s;w;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;ridedl;e;n;e;#5 s;sw",
		},
		["StepPath"] = "s;sw;w;s;s;s;s;sw",
		["ReturnPath"] = {
			"ne;#5 n;w;s;w;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;ridedl;e;n;e;#5 s;sw;sw;w",
		},
		["StepPath"] = "sw;w",
		["ReturnPath"] = {
			"e;ne;ne;#5 n;w;s;w;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;ridedl;e;n;e;#6 s;e;e",
		},
		["StepPath"] = "e;ne;ne;s;e;e",
		["ReturnPath"] = {
			"w;w;#6 n;w;s;w;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;ridedl;e;n;e;#6 s;se;sw;s",
		},
		["StepPath"] = "w;w;se;sw;s",
		["ReturnPath"] = {
			"n;nw;nw;#6 n;w;s;w;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
},

--dl north
{
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;ridedl;e;n;e;#4 n;e",
		},
		["StepPath"] = "",
		["ReturnPath"] = {
			"w;#4 s;w;s;w;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;ridedl;e;n;e;#4 n;e;eu",
		},
		["StepPath"] = "eu",
		["ReturnPath"] = {
			"wd;w;#4 s;w;s;w;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	-- {
		-- ["GoPath"] = {
			-- "n;e;e;give 1 silver to ma fu;ridedl;e;n;e;#4 n;e;eu;n",
		-- },
		-- ["StepPath"] = "n",
		-- ["ReturnPath"] = {
			-- "s;wd;w;#4 s;w;s;w;give 1 silver to ma fu;rideyz;w;w;s",
		-- },
	-- },
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;ridedl;e;n;e;#4 n;e;eu;s",
		},
		["StepPath"] = "s",
		["ReturnPath"] = {
			"n;wd;w;#4 s;w;s;w;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;ridedl;e;n;e;#4 n;e;eu;e",
		},
		["StepPath"] = "n;e",
		["ReturnPath"] = {
			"w;wd;w;#4 s;w;s;w;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;ridedl;e;n;e;#4 n;e;eu;e;ed",
		},
		["StepPath"] = "ed",
		["ReturnPath"] = {
			"wu;w;wd;w;#4 s;w;s;w;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;ridedl;e;n;e;#4 n;e;eu;e;ed;se;ed",
		},
		["StepPath"] = "se;ed",
		["ReturnPath"] = {
			"wu;nw;wu;w;wd;w;#4 s;w;s;w;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;ridedl;e;n;e;#4 n;e;eu;e;ed;se;sd;sd",
		},
		["StepPath"] = "wu;sd;sd",
		["ReturnPath"] = {
			"nu;nu;nw;wu;w;wd;w;#4 s;w;s;w;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
},

--zts 1
{
	{
		["GoPath"] = {
			"#6 w;#3 w;nw;#6 w;#7 w;n;n;ne;e",
		},
		["StepPath"] = "",
		["ReturnPath"] = {
			"w;sw;s;s;#7 e;#6 e;se;#6 e;#3 e",
		},
	},
	{
		["GoPath"] = {
			"#6 w;#3 w;nw;#6 w;#7 w;n;n;ne;e;e;eu",
		},
		["StepPath"] = "e;eu",
		["ReturnPath"] = {
			"wd;w;w;sw;s;s;#7 e;#6 e;se;#6 e;#3 e",
		},
	},
	{
		["GoPath"] = {
			"#6 w;#3 w;nw;#6 w;#7 w;n;n;ne;e;e;eu;su",
		},
		["StepPath"] = "su",
		["ReturnPath"] = {
			"nd;wd;w;w;sw;s;s;#7 e;#6 e;se;#6 e;#3 e",
		},
	},
},

--henshan
{
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;ridebj;w;w;#3 s;se;sw;se;se;u",
		},
		["StepPath"] = "",
		["ReturnPath"] = {
			"d;nw;nw;ne;nw;#3 n;e;e;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;ridebj;w;w;#3 s;se;sw;se;se;u;wu",
		},
		["StepPath"] = "wu",
		["ReturnPath"] = {
			"ed;d;nw;nw;ne;nw;#3 n;e;e;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;ridebj;w;w;#3 s;se;sw;se;se;u;wu;eu;s;s;su;su;e;ne;ne;nu;nu;eu",
		},
		["StepPath"] = "eu;s;s;su;su;e;ne;ne;nu;nu;eu",
		["ReturnPath"] = {
			"wd;sd;sd;sw;sw;w;nd;nd;n;n;wd;ed;d;nw;nw;ne;nw;#3 n;e;e;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
},

--huashan
{
	{
		["GoPath"] = {
			"#6 w;#3 w;nw;#6 w;#7 w;#2 n;nw;#6 n;#5 e;se",
		},
		["StepPath"] = "",
		["ReturnPath"] = {
			"nw;#5 w;#6 s;se;#2 s;#6 e;#7 e;se;#6 e;#3 e",
		},
	},
	{
		["GoPath"] = {
			"#6 w;#3 w;nw;#6 w;#7 w;#2 n;nw;#6 n;#5 e;se;su;su",
		},
		["StepPath"] = "su;su",
		["ReturnPath"] = {
			"nd;nd;nw;#5 w;#6 s;se;#2 s;#6 e;#7 e;se;#6 e;#3 e",
		},
	},
	{
		["GoPath"] = {
			"#6 w;#3 w;nw;#6 w;#7 w;#2 n;nw;#6 n;#5 e;se;su;su;eu;eu;su",
		},
		["StepPath"] = "eu;eu;su",
		["ReturnPath"] = {
			"nd;wd;wd;nd;nd;nw;#5 w;#6 s;se;#2 s;#6 e;#7 e;se;#6 e;#3 e",
		},
	},
	{
		["GoPath"] = {
			"#6 w;#3 w;nw;#6 w;#7 w;#2 n;nw;#6 n;#5 e;se;su;su;eu;eu;su;eu;eu;su;su",
		},
		["StepPath"] = "eu;eu;su;su",
		["ReturnPath"] = {
			"nd;nd;wd;wd;nd;wd;wd;nd;nd;nw;#5 w;#6 s;se;#2 s;#6 e;#7 e;se;#6 e;#3 e",
		},
	},
	{
		["GoPath"] = {
			"#6 w;#3 w;nw;#6 w;#7 w;#2 n;nw;#6 n;#5 e;se;su;su;eu;eu;su;eu;eu;su;su;wu;wu",
		},
		["StepPath"] = "wu;wu;",
		["ReturnPath"] = {
			"ed;ed;nd;nd;wd;wd;nd;wd;wd;nd;nd;nw;#5 w;#6 s;se;#2 s;#6 e;#7 e;se;#6 e;#3 e",
		},
	},
	{
		["GoPath"] = {
			"#6 w;#3 w;nw;#6 w;#7 w;#2 n;nw;#6 n;#5 e;se;su;su;eu;eu;su;eu;eu;su;su;wu;nu",
		},
		["StepPath"] = "ed;nu",
		["ReturnPath"] = {
			"sd;ed;nd;nd;wd;wd;nd;wd;wd;nd;nd;nw;#5 w;#6 s;se;#2 s;#6 e;#7 e;se;#6 e;#3 e",
		},
	},
	{
		["GoPath"] = {
			"#6 w;#3 w;nw;#6 w;#7 w;#2 n;nw;#6 n;#5 e;se;su;su;eu;eu;su;eu;eu;su;su;su;su",
		},
		["StepPath"] = "sd;ed;su;su",
		["ReturnPath"] = {
			"#4 nd;#2 wd;nd;#2 wd;#2 nd;nw;#5 w;#6 s;se;#2 s;#6 e;#7 e;se;#6 e;#3 e",
		},
	},
	{
		["GoPath"] = {
			"#6 w;#3 w;nw;#6 w;#7 w;#2 n;nw;#6 n;#5 e;se;su;su;eu;eu;su;eu;eu;su;su;su;su;ask gao genming about all;/StepWalking_GoStep(\"huashan\")",
			"sw",
		},
		["StepPath"] = "ask gao genming about all;/autosearch_GoStep(\"huashan\",\"sw\")",
		["ReturnPath"] = {
			"ne;#4 nd;#2 wd;nd;#2 wd;#2 nd;nw;#5 w;#6 s;se;#2 s;#6 e;#7 e;se;#6 e;#3 e",
		},
	},
	{
		["GoPath"] = {
			"#6 w;#3 w;nw;#6 w;#7 w;#2 n;nw;#6 n;#5 e;se;su;su;eu;eu;su;eu;eu;su;su;su;su;ask gao genming about all;/StepWalking_GoStep(\"huashan\")",
			"sw;#3 wu",
		},
		["StepPath"] = "#3 wu",
		["ReturnPath"] = {
			"#3 ed;ne;#4 nd;#2 wd;nd;#2 wd;#2 nd;nw;#5 w;#6 s;se;#2 s;#6 e;#7 e;se;#6 e;#3 e",
		},
	},
	{
		["GoPath"] = {
			"#6 w;#3 w;nw;#6 w;#7 w;#2 n;nw;#6 n;#5 e;se;su;su;eu;eu;su;eu;eu;su;su;su;su;ask gao genming about all;/StepWalking_GoStep(\"huashan\")",
			"eu",
		},
		["StepPath"] = "#3 ed;ne;ask gao genming about all;/autosearch_GoStep(\"huashan\",\"eu\")",
		["ReturnPath"] = {
			"wd;#4 nd;#2 wd;nd;#2 wd;#2 nd;nw;#5 w;#6 s;se;#2 s;#6 e;#7 e;se;#6 e;#3 e",
		},
	},
	{
		["GoPath"] = {
			"#6 w;#3 w;nw;#6 w;#7 w;#2 n;nw;#6 n;#5 e;se;su;su;eu;eu;su;eu;eu;su;su;su;su;ask gao genming about all;/StepWalking_GoStep(\"huashan\")",
			"eu;sd",
		},
		["StepPath"] = "sd",
		["ReturnPath"] = {
			"nu;wd;#4 nd;#2 wd;nd;#2 wd;#2 nd;nw;#5 w;#6 s;se;#2 s;#6 e;#7 e;se;#6 e;#3 e",
		},
	},
	{
		["GoPath"] = {
			"#6 w;#3 w;nw;#6 w;#7 w;#2 n;nw;#6 n;#5 e;se;su;su;eu;eu;su;eu;eu;su;su;su;su;ask gao genming about all;/StepWalking_GoStep(\"huashan\")",
			"eu;sd;su",
		},
		["StepPath"] = "su",
		["ReturnPath"] = {
			"nd;nu;wd;#4 nd;#2 wd;nd;#2 wd;#2 nd;nw;#5 w;#6 s;se;#2 s;#6 e;#7 e;se;#6 e;#3 e",
		},
	},
	{
		["GoPath"] = {
			"#6 w;#3 w;nw;#6 w;#7 w;#2 n;nw;#6 n;#5 e;se;su;su;eu;eu;su;eu;eu;su;su;su;su;ask gao genming about all;/StepWalking_GoStep(\"huashan\")",
			"eu;n;nw;ne",
		},
		["StepPath"] = "nd;nu;n;nw;ne",
		["ReturnPath"] = {
			"sw;se;s;wd;#4 nd;#2 wd;nd;#2 wd;#2 nd;nw;#5 w;#6 s;se;#2 s;#6 e;#7 e;se;#6 e;#3 e",
		},
	},
},

--hz
{
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideyl;s;se;se;e;se;e;e;n;n;w;nw;sw;sw;w;sw;w;w",
		},
		["StepPath"] = "",
		["ReturnPath"] = {
			"wu;e;e;e;w;w;nw;w;nw;nw;n;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideyl;s;se;se;e;se;e;e;n;n;w;nw;sw;sw;w;sw;w;w;nu",
		},
		["StepPath"] = "nu",
		["ReturnPath"] = {
			"sd;wu;e;e;e;w;w;nw;w;nw;nw;n;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideyl;s;se;se;e;se;e;e;n;n;w;nw;sw;sw;w;sw;w;w;nu;wu;n",
		},
		["StepPath"] = "wu;n",
		["ReturnPath"] = {
			"s;ed;sd;wu;e;e;e;w;w;nw;w;nw;nw;n;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideyl;s;se;se;e;se;e;e;n;n;w;nw;sw;sw;w;sw;w;w;nu;wu;n;n",
		},
		["StepPath"] = "n",
		["ReturnPath"] = {
			"s;s;ed;sd;wu;e;e;e;w;w;nw;w;nw;nw;n;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideyl;s;se;se;e;se;e;e;n;n;w;nw;sw;sw;w;sw;w;w;nu;wu;n;n;nw",
		},
		["StepPath"] = "nw",
		["ReturnPath"] = {
			"se;s;s;ed;sd;wu;e;e;e;w;w;nw;w;nw;nw;n;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideyl;s;se;se;e;se;e;e;n;n;w;nw;sw;sw;w;sw;w;w;nu;wu;n;n;nw;w",
		},
		["StepPath"] = "w",
		["ReturnPath"] = {
			"e;se;s;s;ed;sd;wu;e;e;e;w;w;nw;w;nw;nw;n;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideyl;s;se;se;e;se;e;e;n;n;w;nw;sw;sw;w;sw;w;w;nu;wu;n;n;nw;w;n",
		},
		["StepPath"] = "n",
		["ReturnPath"] = {
			"s;e;se;s;s;ed;sd;wu;e;e;e;w;w;nw;w;nw;nw;n;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideyl;s;se;se;e;se;e;e;n;n;w;nw;sw;sw;w;sw;w;w;nu;wu;n;n;nw;w;n;n",
		},
		["StepPath"] = "n",
		["ReturnPath"] = {
			"s;s;e;se;s;s;ed;sd;wu;e;e;e;w;w;nw;w;nw;nw;n;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideyl;s;se;se;e;se;e;e;n;n;w;nw;sw;sw;w;sw;w;w;nu;wu;n;n;nw;w;n;n;nd",
		},
		["StepPath"] = "nd",
		["ReturnPath"] = {
			"su;s;s;e;se;s;s;ed;sd;wu;e;e;e;w;w;nw;w;nw;nw;n;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideyl;s;se;se;e;se;e;e;n;n;w;nw;sw;sw;w;sw;w;w;nu;wu;n;n;nw;w;n;n;nd;nd",
		},
		["StepPath"] = "nd",
		["ReturnPath"] = {
			"su;su;s;s;e;se;#2 s;ed;sd;wu;e;e;e;w;w;nw;w;nw;nw;n;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideyl;s;se;se;e;se;e;e;n;n;w;nw;sw;sw;w;sw;w;w;nu;wu;n;n;nw;w;n;n;nd;nd;n",
		},
		["StepPath"] = "n",
		["ReturnPath"] = {
			"s;su;su;s;s;e;se;#2 s;ed;sd;wu;e;e;e;w;w;nw;w;nw;nw;n;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideyl;s;se;se;e;se;e;e;n;n;w;nw;sw;sw;w;sw;w;w;nu;wu;n;n;nw;w;n;n;nd;nd;w",
		},
		["StepPath"] = "s;w",
		["ReturnPath"] = {
			"e;su;su;s;s;e;se;#2 s;ed;sd;wu;e;e;e;w;w;nw;w;nw;nw;n;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
	{
		["GoPath"] = {
			"n;e;e;give 1 silver to ma fu;rideyl;s;se;se;e;se;e;e;n;n;w;nw;sw;sw;w;sw;w;w;nu;wu;n;n;nw;w;n;n;nd;nd;e",
		},
		["StepPath"] = "e;e",
		["ReturnPath"] = {
			"w;su;su;s;s;e;se;#2 s;ed;sd;wu;e;e;e;w;w;nw;w;nw;nw;n;give 1 silver to ma fu;rideyz;w;w;s",
		},
	},
},

--jz 1
{
	{
		["GoPath"] = {
			"w;w;w;w;w;w;sw;w;w",
		},
		["StepPath"] = "",
		["ReturnPath"] = {
			"e;e;ne;e;e;e;e;e;e",
		},	
	},
	{
		["GoPath"] = {
			"w;w;w;w;w;w;sw;w;w;nw",
		},
		["StepPath"] = "nw",
		["ReturnPath"] = {
			"se;e;e;ne;e;e;e;e;e;e",
		},	
	},
	{
		["GoPath"] = {
			"w;w;w;w;w;w;sw;w;w;nw;wu;wu;wd;sw",
		},
		["StepPath"] = "wu;wu;wd;sw",
		["ReturnPath"] = {
			"ne;eu;ed;ed;se;e;e;ne;e;e;e;e;e;e",
		},	
	},
},

--jz 2
{
	{
		["GoPath"] = {
			"n;e;e;1s;ridejl;w;w;n;n;n;n;n;n;n;w;w;s;sd;w",
		},
		["StepPath"] = "",
		["ReturnPath"] = {
			"e;nu;n;e;e;s;s;s;s;s;s;s;e;e;1s;rideyz;w;w;s",
		},	
	},
	{
		["GoPath"] = {
			"n;e;e;1s;ridejl;w;w;n;n;n;n;n;n;n;w;w;s;sd;w;sw;nw",
		},
		["StepPath"] = "sw;nw",
		["ReturnPath"] = {
			"se;ne;e;nu;n;e;e;s;s;s;s;s;s;s;e;e;1s;rideyz;w;w;s",
		},	
	},
	{
		["GoPath"] = {
			"n;e;e;1s;ridejl;w;w;n;n;n;n;n;n;n;w;w;s;e",
		},
		["StepPath"] = "se;ne;e;nu;e",
		["ReturnPath"] = {
			"w;n;e;e;s;s;s;s;s;s;s;e;e;1s;rideyz;w;w;s",
		},	
	},
},
--jz 3
{
	{
		["GoPath"] = {
			"s;s;s;s;s;s;sw;nw;w;w",
		},
		["StepPath"] = "",
		["ReturnPath"] = {
			"e;e;se;ne;n;n;n;n;n;n",
		},	
	},
	{
		["GoPath"] = {
			"s;s;s;s;s;s;sw;nw;w;w;w",
		},
		["StepPath"] = "w",
		["ReturnPath"] = {
			"e;e;e;se;ne;n;n;n;n;n;n",
		},	
	},
},
-- jz 4
{
	{
		["GoPath"] = {
			"n;e;e;1s;rideem;e;se;n;ne;nw;e;e;n;e;eu;eu;se;ed",
		},
		["StepPath"] = "",
		["ReturnPath"] = {
			"wu;nw;wd;wd;w;s;e;e;e;e;e;n;n;1s;rideyz;w;w;s",
		},	
	},
	{
		["GoPath"] = {
			"n;e;e;1s;rideem;e;se;n;ne;nw;e;e;n;e;eu;eu;se;ed;se;ne;se",
		},
		["StepPath"] = "se;ne;se",
		["ReturnPath"] = {
			"nw;sw;nw;wu;nw;wd;wd;w;s;e;e;e;e;e;n;n;1s;rideyz;w;w;s",
		},	
	},
},

-- mj
{
	{
		["GoPath"] = {
			"enter dong;say ������·�㲻��ѽ;d;4;w;w;w;e;se;w;w;w;w;w;n;n;w",
		},
		["StepPath"] = "",
		["ReturnPath"] = {
			"e;s;s;e;e;e;e;e;nw;w;nw;nw;n;1s;rideyz;w;w;s",
		},	
	},
	{
		["GoPath"] = {
			"enter dong;say ������·�㲻��ѽ;d;4;w;w;w;e;se;w;w;w;w;w;n;n;w;w",
		},
		["StepPath"] = "w",
		["ReturnPath"] = {
			"e;e;s;s;e;e;e;e;e;nw;w;nw;nw;n;1s;rideyz;w;w;s",
		},	
	},
},
sy
-- {
	-- {
		-- ["GoPath"] = {
			-- "enter dong;say ������·�㲻��ѽ;d;4;w;w;w;w;s;ne",
		-- },
		-- ["StepPath"] = "",
		-- ["ReturnPath"] = {
			-- "ne;s;nw;ne;n;ne;s;w;w;nw;w;nw;nw;n;1s;rideyz;w;w;s",
		-- },	
	-- },
	-- {
		-- ["GoPath"] = {
			-- "enter dong;say ������·�㲻��ѽ;d;4;w;w;w;w;s;ne;n",
		-- },
		-- ["StepPath"] = "n",
		-- ["ReturnPath"] = {
			-- "s;ne;s;nw;ne;n;ne;s;w;w;nw;w;nw;nw;n;1s;rideyz;w;w;s",
		-- },	
	-- },
	-- {
		-- ["GoPath"] = {
			-- "enter dong;say ������·�㲻��ѽ;d;4;w;w;w;w;s;ne;ne",
		-- },
		-- ["StepPath"] = "s;sw",
		-- ["ReturnPath"] = {
			-- "ne;ne;s;nw;ne;n;ne;s;w;w;nw;w;nw;nw;n;1s;rideyz;w;w;s",
		-- },	
	-- },
-- },

--dx 1
-- {
	-- {
		-- ["GoPath"] = {
			-- "enter dong;say ������·�㲻��ѽ;d;4;w;w;w;w;s;ne;s;n",
		-- },
		-- ["StepPath"] = "",
		-- ["ReturnPath"] = {
			-- "s;s;nw;ne;n;ne;s;w;w;nw;w;nw;nw;n;1s;rideyz;w;w;s",
		-- },	
	-- },
	-- {
		-- ["GoPath"] = {
			-- "enter dong;say ������·�㲻��ѽ;d;4;w;w;w;w;s;ne;s;n;nw;w",
		-- },
		-- ["StepPath"] = "nw;w",
		-- ["ReturnPath"] = {
			-- "e;se;s;s;nw;ne;n;ne;s;w;w;nw;w;nw;nw;n;1s;rideyz;w;w;s",
		-- },	
	-- },
	-- {
		-- ["GoPath"] = {
			-- "enter dong;say ������·�㲻��ѽ;d;4;w;w;w;w;s;ne;s;n;nw;w;w;nw;nw;nw;n;n;n;n;n;n;n",
		-- },
		-- ["StepPath"] = "w;w;nw;nw;nw;n;n;n;n;n;n;n",
		-- ["ReturnPath"] = {
			-- "s;s;s;s;s;s;s;se;se;se;e;e;se;s;s;nw;ne;n;ne;s;w;w;nw;w;nw;nw;n;1s;rideyz;w;w;s",
		-- },	
	-- },	
	-- {
		-- ["GoPath"] = {
			-- "n;e;e;1s;rideyl;s;se;n;nw;nw;nw;wd;wu;wd;wu;nw;nw;w;w;n;n;ne;nw;n;n;n;nu;u;e;ed;e",
		-- },
		-- ["StepPath"] = "n;n;n;w;w;w",
		-- ["ReturnPath"] = {
			-- "w;nu;w;d;sd;s;s;s;se;sw;s;s;e;e;se;se;ed;eu;ed;eu;se;se;se;s;nw;n;1s;rideyz;w;w;s",
		-- },	
	-- },	
	-- {
		-- ["GoPath"] = {
			-- "n;e;e;1s;rideyl;s;se;n;nw;nw;nw;wd;wu;wd;wu;nw;nw;w;w;n;n;ne;nw;n;n;n;nu;u;e;ed",
		-- },
		-- ["StepPath"] = "w",
		-- ["ReturnPath"] = {
			-- "nu;w;d;sd;s;s;s;se;sw;s;s;e;e;se;se;ed;eu;ed;eu;se;se;se;s;nw;n;1s;rideyz;w;w;s",
		-- },	
	-- },	
	-- {
		-- ["GoPath"] = {
			-- "n;e;e;1s;rideyl;s;se;n;nw;nw;nw;wd;wu;wd;wu;nw;nw;w;w;n;n;ne;nw;n;n;n;nu;u;e;nw",
		-- },
		-- ["StepPath"] = "#7 e;ne",
		-- ["ReturnPath"] = {
			-- "se;w;d;sd;s;s;s;se;sw;s;s;e;e;se;se;ed;eu;ed;eu;se;se;se;s;nw;n;1s;rideyz;w;w;s",
		-- },	
	-- },	
-- },
-- qls
-- {
	-- {
		-- ["GoPath"] = {
			-- "enter dong;say ������·�㲻��ѽ;d;4;w;w;w;e;se;e;e;su;eu",
		-- },
		-- ["StepPath"] = "",
		-- ["ReturnPath"] = {
			-- "wd;nd;w;w;nw;w;nw;nw;n;1s;rideyz;w;w;s",
		-- },	
	-- },
	-- {
		-- ["GoPath"] = {
			-- "enter dong;say ������·�㲻��ѽ;d;4;w;w;w;e;se;e;e;su;eu;ed;ne",
		-- },
		-- ["StepPath"] = "ed;ne",
		-- ["ReturnPath"] = {
			-- "sw;wu;wd;nd;w;w;nw;w;nw;nw;n;1s;rideyz;w;w;s",
		-- },	
	-- },
	-- {
		-- ["GoPath"] = {
			-- "enter dong;say ������·�㲻��ѽ;d;4;w;w;w;e;se;e;e;su;eu;ed;e;e",
		-- },
		-- ["StepPath"] = "sw;e;e",
		-- ["ReturnPath"] = {
			-- "se;ed;se;sd;s;ed;e;e;e;e;e;e;e;n;1s;rideyz;w;w;s",
		-- },	
	-- },
	-- {
		-- ["GoPath"] = {
			-- "n;e;e;1s;rideca;1s;ridelanzhou;s;w;w;w;w;w;w;wu;n;nu",
		-- },
		-- ["StepPath"] = "se;ed;se",
		-- ["ReturnPath"] = {
			-- "sd;s;ed;e;e;e;e;e;e;e;n;1s;rideyz;w;w;s",
		-- },	
	-- },
	-- {
		-- ["GoPath"] = {
			-- "n;e;e;1s;rideca;1s;ridelanzhou;s;w;w;w;w;w;w;wu;n",
		-- },
		-- ["StepPath"] = "sd",
		-- ["ReturnPath"] = {
			-- "s;ed;e;e;e;e;e;e;e;n;1s;rideyz;w;w;s",
		-- },	
	-- },
	-- {
		-- ["GoPath"] = {
			-- "n;e;e;1s;rideca;1s;ridelanzhou;s;w;w;w;w;w;w;wu;n;nu;nw;ne",
		-- },
		-- ["StepPath"] = "nu;nw;ne",
		-- ["ReturnPath"] = {
			-- "sw;se;sd;s;ed;e;e;e;e;e;e;e;n;1s;rideyz;w;w;s",
		-- },	
	-- },
-- },
}

liandan_dan_tbl = {
["�غ컨"] = {
	{
		["ID"] = "zanghonghua",
	},
},
["�Ͷ�"] = {
	{
		["ID"] = "badou",
	},
},
["��ޱ"] = {
	{
		["ID"] = "baiwei",
	},
},
["����"] = {
	{
		["ID"] = "baizhi",
	},
},
["��̥"] = {
	{
		["ID"] = "baotai",
	},
},
["���"] = {
	{
		["ID"] = "chaihu",
	},
},
["����"] = {
	{
		["ID"] = "chantui",
	},
},
["����"] = {
	{
		["ID"] = "chuanbei",
	},
},
["��ɽ��"] = {
	{
		["ID"] = "chuanshanjia",
	},
},
["�����"] = {
	{
		["ID"] = "dongchong cao",
	},
},
["����"] = {
	{
		["ID"] = "fangfeng",
	},
},
["����"] = {
	{
		["ID"] = "fuling",
	},
},
["���Ĳ�"] = {
	{
		["ID"] = "fuxin cao",
	},
},
["�ʲ�"] = {
	{
		["ID"] = "gancao",
	},
},
["������"] = {
	{
		["ID"] = "gouzhizi",
	},
},
["�ڹ��"] = {
	{
		["ID"] = "gui jia",
	},
},
["��Ҷ"] = {
	{
		["ID"] = "heye",
	},
},
["����"] = {
	{
		["ID"] = "huang qi",
	},
},
["޽��"] = {
	{
		["ID"] = "huoxiang",
	},
},
["������"] = {
	{
		["ID"] = "jinyinhua",
	},
},
["�չ�"] = {
	{
		["ID"] = "jugeng",
	},
},
["��ɽ��"] = {
	{
		["ID"] = "laoshan shen",
	},
},
["��֬"] = {
	{
		["ID"] = "lingzhi",
	},
},
["¹��"] = {
	{
		["ID"] = "lurong",
	},
},
["���"] = {
	{
		["ID"] = "mahuang",
	},
},
["ûҩ"] = {
	{
		["ID"] = "moyao",
	},
},
["ţ��"] = {
	{
		["ID"] = "niuhuang",
	},
},
["ɣҶ"] = {
	{
		["ID"] = "sangye",
		["Put"] = "1",
	},
},
["����"] = {
	{
		["ID"] = "sanqi",
	},
},
["�����"] = {
	{
		["ID"] = "xiyang shen",
	},
},
["����"] = {
	{
		["ID"] = "shengdi",
	},
},
["����"] = {
	{
		["ID"] = "shexiang",
	},
},
["�һ���"] = {
	{
		["ID"] = "taohuaban",
	},
},
["�ٻ�"] = {
	{
		["ID"] = "tenghuang",
	},
},
["����"] = {
	{
		["ID"] = "tianqi",
	},
},
["�ۻ�"] = {
	{
		["ID"] = "xionghuang",
	},
},
["Ѫ��"] = {
	{
		["ID"] = "xuejie",
	},
},
["��ɽѩ��"] = {
	{
		["ID"] = "xuelian",
	},
},
["��ҩ"] = {
	{
		["ID"] = "jinchuang yao",
	},
},
["��Ƥ��ҩ"] = {	
	{
		["ID"] = "goupi gaoyao",
	},
},
["��ʬ��"] = {	
	{
		["ID"] = "dust",
	},
},
["������"] = {	
	{
		["ID"] = "yangjing dan",
	},
},
["С����"] = {	
	{
		["ID"] = "xiaohuan dan",
	},
},
["��ȸ��"] = {	
	{
		["ID"] = "kongque dan",
	},
},
["�׶���"] = {	
	{
		["ID"] = "heding hong",
	},
},
["�̲Ϸ�"] = {	
	{
		["ID"] = "bican feng",
	},
},
["�󻹵�"] = {
	{
		["ID"] = "dahuan dan",
		["Put"] = "1",
	},
	{
		["ID"] = "ndan1",
	},
},
["�쾦���"] = {	
	{
		["ID"] = "chan",
--		["Give"] = "1";
	},
},
["�޳���"] = {	
	{
		["ID"] = "wuchang dan",
	},
},
["������"] = {	
	{
		["ID"] = "he shouwu",
	},
	{
		["ID"] = "heshou wu",
	},
},
["���߸�"] = {	
	{
		["ID"] = "guiling gao",
		["Eat"] = "1",
	},
},
["������"] = {	
	{
		["ID"] = "zhou",
	},
},
["ǧ����֥"] = {	
	{
		["ID"] = "ling zhi",
	},
},
["������"] = {	
	{
		["ID"] = "ndan1",
	},
},
["����ɢ"] = {	
	{
		["ID"] = "bdan3",
	},
},
["����ɢ"] = {	
	{
		["ID"] = "bdan3",
	},
},
["���Ľⶾ��"] = {	
	{
		["ID"] = "ndan1",
	},
},
["������"] = {	
	{
		["ID"] = "niqi dan",
--		["Eat"] = "1",
		--["Give"] = "1",
	},
},
["��������ɢ"] = {	
	{
		["ID"] = "huiyang san",
	},
},
["����"] = {	
	{
		["ID"] = "dang gui",
	},
},
["���ߵ�"] = {	
	{
		["ID"] = "shedan",
	},
},
["�����ⶾ��"] = {	
	{
		["ID"] = "ndan1",
	},
},
["�񶴺�ʯ��"] = {	
	{
		["ID"] = "gdan1",
	},
},
["���Ʊ�����"] = {	
	{
		["ID"] = "gdan5",
	},
},
["������"] = {
	{
		["ID"] = "puti zi",
		["Put"] = "1",
	}
},
["��֥"] = {	
	{
		["ID"] = "ling zhi",
	},
	{
		["ID"] = "lingzhi",
	},
},
["�˲ι�"] = {	
	{
		["ID"] = "renshen guo",
	},
},
["������"] = {	
	{
		["ID"] = "sheli zi",
	},
},
["���ھ�"] = {	
	{
		["ID"] = "shouwu jing",
	},
},
["ѩ��"] = {	
	{
		["ID"] = "xuelian",
	},
},
["�Ż���¶��"] = {
	{
		["ID"] = "yulu wan",
		["Put"] = "1",
	},
	{
		["ID"] = "jiuhuayulu wan",
--		["Give"] = "1",
	},
},
["�ܵ�"] = {	
	{
		["ID"] = "xiong dan",
	},
},
["�����˵�"] = {
	{
		["ID"] = "xuming badan",
--		["Give"] = "1",
	},
},
["�ٲݵ�"] = {	
	{
		["ID"] = "baicao dan",
	},
},
["���ӵ�"] = {	
	{
		["ID"] = "baozi dan",
	},
},
["����������"] = {	
	{
		["ID"] = "baoming dan",
		["Put"] = "1",
	},
},
["�˲�"] = {	
	{
		["ID"] = "renshen",
	},
	{
		["ID"] = "ren shen",
	},
},
["�ٻ����߸�"] = {	
	{
		["ID"] = "baihua gao",
	},
	{
		["ID"] = "fushe gao",
	},
},
["����Ƥ"] = {	
	{
		["ID"] = "huli pi",
	},
},
["����"] = {	
	{
		["ID"] = "hu gu",
	},
	{
		["ID"] = "hugu",
	},
},
["��ת������"] = {	
	{
		["ID"] = "gdan2",
	},
},
["���������"] = {	
	{
		["ID"] = "gdan3",
	},
},
["���������"] = {	
	{
		["ID"] = "gdan4",
	},
},
["����������"] = {	
	{
		["ID"] = "gdan5",
	},
},
["������"] = {	
	{
		["ID"] = "zhengqi dan",
	},
},
}
