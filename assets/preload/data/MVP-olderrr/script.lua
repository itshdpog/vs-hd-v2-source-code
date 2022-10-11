function onEndSong()
	if not allowEnd and isStoryMode then
		startVideo('last');
		allowEnd = true;
		return Function_Stop;
	end
	return Function_Continue;
end

local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('third');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

--healthdrain code
function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.0135);
    end
end
--end of healthdrain code

	--easy script configs
