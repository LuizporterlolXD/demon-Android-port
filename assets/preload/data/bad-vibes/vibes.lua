--[[local valores = {"0.4", "0.2", "0.6"}

local blood

function onUpdate()
    if blood then
        if curStep % 16 == 0 then
            doTweenAlpha('hello1', 'nt2', 1, valores[3], 'linear');
        end
        
        if curStep % 32 == 0 then
            doTweenAlpha('hello1', 'nt2', 0, valores[3], 'linear');
        end
    end

    if blood == false then
        doTweenAlpha('hello1', 'nt2', 0, valores[3], 'linear');
    end

    blood = true
end

function onStepHit()
    if curStep == 928 then

        cameraFlash("other", "FFFFFF", 1.5, false)
    end

    if curStep == 1184 then
        cameraFlash("other", "FFFFFF", 1.5, false)
    end

    if curStep == 1440 then
        cameraFlash("other", "FFFFFF", 1.5, false)
    end
end

function onCreate()
    makeLuaSprite('nt2', 'RedVG', 0, 0)
    setObjectCamera('nt2', 'other')
    addLuaSprite('nt2', true)
    defaultCamZoom = getProperty('defaultCamZoom') - 0.01;
	setProperty('nt2.scale.x', 1 / defaultCamZoom);
	setProperty('nt2.scale.y', 1 / defaultCamZoom);
    doTweenAlpha('s', 'nt2', 0, 0.01, 'linear');
end
]]--