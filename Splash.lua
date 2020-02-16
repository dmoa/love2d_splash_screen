local Splash = {
    debug = true,
    errorF = "\nSPLASH SCREEN LIBRARY ERROR",
    finished = true,
    timer = 0,
    image = nil
}

function Splash:startSplashScreen(img, text, width, height, delay)
    -- error handling
    if not img then 
        error("image/path to image not given"..self.errorF, 2)
    elseif tostring(text) ~= text then
        error("text parameter not supplied with string"..self.errorF, 2)
    elseif tonumber(width) ~= width then
        error("width parameter not supplied with number"..self.errorF, 2)
    elseif tonumber(height) ~= height then
        error("height parameter not supplied with number"..self.errorF, 2)
    elseif tonumber(delay) ~= delay then
        error("delay parameter not supplied with number"..self.errorF, 2)
    end

    -- starting splash screen
    self.finished = false

    -- checking if "img" is path to image or if image type
    if tostring(img) == img then
        if self.debug then print("string given, now making image") end
        self.image = love.graphics.newImage(img)
    else
        if self.debug then print("string not given, assuming type is already image") end
        self.image = img
    end

    -- setting timer
    self.timer = delay

    -- making window borderless
    love.window.setMode(width, height, {borderless = true})

end

function Splash:update(dt)
    if not self.finished then

        self.timer = self.timer - love.timer.getDelta()

        love.graphics.draw(self.image)

        if self.timer < 0 then
            self.finished = true
        end
        
    end
end

return Splash