local paused = false

function mediaPause()
    hs.eventtap.event.newSystemKeyEvent("PLAY", true):post()
    hs.eventtap.event.newSystemKeyEvent("PLAY", false):post()
end

function checkLinphoneWindow()
    local app = hs.application.get("Linphone")
    
    if app then
        local win = app:focusedWindow()
        
        if win and win:title() == "Appels" then
            if not paused then
                mediaPause()
                paused = true
            end
        else
            if paused then
                mediaPause()
                paused = false
            end
        end
    else
        if paused then
            mediaPause()
            paused = false
        end
    end
end

timer = hs.timer.doEvery(0.5, checkLinphoneWindow)
