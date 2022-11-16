--healthdrain code
function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.02);
    end
end
--end of healthdrain code


function cameraFlash(camera, color, duration, forced)
    makeLuaSprite('cameraFlash', '', 0, 0)
    makeGraphic('cameraFlash', screenWidth, screenHeight, color)
    setObjectCamera('cameraFlash', camera)
    addLuaSprite('cameraFlash', forced)

    doTweenAlpha('cameraFlash', 'cameraFlash', 0, duration)
end

function onTweenCompleted(tag)
    if tag == 'cameraFlash' then
        removeLuaSprite('cameraFlash')
    end
end

function onCreate()
    setProperty('skipCountdown', true)
    cameraFlash('other', '000000', 16, true)
end
