splash = require "splash"
splash:startSplashScreen("example.png", "example", 500, 500, 5, {imagePos = {10, 10}, textPos = {50, 50}, textStyle = {"font.ttf", 25}},
                            function()
                                love.window.setMode(1000, 500, {borderless = false})
                            end)

function love.load()
end


function love.draw()
    love.graphics.print("hello world!")
    splash:update()
end

function love.update(dt)
    if love.keyboard.isDown("escape") then love.event.quit() end
end