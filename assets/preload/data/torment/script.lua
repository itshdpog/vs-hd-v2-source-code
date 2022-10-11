

--healthdrain code
function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.0125);
    end
end
--end of healthdrain code

local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and not seenCutscene then --Block the first countdown
		startVideo('torment');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onCreate()
	--    makeLuaText('creator', creator, 150, 20, 670)
		makeLuaText('creator', "Made By Sixteenj", 150, 20, 670)
		setTextBorder('creator', 1, '0xFF000000')
		addLuaText('creator')
		setTextAlignment('creator','left')
	end