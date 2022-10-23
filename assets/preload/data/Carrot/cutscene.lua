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

