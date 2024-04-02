--[[pod_format="raw",created="2024-03-23 22:06:57",modified="2024-04-02 11:39:50",revision=922]]
p = {
	title = "Feyn's home",
	g = create_gui({x=0,y=0,
		width=explorer.current_width,height=1050,
		fgcol = 0x090d}),
	init = function(self,explorer)
		self.first_frame=true
		-- gifs
		self.gfx.avatar_gif=self.advanced_gif(self.gfx.avatar_gif,1,30)
		self.gfx.ru_flag=self.new_gif(self.gfx.ru_flag,6,1.5,63)
		self.gfx.uk_flag=self.new_gif(self.gfx.uk_flag,6,1.5,63)
		-- buttons
		self.g:attach(self.create_button({x=237,y=1022,img=self.gfx.vk,
			tap=function()
				set_clipboard(self.links.vk)
				notify("Link copied! Paste it into your host OS browser")
			end
		}))
		self.g:attach(self.create_button({x=227,y=1022,img=self.gfx.discord,
			tap=function()
				set_clipboard(self.links.discord)
				notify("Link copied! Paste it into your host OS browser")
			end
		}))
		self.g:attach(self.create_button({x=214,y=998,label="Desktop mod",
			bgcol=9,fgcol=7,
			tap=function()
				explorer:open_page(self.links.desktop)
			end
		}))
	end,
	get_gui = function(self,explorer)
		return self.g
	end,
	draw = function(self,explorer)
		for i=0,63 do palt(i,false) end
		self.pal() -- custom palette for avatar
		if (self.first_frame) then -- draw text and static images only in the first frame for good performance
			cls(15)
			self.oprint("\^w\^tHello, PicoNet!",25,5,7,9)
			print("\fpToki a! My nickname is F3ynmanium or Feyn,\nand it's my (maybe not so) little Picosite!",40,34)
			print([[
I'm 17 y.o, born and live in Russia.
I like music, games, pixelart and programming,
trying to make 3d models
in blender, PicoCAD and MagicaVoxel,
trying to make games and pixelart by myself,
kama sona e toki pona
and sometimes do other good stuff.
And also I'm a furry OwO

And I really into PICO-8 and Picotron!
It's like your own little world,
where you can make cool things
and show them to others,
who live in this pretty world too
(I call it PICOverse)
I really like these fantasy worlds
in games, books, movies etc..
Sadly there is no simple way
to buy PICO-8 or Picotron in my country
due to several circumstances,
so I have to ask my friends
who already has those consoles
for the way to this wonderful world :(

Also, being in this community
is a good practice for my not so good english,
so there may be some mistakes and mess :D


My favourite games
- Beat Saber
- Slime Rancher (didn't play SR2 cuz potato PC)
- The Crown Of Leaves
- Untitled Goose Game
- And of course PICO-8 and Picotron

Favourite movies
- Avatar
- Ready player one
- Harry Potter
- The Chronicles of Narnia
- The Hobbit (Peter Jackson's)
- How To Train Your Dragon
- Kiki's Delivery Service

And some series
- Arcane
- Cyberpunk: Edgerunners

I don't read books too much, but there are some
- Harry Potter
- Ready Player One/Two
- The Hobbit (going to read and watch LOTR hehe)

Usually I listen to fast and loud music like
- Our Last Night
- Falling In Reverse
- No Resolve
- Bullet For My Valentine
- Neverlove
- Hollywood Undead

But I also like
- TheFatRat
- Owl City
- AViVA
- AJR
- Imagine Dragons
- Twenty One Pilots

Some time ago I watched videos about pixelart
and saw picoCAD, dug into
and that's how I found PICO-8.
I played it and tried to make my own games,
Lua is a very good and simple language
(I've already coded on Lua
and have some experience).
I had been playing in the edu edition for a while
until I found people who agreed to share
PICO-8 to me!!

After all, I discovered Picotron, and here I am!

I haven't tried making games in Picotron yet
cuz I've been into software and mods
since it has come so you can check my desktop mod

If you really want you can reach me here:
]],24,65)
			palt(63,true) palt(0,false)
			spr(self.gfx.picotron_big,4,4)
			spr(self.gfx.notes,7,91)
			spr(self.gfx.gamepad,6,114)
			spr(self.gfx.blender,5,133)
			spr(self.gfx.tokipona,198,123)
			spr(self.gfx.pico_picotron,210,163)
			spr(self.gfx.tree,4,149+27)
			spr(self.gfx.sparkle,181,179)
			print(string.rep("-",57),4,233+96+7*4)
			spr(self.gfx.beat_saber,4+67*0,275+62+7*4)
			spr(self.gfx.slime_rancher,4+67*1,275+62+7*4)
			spr(self.gfx.tcol,4+67*2,275+62+7*4)
			spr(self.gfx.goose,4+67*3,275+62+7*4)
			spr(self.gfx.pico_picotron2,4+67*4,275+62+7*4)
			spr(self.gfx.popcorn,6,430+7*4)
			spr(self.gfx.book,6,573+7*4)
			spr(self.gfx.notes,7,629+7*4)
			print(string.rep("-",57),4,796+7*4)
			spr(self.gfx.pico_big,6,816+7*4)
			spr(self.gfx.lua,5,852+7*4)
			spr(self.gfx.picotron,8,955)
			spr(self.gfx.wrench,4,985)
			print(string.rep("-",57),4,967)
			self.first_frame=false
		end
		-- draw gifs
		self.gfx.avatar_gif:draw(4,27)
		self.gfx.ru_flag:draw(7,72)
		self.gfx.uk_flag:draw(7,312+7*4)
		palt(63,true) palt(0,false) -- for buttons transparency
	end,
	pal=function()
		local pal = {0xff291512,0xff482700,0xff593000,0xff663802,0xff7f4603,0xff8b3d16,0xffb33500,0xffb3002d,0xffcc0033,0xffb34d00,0xffcc661a,0xffc37624,0xffff6220,0xffff8020,0xffffcd46,0xffff0040,0xff00b35a,0xff00cc66,0xff00ff80,0xff002db3,0xff0033cc,0xff0040ff,0xff00ffff,0xff4a647a,0xff8297a9,0xffb3b3b3,0xff9eb2c1,0xff82cde2,0xffcccccc,0xffc6def1,0xffffffff}
		for i,j in pairs(pal) do
			poke4(0x5000 + 4 * (i+33-1),j)
		end
	end,
	oprint=function(s,x,y,f,o,p)
		for v in all(split(p or '\+ff,\+gf,\+hf,\+fg,\+hg,\+fh,\+gh,\+hh,')) do
			?v..s,x,y,v!='' and o or f
		end -- #knutil_oprint-3 v0.3 (PICO-8)
	end, -- @shiftalow / bitchunk
	new_gif = function(pod,frames,speed,alpha)
		local frame_width = pod:width()/frames
		local frame_height = pod:height()
		return {
			frames = frames,
			alpha = alpha, pod = pod,
			frame_width = frame_width,
			frame_height = frame_height,
			draw = function(self, x, y, w, h)
				palt() palt(0,false)
				palt(self.alpha or 0, true)
				local frame = flr(time()*5*(speed or 1)) % (self.frames)
				sspr(self.pod, frame*self.frame_width, 0, self.frame_width, self.frame_height, x, y, w or self.frame_width, h or self.frame_height)
				palt(self.alpha or 0, false) palt(0,true)
			end
		}
	end,
	advanced_gif = function(frames, speed, alpha, w, h)
		return {
			frames = frames or {},
			alpha = alpha or 0,
			frame_w = w or frames[1].img.width and frames[1].img:width(),
			frame_h = h or frames[1].img.height and frames[1].img:height(),
			speed = speed or 1,
			last_frame_time = t(),
			frame = 0,
			draw = function(self, x, y, w, h)
				if (t()-self.last_frame_time >= self.frames[self.frame+1].time/1000/self.speed) then
					self.last_frame_time=t()
					self.frame = (self.frame+1)%#self.frames
				end
				palt()
				--pal()
				palt(0,false)
				palt(self.alpha or 0, true)
				sspr(self.frames[self.frame+1].img, 0, 0, self.frame_w, self.frame_h, x or 0, y or 0, w or self.frame_w, h or self.frame_h)
				palt(self.alpha or 0, false) palt(0,true)
			end
		}
	end,
	create_button=function(el)
		el.x,el.y=el.x or 0,el.y-1 or 0
		el.label = el.label or ""
		el.lw,el.lh=print(el.label,0,-10000) el.lh+=10000
		el.width = el.width or el.img and el.img:width() or el.lw + 12
		el.height = el.height or el.img and el.img:height()+1 or el.lh + 3
		el.cursor = "pointer"
		function el:draw(msg)
			local yy = msg.mb==0 and msg.has_pointer and -1 or 0
			if (not self.img) then
				local bgcol = self.bgcol or 0x0706
				local fgcol = self.fgcol or 0x0e01
				rectfill(0, yy + 2, self.width-1, yy + self.height-2, bgcol)
				rectfill(1, yy + 1, self.width-2, yy + self.height-1, bgcol)
				if (self.label!="") print(self.label, self.width/2 - self.lw/2, 4 + yy, fgcol)
			else
				spr(self.img,0,yy+1)
			end
		end
		return el
	end,
	links={
		desktop="https://raw.githubusercontent.com/FrndlyFox/picosite/main/desktop.lua",
		vk="https://vk.com/id615686359",
		discord="https://discord.com/users/419020011969970176"
	},
	gfx={
		picotron_big=unpod("b64:bHo0AD0AAABAAAAA8RZweHUAQyAQEATRHz8BtwEeAbcx1xHXMVwXHw4XMVwXHRcRVxxXBABRFx0XXDEFAAAhAIC3AR4BtwEe0Q=="),
		pico_picotron=unpod("b64:bHo0AE4AAABNAAAA8DFweHUAQyAUCQSvP3EuIV4BVxEOEQgRTgFnIQkHDw8RPhEsBw8OBxEKJw0BPgEnDCchCwcPDRE_AQcNBywRDhEMKwCQAR4hXhFXAb5x"),
		notes=unpod("b64:bHo0ACgAAAAmAAAA8BdweHUAQyALCwQvPxyOPG4MngyeDC4YHjwuOCw_CJ4InghuOG4oPg=="),
		tokipona=unpod("b64:bHo0AFAAAABTAAAA8AZweHUAQyAKDgQ-Pw8QTz8PEC8-DxAMAFMPPw8QHxAA8A7fPz8QPz8fEDoeHz8OWg4NDnoeeh4KDjoOCh4aDgIA0A0OGh4aDh0eOh49Pi0="),
		blender=unpod("b64:bHo0AEUAAABFAAAA8QFweHUAQyAODQRvPx8Zvz8vBADwEz8-rxkvP78ZPz8-GTceLz8_BzEHHg1OBzEHTg0eBzEHPh0GAKAeTR43Hl1_fT4t"),
		gamepad=unpod("b64:bHo0ADAAAAAwAAAA8BFweHUAQyAMCQQPPxZeFg4GF1YXFpcWBxBHCwcWBxA3CA4AABQAgAcGXgYHJn4W"),
		tree=unpod("b64:bHo0AJQAAACnAAAA8AlweHUAQyAQEAQPPywPHCwOLA4MCg8-HA4KAEEcCgkKCQAyLA4qEgARLBEAwCMPGwMcDkwODBMNIzEAAQkAow0TDA5MDSMNIw0SAEEDHxQNJwBhHAsPFQscKQDyGSwODBsOLA5MDiwICx0PCw0cDgwOHA0HKwgtBx0MHQctCC0HLQcNBy0CALAPPw0HLQctBy0HBg=="),
		sparkle=unpod("b64:bHo0ADkAAAA-AAAA8RxweHUAQyAKCgQfPwl_CQoJLgk_CS4JCgluCQcJXgkKBwoJHgkuCQcJHgkKBAAVDhQAUAoJfglu"),
		beat_saber=unpod("b64:bHo0AEQAAABWAAAA9BVweHUAQyAQEAQPD9AO8DEPGDgNEAEvEAEgDRgCGA0BHAEcARALACBADR0AEywcABggGwAACwCwOA0QASwB8CIO0A4="),
		slime_rancher=unpod("b64:bHo0AF8AAABuAAAA8S5weHUAQyAQEAT-PwZXjgdfGAduBx04HQdOBx1YDQc_Bw0IB2gNBy4HDQgCWAcNBx4HDYgCCA0HDgcNKBJYCAA6GGIYCAAyEigSCgAwKEIYOwCwHXgNBz4XfQdudy4="),
		tcol=unpod("b64:bHo0AGQAAABjAAAA8SdweHUAQyAQEAQPP9AOYA8P4A0wDVANIB0gDVAdEB0QHVAdDx8NHA0MHVANDAANEA0ADA1QDRACAPAZYC0QLYBdcAwNYA0MQA0MDTANHA1QDQwgDQwNDIANEAwNDLANYA7QDg=="),
		goose=unpod("b64:bHo0AFIAAABQAAAA8EFweHUAQyAQEARvPxjOOL44rhgXGJ4YFxiOGDcYfhg3GG4YJxEHGF4YJwEXGE4YBwEHEScYPhgHMScYLhgnEUcYHhgnAQcBNxgOGLf4Ag7YDg=="),
		pico_picotron2=unpod("b64:bHo0AEYAAABEAAAA8DVweHUAQyAQEAT-PzVxfgFXEV4RZwFOEQgBLAcPDgcBPhEJBw8PFwwnAT4BCicPDgcsET4RCwcPDVcBThEMAVcBXpH_Ig=="),
		popcorn=unpod("b64:bHo0AFAAAABmAAAA8A1weHUAQyAMDQQfP3EuEQ8PAQ8fHw8PHxEOEQ8PCwD-CR8fHw8hKBcYJyEfGBYdFhEOARgXGBcBHgcACvACDQgXGAcGAR4BHRYdFgEekQ4="),
		book=unpod("b64:bHo0AC4AAAAyAAAA9Q5weHUAQyAMDQQPP48UHz8PFIQODz8OlB6UHiQ_JAYAwJQehL4HHgZ3Dh2OHQ=="),
		vk=unpod("b64:bHo0ACYAAAApAAAA9AhweHUAQyAICAQPP18QDz_PEAcOBw4HLgYAoBdOFw4Hng8-Xg0="),
		discord=unpod("b64:bHo0ACcAAAAlAAAA8BZweHUAQyAICAQPP18QDz_fEAceBy5XHgcOFw4HHhceF44PP14N"),
		pico_big=unpod("b64:bHo0AEMAAABBAAAA8DJweHUAQyAMDAQ-PzF_ARgBXiEYIT4BGRcfDwEeIRkXHTEaVx8OERpXHDEbFx8NIR4BGxcWAT4hHwwhXgEVAX4xPg=="),
		lua=unpod("b64:bHo0AFUAAABTAAAA8ERweHUAQyAQEAT-PwUFDgUOBR4fEE4Fbj2_PR4FPi0uHV49Fw1OBS4tNy4FPj03DT4FHk0XHR4FPo0_BS5tLgVObV4FPi0_Bf4FBW4FjgUOBQ4FXg=="),
		picotron=unpod("b64:bHo0ACkAAAAnAAAA8BhweHUAQyAJCQRxDz8BVyFnISwHDw4HEScMJxEHDgcsIWchVwEPP3E="),
		wrench=unpod("b64:bHo0AHAAAABuAAAA8BVweHUAQyARDgT-PwMWXjdeBQc_BzYHHgUeBQY_BUYHDgUmB04IAPAhJQYHPg8ZBTYFPgUGBx4NBA8UBRYFXgUGBw0EDB4VfgUGBwzODQUGB74NBAwFBgeeFwDwAwUGB34NBAw_BQYHbgQMXgUGPg=="),
		--	gifs
		avatar_gif={
			{time=3640, img=unpod("b64:bHo0AJ4CAACPAwAA8xhweHUAQyAgIAQPHv8ZDg8eDxmvDy84Lw8vOJ8PHxmvDw84HzwPOA8IAAgUADYvLA8SAPABJg84DzwPLC8vDyyvDx8ZnxIAkCwPIQ8mTy8PLCQAQI8PDygUAFQfIQ8vDwQAECYaABB-GgAeKRwAsi8obw8fGV8PDyMPIgBAKB8mH2IAoCY-MB8oTw8fGU8cAMAlDyMfKS8wDyYPLy90APAIJk8wPygPDx8ZPw8PIy8lDyNPMx8mHzAEAPIBDyk-MA8oHw8fGS8PDyMfJT4AII8zMgATLxYAABIAQA83DyQIAGAvNg81XzM0AABuABMfNAAgHzccAEI-Ng80HAAcPxwAJTVPHAAZLxwAQB80DzU4AFsPMl8zLx4AAHQAQB8uHzR0AEIPNA8xIgATHyIAAZAA9gUkDyMfLiAPNC81DzQADzFPMw8yHyQA8QQqDyMvJA8uAC83AA80HzUPNB83JAAwMQ8wPAEUDyYAQCsPIx8oADIPNyAoALMADzcADzE-Mw8xHygAEA8oAFMuHysfIygARC4PNA8qAEAyDzEvVgAnKA8uAGIfLg8rHyouAADGAAAqAEAvMg8zLgA1Dw8fKAD2By8uHyofLTAPLj8iAA8tDyc-Mg8xHw_eACEfLqIA9gUqTy0fPx8kDyIfLQ8nDyovMg8xP8AAAiQA8AQ9Dzo-LQ86Lz8POh8tHyofMg8xpgEQP0QA9QM6Dz0PPw86Pz8vOh8-DzoPPw8gAAKGACAPKyQAIL8-RgAApAARX14AMS8qHxgAMC8-TxgABR4AEm8cAlEqDysvORYAQD8PPU9kADAyDz8gABR-IACAOQ87DzkPPg8mACA5Lz4ARjkfPS8iACM5HyAAMh8_PygAEDqYALCPDw8ZDx7-GQ4PHg==")},
			{time=40, img=unpod("b64:bHo0AJkCAACLAwAA8xhweHUAQyAgIAQPHv8ZDg8eDxmvDy84Lw8vOJ8PHxmvDw84HzwPOA8IAAgUADYvLA8SAPABJg84DzwPLC8vDyyvDx8ZnxIAkCwPIQ8mTy8PLCQAQI8PDygUAFQfIQ8vDwQAECYaABB-GgAeKRwAsi8obw8fGV8PDyMPIgBAKB8mH2IAoCY-MB8oTw8fGU8cAMAlDyMfKS8wDyYPLy90APAIJk8wPygPDx8ZPw8PIy8lDyNPMx8mHzAEAPIBDyk-MA8oHw8fGS8PDyMfJT4AII8zMgATLxYAABIAQA83DyQIAGAvNg81XzM0AABuABMfNAAgHzccAEI-Ng80HAAcPxwAJTVPHAAZLxwAQB80DzU4AFsPMl8zLx4AAHQAQB8uHzR0AEIPNA8xIgATHyIAAZAAgCQPI08uDzQvIACGLg8xTzMPMh8kAPEAKg8jLyQPLkAPNB81DzQQIAAwMQ8wOAEUDyIAsisPIx8kDy4ADzcgJwCzAA83AA8xPzMPMR8oABAPKABTLh8rHyMoAEQuDzQPKgBAMg8xL1YAJygPLgBiHy4PKx8qLgAAwgAAKgBALzIPMy4ANQ8PHygA9gcvLh8qHy0wDy4-IgAPLQ8nPzIPMR8PngAhHy6iAPYFKk8tHz8fJA8iHy0PJw8qLzIPMT-AAAIkAPAEPQ86Py0POi8-DzofLR8qHzIPMaIBED9EAPUDOg89Dz8POj8-LzofPw86Dz8PIAAChgAgDyskACC-P0YAAKQAEV9eADEvKh8YADAvP08YAAUeABJvGAJRKg8rLzkWAEA-Dz1PZAAwMg8-IAAUfyAAgDkPOw85Dz4PJgAgOS8_AEY5Hz0vIgAjOR8gADIfPj8oABA6mACwjw8PGQ8e-xkODx4=")},
			{time=40, img=unpod("b64:bHo0AIoCAABlAwAA8xhweHUAQyAgIAQPHv8ZDg8eDxmvDy84Lw8vOJ8PHxmvDw84HzwPOA8IAAgUADYvLA8SAPABJg84DzwPLC8vDyyvDx8ZnxIAkCwPIQ8mTy8PLCQAQI8PDygUAFQfIQ8vDwQAECYaABB-GgAeKRwAsi8obw8fGV8PDyMPIgBAKB8mH2IAoCY-MB8oTw8fGU8cAMAlDyMfKS8wDyYPLy90APAIJk8wPygPDx8ZPw8PIy8lDyNPMx8mHzAEAPIBDyk-MA8oHw8fGS8PDyMfJT4AII8zMgATLxYAABIAQA83DyQIAGAvNg81XzM0AABuABMfNAAgHzccAEI-Ng80HAAcPxwAJTVPHAAZLxwAQB80DzU4AFsPMl8zLx4AAHQAQB8uHzR0AEIPNA8xIgATHyIAAZAAgCQPI08uDzQvIACGLg8xTzMPMh8kAOIqDyMvJF8uDzQfNQ80HyAAMDEPMDgBFA8iAEgrDyMfJACDKg8xPzMPMR8kABAPJACkLh8rHyNvLg80DyQAQDIPMS9MACcoDygA8AUfLg8rHyoPLgAuAB4fNB4ALzIPMyoANQ8PHyQA9AQuHR8tMA4-IgAPLQ8nPzIPMR8PjQDyCA0eDQ8rDU8tHz8fJA8iHy0PJw0vMg8xTAHwCg0PKw4NDA89Dzo-LQ86Lz8POh8tHR8yDzGHAfQGPR4POg89Dz8POj8-LzofPw86Dz8NHQBQDw8NLgwgACC-Pz8AAJEAEV9TACAtHBYAMC8-TxYABRwAEW-1AUENDC85FABAPw89T1wAMDIPPx4AEn8eAJAPOQ87DzkPPg8lACA5LzsARTkfPS8hADMPOR8gADIfPj8oABA6kACwjw8PGQ8e-xkODx4=")},
			{time=40, img=unpod("b64:bHo0AIoCAABlAwAA8xhweHUAQyAgIAQPHv8ZDg8eDxmvDy84Lw8vOJ8PHxmvDw84HzwPOA8IAAgUADYvLA8SAPABJg84DzwPLC8vDyyvDx8ZnxIAkCwPIQ8mTy8PLCQAQI8PDygUAFQfIQ8vDwQAECYaABB-GgAeKRwAsi8obw8fGV8PDyMPIgBAKB8mH2IAoCY-MB8oTw8fGU8cAMAlDyMfKS8wDyYPLy90APAIJk8wPygPDx8ZPw8PIy8lDyNPMx8mHzAEAPIBDyk-MA8oHw8fGS8PDyMfJT4AII8zMgATLxYAABIAQA83DyQIAGAvNg81XzM0AABuABMfNAAgHzccAEI-Ng80HAAcPxwAJTVPHAAZLxwAQB80DzU4AFsPMl8zLx4AAHQAQB8uHzR0AEIPNA8xIgATHyIAAZAAgCQPI08uDzQvIACGLg8xTzMPMh8kAOIqDyMvJF8uDzQfNQ80HyAAMDEPMDgBFA8iAEgrDyMfJACDKg8xPzMPMR8kABAPJACkLh8rHyNvLg80DyQAQDIPMS9MACcoDygA8AUfLg8rHyoPLgAuAB4fNB4ALzIPMyoANQ8PHyQA9AQuHR8tMA4-IgAPLQ8nPzIPMR8PjQDyCA0eDQ8rDU8tHz8fJA8iHy0PJw0vMg8xTAHwCg0PKw4NDA89Dzo-LQ86Lz8POh8tHR8yDzGHAfQGPR4POg89Dz8POj8-LzofPw86Dz8NHQBQDw8NLgwgACC-Pz8AAJEAEV9TACAtHBYAMC8-TxYABRwAEW-1AUENDC85FABAPw89T1wAMDIPPx4AEn8eAJAPOQ87DzkPPg8lACA5LzsARTkfPS8hADMPOR8gADIfPj8oABA6kACwjw8PGQ8e-xkODx4=")},
			{time=40, img=unpod("b64:bHo0AI4CAABlAwAA8xhweHUAQyAgIAQPHv8ZDg8eDxmvDy84Lw8vOJ8PHxmvDw84HzwPOA8IAAgUADYvLA8SAPABJg84DzwPLC8vDyyvDx8ZnxIAkCwPIQ8mTy8PLCQAQI8PDygUAFQfIQ8vDwQAECYaABB-GgAeKRwAsi8obw8fGV8PDyMPIgBAKB8mH2IAoCY-MB8oTw8fGU8cAMAlDyMfKS8wDyYPLy90APAIJk8wPygPDx8ZPw8PIy8lDyNPMx8mHzAEAPIBDyk-MA8oHw8fGS8PDyMfJT4AII8zMgATLxYAABIAQA83DyQIAGAvNg81XzM0AABuABMfNAAgHzccAEI-Ng80HAAcPxwAJTVPHAAZLxwAQB80DzU4AFsPMl8zLx4AAHQAQB8uHzR0AEIPNA8xIgATHyIAAZAAgCQPI08uDzQvIACGLg8xTzMPMh8kAOIqDyMvJF8uDzQfNQ80HyAAMDEPMDgBFA8iAEgrDyMfJACDKg8xPzMPMR8kABAPJACwLh8rHyMPLkAODzSKAGAgDzIPMS9LACcoDycA8AYeDysfKg4ADzcgHh80AA83AC8yDzMrADUPDx8lAPQELh0fLTAOPyIADy0PJz8yDzEfD40A8ggNHg0PKw1PLR8-HyQPIh8tDycNLzIPMUwB8AoNDysODQwPPQ86Py0POi8-DzofLR0fMg8xhwH0Bj0eDzoPPQ8-Dzo-Py86Hz8POg8-DR0AUA8PDS4MIAAgvz8-AACRABFfUwAgLRwWADAvP08WAAUcABFv9QFBDQwvORQAQD8PPU9cADAyDz8eABJ-HgCQDzkPOw85Dz4PJQAgOS87AEU5Hz0vIQAzDzkfIAAyHz4-KAAQOpAAsI8PDxkPHv8ZDg8e")},
			{time=40, img=unpod("b64:bHo0AJkCAACLAwAA8xhweHUAQyAgIAQPHv8ZDg8eDxmvDy84Lw8vOJ8PHxmvDw84HzwPOA8IAAgUADYvLA8SAPABJg84DzwPLC8vDyyvDx8ZnxIAkCwPIQ8mTy8PLCQAQI8PDygUAFQfIQ8vDwQAECYaABB-GgAeKRwAsi8obw8fGV8PDyMPIgBAKB8mH2IAoCY-MB8oTw8fGU8cAMAlDyMfKS8wDyYPLy90APAIJk8wPygPDx8ZPw8PIy8lDyNPMx8mHzAEAPIBDyk-MA8oHw8fGS8PDyMfJT4AII8zMgATLxYAABIAQA83DyQIAGAvNg81XzM0AABuABMfNAAgHzccAEI-Ng80HAAcPxwAJTVPHAAZLxwAQB80DzU4AFsPMl8zLx4AAHQAQB8uHzR0AEIPNA8xIgATHyIAAZAAgCQPI08uDzQvIACGLg8xTzMPMh8kAPEAKg8jLyQPLkAPNB81DzQQIAAwMQ8wOAEUDyIAsisPIx8kDy4ADzcgJwCzAA83AA8xPzMPMR8oABAPKABTLh8rHyMoAEQuDzQPKgBAMg8xL1YAJygPLgBiHy4PKx8qLgAAwgAAKgBALzIPMy4ANQ8PHygA9gcvLh8qHy0wDy4-IgAPLQ8nPzIPMR8PngAhHy6iAPYFKk8tHz8fJA8iHy0PJw8qLzIPMT-AAAIkAPAEPQ86Py0POi8-DzofLR8qHzIPMaIBED9EAPUDOg89Dz8POj8-LzofPw86Dz8PIAAChgAgDyskACC-P0YAAKQAEV9eADEvKh8YADAvP08YAAUeABJvGAJRKg8rLzkWAEA-Dz1PZAAwMg8-IAAUfyAAgDkPOw85Dz4PJgAgOS8_AEY5Hz0vIgAjOR8gADIfPj8oABA6mACwjw8PGQ8e-xkODx4=")},
			{time=2500, img=unpod("b64:bHo0AJ4CAACPAwAA8xhweHUAQyAgIAQPHv8ZDg8eDxmvDy84Lw8vOJ8PHxmvDw84HzwPOA8IAAgUADYvLA8SAPABJg84DzwPLC8vDyyvDx8ZnxIAkCwPIQ8mTy8PLCQAQI8PDygUAFQfIQ8vDwQAECYaABB-GgAeKRwAsi8obw8fGV8PDyMPIgBAKB8mH2IAoCY-MB8oTw8fGU8cAMAlDyMfKS8wDyYPLy90APAIJk8wPygPDx8ZPw8PIy8lDyNPMx8mHzAEAPIBDyk-MA8oHw8fGS8PDyMfJT4AII8zMgATLxYAABIAQA83DyQIAGAvNg81XzM0AABuABMfNAAgHzccAEI-Ng80HAAcPxwAJTVPHAAZLxwAQB80DzU4AFsPMl8zLx4AAHQAQB8uHzR0AEIPNA8xIgATHyIAAZAA9gUkDyMfLiAPNC81DzQADzFPMw8yHyQA8QQqDyMvJA8uAC83AA80HzUPNB83JAAwMQ8wPAEUDyYAQCsPIx8oADIPNyAoALMADzcADzE-Mw8xHygAEA8oAFMuHysfIygARC4PNA8qAEAyDzEvVgAnKA8uAGIfLg8rHyouAADGAAAqAEAvMg8zLgA1Dw8fKAD2By8uHyofLTAPLj8iAA8tDyc-Mg8xHw_eACEfLqIA9gUqTy0fPx8kDyIfLQ8nDyovMg8xP8AAAiQA8AQ9Dzo-LQ86Lz8POh8tHyofMg8xpgEQP0QA9QM6Dz0PPw86Pz8vOh8-DzoPPw8gAAKGACAPKyQAIL8-RgAApAARX14AMS8qHxgAMC8-TxgABR4AEm8cAlEqDysvORYAQD8PPU9kADAyDz8gABR-IACAOQ87DzkPPg8mACA5Lz4ARjkfPS8iACM5HyAAMh8_PygAEDqYALCPDw8ZDx7-GQ4PHg==")},
			{time=60, img=unpod("b64:bHo0AJwCAACHAwAA8xhweHUAQyAgIAQPHv8ZDg8eDxmvDy84Lw8vOJ8PHxmvDw84HzwPOA8IAAgUADYvLA8SAPABJg84DzwPLC8vDyyvDx8ZnxIAkCwPIQ8mTy8PLCQAQI8PDygUAFQfIQ8vDwQAECYaABB-GgAeKRwAsi8obw8fGV8PDyMPIgBAKB8mH2IAoCY-MB8oTw8fGU8cAMAlDyMfKS8wDyYPLy90APAIJk8wPygPDx8ZPw8PIy8lDyNPMx8mHzAEAPIBDyk-MA8oHw8fGS8PDyMfJT4AII8zMgATLxYAABIAQA83DyQIAGAvNg81XzM0AABuABMfNAAgHzccAEI-Ng80HAAcPxwAJTVPHAAZLxwAQB80DzU4AFsPMl8zLx4AAHQAQB8uHzR0AEIPNA8xIgATHyIAAZAA9gQkDyNPLg80LzUPNAAPMU8zDzIfIwDxACoPIy8kXy4PNB81DzQfNyAAMDEPMDcBFA8iAIIrDyMfJA8uQCUAswAPNwAPMT8zDzEfJQAQDyUA9AEuHysfIw8uAA83IA8uDzQPKgBAMg8xL1MAJygPLgBiHy4PKx8qLgAAvgAAKgBALzIPMy4ANQ8PHygA9gcvLh8qHy0wDy4-IgAPLQ8nPzIPMR8PmwAhHy6fAPYFKk8tHz8fJA8iHy0PJw8qLzIPMT_9AAIkAPAEPQ86Py0POi8-DzofLR8qHzIPMZ4BED9EAPUDOg89Dz8POj8-LzofPw86Dz8PIAAChgAgDyskACC-P0YAAKQAEV9eADEvKh8YADAvP08YAAUeABJvFAJRKg8rLzkWAEA-Dz1PZAAwMg8-IAAUfyAAgDkPOw85Dz4PJgAgOS8_AEY5Hz0vIgAjOR8gADIfPj8oABA6mACwjw8PGQ8e-xkODx4=")},
			{time=120, img=unpod("b64:bHo0AIUCAABUAwAA8BJweHUAQyAgIAQPHv8ZDg8eDxn-Dw4fGa8PLzgvDy84nw8MAHMPOB88DzgPCAAIFAA2LywPEgDwASYPOA88DywvLw8srw8fGZ8SAJAsDyEPJk8vDywkAECPDw8oFABUHyEPLw8EABAmGgAQfxoAHikcALIvKG8PHxlfDw8jDyIAQCgfJh9iAKAmPzAfKE8PHxlPHADAJQ8jHykvMA8mDy8vdADwCCZPMD8oDw8fGT8PDyMvJQ8jTzMfJh8wBADyAQ8pPzAPKB8PHxkvDw8jHyU_ACCPMzIAEy8WAAASAEAPNw8kCABgLzYPNV8zNAAAbgATHzQAIB83HABCPzYPNBwAHD8cACU1TxwAGS8cAEAfNA81OABbDzJfMy8eAAB0AEAfLh80dABCDzQPMSIAEx8iAAGQAPYEJA8jTy4PNC81DzQADzFPMw8yHyMA8QAqDyMvJF8uDzQfNQ80HzcgADAxDzA3ARQPIgBFKw8jHyQAswAPNwAPMT8zDzEfJAAQDyQAxC4fKx8jHy4QLg80DyYAQDIPMS9OACcoDyoAkR4PKx8qPiAOHyQAQC8yDzMoADUPDx8iAPQELh0fLTAOPyIADy0PJz8yDzEfD40A8ggNHg0PKw1PLR8-HyQPIh8tDycNLzIPMUsB8AoNDysODQwPPQ86Py0POi8-DzofLR0fMg8xhgH0Bj0eDzoPPQ8-Dzo-Py86Hz8POg8-DR0AUA8PDS4MIABgXz8fDj8-QwAAlQARX1cAMC0fORsAMC8-TxcABR0AEW-5AZENDzkPOw85Dz4ZAEA-Dz1PZgAwMg8-IwASfxwCIjkfIgBiOQ8-Dz4-CgAQPbcAsH8PDxkPHv8ZDg8e")},
			{time=540, img=unpod("b64:bHo0AJECAABoAwAA8xhweHUAQyAgIAQPHv8ZDg8eDxmvDy84Lw8vOJ8PHxmvDw84HzwPOA8IAAgUADYvLA8SAPABJg84DzwPLC8vDyyvDx8ZnxIAkCwPIQ8mTy8PLCQAQI8PDygUAFQfIQ8vDwQAECYaABB-GgAeKRwAsi8obw8fGV8PDyMPIgBAKB8mH2IAoCY-MB8oTw8fGU8cAMAlDyMfKS8wDyYPLy90APAIJk8wPygPDx8ZPw8PIy8lDyNPMx8mHzAEAPIBDyk-MA8oHw8fGS8PDyMfJT4AII8zMgATLxYAABIAQA83DyQIAGAvNg81XzM0AABuABMfNAAgHzccAEI-Ng80HAAcPxwAJTVPHAAZLxwAQB80DzU4AFsPMl8zLx4AAHQAQB8uHzR0AEIPNA8xIgATHyIAAZAA9gQkDyNPLg80LzUPNAAPMU8zDzIfIwDxACoPIy8kXy4PNB81DzQfNyAAMDEPMDcBFA8iAEUrDyMfJACzAA83AA8xPzMPMR8kABAPJADELh8rHyMfLhAuDzQPJgBAMg8xL04AJygPKgCRHg8rHyo_IA4fJABALzIPMygANQ8PHyIA9AQuHR8tMA4-IgAPLQ8nPzIPMR8PjQDyCA0eDQ8rDU8tHz8fJA8iHy0PJw0vMg8xSwHwCg0PKw4NDA89Dzo-LQ86Lz8POh8tHR8yDzGGAfQGPR4POg89Dz8POj8-LzofPw86Dz8NHQBQDw8NLgwgAGBfPx8OPz9DAACVABFfVwAgLRwaADAvP08WAAUcABFv_AFBDQwvORQAQD8PPU9gADAyDz8eABJ-HgCQDzkPOw85Dz4PJQAgOS87AEU5Hz0vIQAzDzkfIAAyHz4-KAAQOpQAsI8PDxkPHv8ZDg8e")}
		},
		ru_flag=unpod("b64:bHo0ALAAAAC0AAAA8S5weHUAQyA8CARfDyc_Vw4nbif_DhcGJwYXBlcGJwaHBhcuN14HLocGFwYvEAYXBl0GLQZXLQYXBgcGNwY3IgDwFR0BLQEdAV0BLQGNAR0GBwY9BjcGDRcGjQEdASgBHQFYASgBXQkAUQ0BPQE9JgDwFhgPGCgMGAxYDCgMiAwYAQ0BOAE9AQgdAYgMGAwuDBgMXgwuDFgJAFEIDDgMOCYA0P4RDAgMPgw4DA4YDG4="),
		uk_flag=unpod("b64:bHo0AOEAAAAFAQAA8BZweHUAQyA8CARfDwEXPgEYARcOCBduCBf_DgEIDxgHGA0IBwYHCAAgARgdABAIBwBgLhgXXgguDwDwAhgHBgcIDSgRCA1YASgGGAcYBgBAAQcGES0AMwcGAT0A8A0RCA0YDSgNGA1YDSgNiA0YBggNOAYYBwgNCAEIEAAxDQcYBQABZwAwDVgBDgBRCA04DTgvAHAHCA0BFxEIggBBFwEIF2cAAAcAcA0IDREYDTgzAANlAEABCA0usQAhXg2eAACkAFUGCA0YF2wAA7QA8AH_EQEHBj4BGAEHBg4IBwZu"),
	}
	
}