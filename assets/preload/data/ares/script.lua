local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('2nd');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

--healthdrain code
function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.0125);
    end
end

function onEndSong()
    if isStoryMode and not seenCutscene then
        startVideo('3rd')
        seenCutscene = true
        return Function_Stop
    end
    return Function_Continue
end

--end of healthdrain code

	--easy script configs

