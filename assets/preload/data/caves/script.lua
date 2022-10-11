local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('1st');
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