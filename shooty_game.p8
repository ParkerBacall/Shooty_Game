pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
--update and draw
function _update()
	player_update()
	vomit_update()
end

function _draw()
	cls()
	map(0,0)
	spr(player.sp,player.x,player.y,1,1,player.flp)
	for v in all(vomit.sp) do
		spr(v,vomit.x[v],vomit.y[v],1,1,player.flp)
	end
end
-->8
--variables
function _init()
--starts first music track
music(0)

	player={
		sp=1,
		x=59,
		y=59,
		w=8,
		h=8,
		dx=0,
		dy=0,
		acc=0.7
	}
	
	vomit={
		sp={2,3,4,5,6,7,8},
		x={40,90,20,34,84,7,100},
		y={20,30,70,34,8,50,20},
		w=8,
		h=8,
		dx=0,
		dy=0,
		acc=0.5
	}
	
		friction=0.75
		i=0
	
	end
-->8
--player update
function player_update()

	player.dx*=friction
	player.dy*=friction

	if btn(0) then 
			player.dx-=player.acc
			if btn(4) then 
				player.dx-=1
			end
		end
	if btn(1) then 
		player.dx+=player.acc
		if btn(4) then 
				player.dx+=1
			end
	end
	if btn(2) then 
		player.dy-=player.acc
		if btn(4) then 
				player.dy-=1
			end
	end
	if btn(3) then 
		player.dy+=player.acc
		if btn(4) then 
				player.dy+=1
			end
	end
	
	
	player.x+=player.dx
	player.y+=player.dy
end
-->8
--vomit update
function vomit_update()
	vomit.dx*=friction
	vomit.dy*=friction
	

end
__gfx__
0000000000aaaa000000000000000000000000000000000000000000f8f000000000000055555555000000000000000000000000000000000000000000000000
000000000aaaaaa00bbbb30000aaa0000444444000cc000000000000fff000000014000055555555000000000000000000000000000000000000000000000000
00700700aa2aa2aa00b3bb00000aea000a8aaaa00030c30000000000f8f000000044000055555555000000000000000000000000000000000000000000000000
00077000aaaaaaaa000bb30000aaaa0000a8aa00000c3c0000000000ffff00000441041055555555000000000000000000000000000000000000000000000000
00077000aaaaaaaa00030b0000aeae00000aa8000ccc3c0000002dd0000800000044444055555555000000000000000000000000000000000000000000000000
00700700aa8888aa00000000000aaa00000aaa0000ccc0000000002d000f00000004100055555555000000000000000000000000000000000000000000000000
000000000aa88aa0000000000000a000000a8a000003c00000000dd2000080000000000055555555000000000000000000000000000000000000000000000000
0000000000aaaa00000000000000a0000000a000000c30000000dd2d000000000000000055555555000000000000000000000000000000000000000000000000
__map__
0909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090909090909090909090909090909090909090000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090909090909090909090909090909090909090900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090909090909090909090909090909090909090900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090909090909090909090909090909090909090900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090909090909090909090909090909090909090900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090909090909090909090909090909090909090900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090909090909090909090909090909090909090900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090909090909090909090909090909090909090900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090909090909090909090909090909090909090900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0909090909090909090909090909090909090909090909090900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
