-- Cette ligne permet d'afficher des traces dans la console pendant l'éxécution
io.stdout:setvbuf('no')

-- Empèche Love de filtrer les contours des images quand elles sont redimentionnées
-- Indispensable pour du pixel art
love.graphics.setDefaultFilter("nearest")

-- Cette ligne permet de déboguer pas à pas dans ZeroBraneStudio
if arg[#arg] == "-debug" then require("mobdebug").start() end

local Sprite = require("Sprite")
local Alien = require("Alien")

local camera = {}
camera.x = 1



local lHeros = {}
local lAliens = {}
local lAliensSprites = {}

function love.load()
    love.window.setTitle("Mon shooter POO !")
    width = love.graphics.getWidth()
    height = love.graphics.getHeight()  

    --heros = Sprite.new("heros", width/2, height/2)
    --table.insert(lHeros,heros)
    
    local alien1 = Alien.new(1, width/2, height/2, 0, camera)
    local alien1Sprite = Sprite.new(alien1.img, alien1.x, alien1.y)
    local alien2 = Alien.new(3, width/2, height-70, 0, camera)
    local alien2Sprite = Sprite.new(alien2.img, alien2.x, alien2.y)
    table.insert(lAliens, alien1)
    table.insert(lAliens, alien2)
    table.insert(lAliensSprites, alien1Sprite)
    table.insert(lAliensSprites, alien2Sprite)



end

function love.update(dt)

end

function love.draw()
    for n=1, #lAliensSprites do
        local s = lAliensSprites[n]
        love.graphics.draw(s.img, s.x, s.y, 0, 2, 2, s.l/2,s.h/2)
    end
end

function love.keypressed(key)
  
    print(key)
  
end
  