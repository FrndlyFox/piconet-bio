--[[pod_format="raw",created="2024-04-01 12:12:51",modified="2024-04-02 11:27:22",revision=216]]
p = {
	title = "Desktop mod",
	g = create_gui({x=0,y=0,
		width=explorer.current_width,height=482,
		fgcol = 0x090d}),
	init = function(self,explorer)
		self.first_frame=true
		-- buttons
		self.g:attach(self.create_button{x=130,y=4,label="Download v0.1.0e",
			bgcol=9,fgcol=7,
			tap=function()
				download(self.links.file.link,self.links.file.name)
				notify(self.links.file.name.." just downloaded")
			end
		})
		self.g:attach(self.create_button{x=255,y=4,label="Home",
			bgcol=9,fgcol=7,
			tap=function()
				explorer:open_page(self.links.home)
			end
		})
		self.g:attach(self.create_button{x=19,y=313,
			label="cp /system /new_sys",bgcol=0,fgcol=7,
			tap=function(self)
				set_clipboard(self.label)
				notify("Copied!")
			end
		})
	end,
	get_gui = function(self,explorer)
		return self.g
	end,
	draw = function(self,explorer)
		if (self.first_frame) then -- draw text and static images only in the first frame for good performance
			for i=0,63 do palt(i,false) end
			cls(15)
		self.oprint("\^w\^tDesktop mod",3,3,7,9)
			color(25)
print([[by F3ynmanium

I thought it would be great
to be able to organize icons on the desktop
so I made this mod. In fact it's a filenav mod,
but I call it desktop as long as
it only affects desktop.

Features:]],3,19)
print(" -	Adjustable grid placement")
print(" -	Hiding file extensions")
print(" -	Both for desktop and tooltray")
print(" -	Settings app")
print([[

Installation:
 1.	Download installer above
 2.	Go to /downloads and open downloaded file,
 	it will unpack filenav.p64 to the same folder
 3.	Replace /system/apps/filenav.p64 with it
	and reboot Picotron]])
print([[

Usage:
	Click RMB and open settings on desktop or tooltray
	to tweak desktop or tooltray

If you don't know how to modify system files:]])
print(" 1.	In Picotron copy /system to somewhere with a new name\n								(click to copy)")
print(" 2.	Shutdown Picotron, go to it's folder on host OS\n	and rename \"new_sys\" to \"system\"")
print(" 3.	Boot Picotron back and now\n	you can freely modify system files!")
print("\nJust don't forget to copy new /system after updates\nAnd if you broke something in /system,\njust delete /system and Picotron will load a fresh one!")

print([[

For the future updates I'm thinking about adding
a custom list with extensions to hide
and no longer only desktop feature -
file shortcuts e.g ctrl+c,v
(if zep doesn't add this first)]])
				print(string.rep("-",57),4,283)
				print(string.rep("-",57),4,415)
				palt(63,true)
				spr(self.gfx.settings,171,85)
				self.first_frame=false
			end
		end,
	oprint=function(s,x,y,f,o,p)
		for v in all(split(p or '\+ff,\+gf,\+hf,\+fg,\+hg,\+fh,\+gh,\+hh,')) do
			?v..s,x,y,v!='' and o or f
		end -- #knutil_oprint-3 v0.3 (PICO-8)
	end, -- @shiftalow / bitchunk
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
		home="https://raw.githubusercontent.com/FrndlyFox/picosite/main/home.lua",
		file={
			link="https://raw.githubusercontent.com/FrndlyFox/picosite/main/projects/desktop_mod_v0-1-0e.p64.png",
			name="desktop_mod_v0-1-0e.p64.png"
		}
	},
	gfx={
		settings=unpod("b64:bHo0AA8DAAAkBQAA8BxweHUAQyBuYAQfP-RaLgT5WgQOBPlcFPkWF3kHOQc5B-khFFln_QgHGQdpDgDwDB8nORT5FQdJFxk3CTcJFxknKScZJ-kJBykHKSgAQAkXGQcCAAA6AAAIABEJBAAh_QwgAFr5GAcJNxwARBkX_Qo8ABEIFAAVSSAAYBknOQf5CnAAsRYXKScpFykXCScJXAD4Awkn_RIU_TMX_RcU_Vz0YPdcFAMA5pcltwVHBfc8FJcFFwWnCwDxARcVJyUHBRcFBzUXFRcl9zEVAAERAIMFNwUHBScFJxAARPcwFJcoAC0VNxcARgVnBQcwAAFJAPEFJSclByUXBRcFJxUXFRcF9zMU9xgGAB9cAwAA8ACXgfdJFJcBZwFnLWcNRw1AAJgBB0EHAVcN9wAOAIc3DQcdBx0nLRMAABEAWDcNFw0XKABfFw0HDUcVAAwAbQBRBw03LRdOAACBAAePAPAI5w0XDbcN9wINdx0XHfcIFJchJyE3DZc8AGEPDYcNJw0UADMHAQcWADEXHReKAGAXPRcdFy0GADInDSdsANACFCdNFyEnIRdNdz0HhQBRHTcNRw0KAAEhAACZAAUrAAhUABMHsgAzJx0XDgAQF68ACC0ABJUAFQfdABU3KwATJwYAQyct9wLSAACmAFE3LQc9F1IAECeqAEAdFx03TABT90cd9wP-AAoFATA3DbcEARASnAASQW8AARoBKScNFAADAgEQPZ8BB-4AFgz_AAOaAAAAAQCmADZnDRclAAn4ABA9ywAAIwApRy0jAALuABEH5gACIQARNx0AAeQAEAyxALUdNy0HDVcdBy0XLdwAcwwU9z0d9w3WAA8DABcFlAIRV2UApUcN9wYN9wMN9wsVABF3EwAVHxAAAvsAEnevAQEJAlEnLQcdJwgAEqcmABA9HAACCAETVwgAAuMAFQfCAQQMABXXWAACAgAyBz1XVwIBRgIACgAELAA8Fx23LAAlDYccAQYoAQIuADU3DacuAAIpAQAIAwIPAhQHFAACxAArLbcZA6D3XBT3XAQO9FwO")
	}
}