require("wait")
require("hy.common.pathtbl")

function Common_SendToWorld(str)
	wait.make(function()
		send_cmd(str)
	end)
end

function send_cmd(str)
	if str == nil then 
		return
	end

	local path = Path_tbl[str]
	if path == nil then
		path = str
	end

	local temp_tbl = utils.split(path,";")
	for k,v in pairs(temp_tbl) do	
	  	if Path_tbl[v] == nil then
		  	send_cmd_to_world(v)
		else
			local tmpPath_tbl = utils.split(Path_tbl[v],";")
			local tmpdeadloopflag = false
			for k1,v1 in pairs(tmpPath_tbl) do
				if v1 == v then
					tmpdeadloopflag = true
				end
			end
			if tmpdeadloopflag == false then
				send_cmd(Path_tbl[v])
			else
				send_cmd_to_world(Path_tbl[v])
			end
	  	end
	end		
end

function send_cmd_to_world(cmd)
	local s,e,reg = string.find (cmd, "^#(%d+) ")
	if reg == nil then
		world.Execute(cmd)
		return
	else
		local times = tonumber(string.sub(cmd,2,e))
		if times == 0 then 
			world.Execute(cmd)
			return
		end
	
		local str = string.sub(cmd,e+1,string.len(cmd))
		--expanded repeat cmd
		--wait.time(world.SpeedWalkDelay)
		for i =1,times do
			world.Execute(str)
			wait.time(GetSpeedWalkDelay()/ 1000)
		end
		return
	end 
end

