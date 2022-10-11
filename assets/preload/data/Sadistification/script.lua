local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'Sadist');
	end
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.2 then
        setProperty('health', health- 0.01);
    end
end

function onCreate()
	--    makeLuaText('creator', creator, 150, 20, 670)
		makeLuaText('creator', "Made By Sixteenj", 150, 20, 670)
		setTextBorder('creator', 1, '0xFF000000')
		addLuaText('creator')
		setTextAlignment('creator','left')
	end