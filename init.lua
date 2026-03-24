local paused = false

function mediaPause()
    hs.eventtap.event.newSystemKeyEvent("PLAY", true):post()
    hs.eventtap.event.newSystemKeyEvent("PLAY", false):post()
end

function isCallActive()
    local app = hs.application.get("Linphone")
    if not app then return false end

    for _, win in ipairs(app:allWindows()) do
        local title = win:title() or ""

        if title == "Appels" then
            return true
        end
    end

    return false
end

function checkCallState()
    local callActive = isCallActive()

    if callActive and not paused then
        mediaPause()
        paused = true

    elseif not callActive and paused then
        mediaPause()
        paused = false
    end
end

timer = hs.timer.doEvery(0.3, checkCallState)
