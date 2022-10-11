

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.01);
    end
end

		--easy script configs
		local Max = 50 -- Amount of misses to Kill the Player
		local font = "vcr.ttf";
		
		function onCreatePost()
			makeLuaText('info', 'Less Then ' .. (Max) .. (" Misses"), 300, 135 + getProperty('healthBarBG.width') / 2, getProperty('healthBarBG.y') + 0);
			setTextBorder('info', 2, '000000');
			setTextAlignment('info', 'right');
			setTextFont('info', font);
			setTextSize('info', 21.25);
			
			setProperty('healthBar.visible', false)
			setProperty('healthBarBG.visible', false)
			setProperty('iconP1.visible', false)
			setProperty('iconP2.visible', false)
			addLuaText('info');
		end
		
		
		function noteMiss()
			if getProperty('songMisses') == Max then
				setProperty('health', getProperty('health')-200);
				else
				setProperty('health', getProperty('health')+200);
			end
		end