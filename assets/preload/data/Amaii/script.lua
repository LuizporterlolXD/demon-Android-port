--[[local values = {"0.4", "0.2"}
local zoomin 
local funnyscroll

function onUpdate()
    if zoomin then
        doTweenZoom('bruh', 'camGame', 1.2, values[1], 'linear')
        setProperty('defaultCamZoom', 1.2)
    end

    if zoomin == false then
        doTweenZoom('bruh', 'camGame', 0.9, values[2], 'linear')
        setProperty('defaultCamZoom', 0.9)
    end

    if funnyscroll then
        if curStep % 16 == 0 then
            triggerEvent('Change Scroll Speed', 0.5, 0.2)
        end
        
        if curStep % 16 == 2 then
            triggerEvent('Change Scroll Speed', 1.3, 0.5)
        end
    end
end

function onStepHit()
    if curStep >= 2 then
        zoomin = true
    end

    if curStep >= 130 then
        zoomin = false

        funnyscroll = true
    end
end]]--