splash = require "Splash"
splash:startSplashScreen("example.png", "oof", 500, 500, 5)

image = love.graphics.newImage("example.png")
love.graphics.draw(image)
function love.load()
end


function love.draw()
    love.graphics.print("OOF")
    splash:update()
end

function love.update(dt)
    if love.keyboard.isDown("escape") then love.event.quit() end
end