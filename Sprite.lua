local Sprite = {}

local Sprites_mt = { __index = Sprite }

function Sprite.new(pImg, pX, pY)
    local newSprite = {}

    newSprite.x = pX
    newSprite.y = pY
    newSprite.isAlive = true
        
    newSprite.img = love.graphics.newImage("images/"..pImg..".png")
    newSprite.l = newSprite.img:getWidth()
    newSprite.h = newSprite.img:getHeight()

    newSprite.frame = 1
    newSprite.listeFrames = {}
    newSprite.maxFrame = 1

    return setmetatable(newSprite, Sprites_mt)
end

return Sprite