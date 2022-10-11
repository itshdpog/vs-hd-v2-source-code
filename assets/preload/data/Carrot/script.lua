--cutscene code
local allowCountdown = false
function onStartCountdown()
setPropertyFromClass('GameOverSubstate', 'characterName', 'hdbf-dead');
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('3rd');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end
function onEndSong()
    if isStoryMode and not seenCutscene then
        startVideo('finale')
        seenCutscene = true
        return Function_Stop
    end
    return Function_Continue
end
--healthdrain code
function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.02);
    end
end
--end of healthdrain code

function onCreate()
	--    makeLuaText('creator', creator, 150, 20, 670)
		makeLuaText('creator', "Made By Sixteenj", 150, 20, 670)
		setTextBorder('creator', 1, '0xFF000000')
		addLuaText('creator')
		setTextAlignment('creator','left')
	end