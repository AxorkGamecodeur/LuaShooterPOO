-- Cette ligne permet d'afficher des traces dans la console pendant l'éxécution
io.stdout:setvbuf('no')

-- Empèche Love de filtrer les contours des images quand elles sont redimentionnées
-- Indispensable pour du pixel art
love.graphics.setDefaultFilter("nearest")

-- Cette ligne permet de déboguer pas à pas dans ZeroBraneStudio
if arg[#arg] == "-debug" then require("mobdebug").start() end

local aliens = require("aliens")
local camera = {}
camera.x = 1

local alien1 = aliens.new(1, 10, 10, 0, camera)
local alien2 = aliens.new(3, 10, 10, 0, camera)


function love.load()
    love.window.setTitle("Artifact")
    width = love.graphics.getWidth()
    height = love.graphics.getHeight()  

end

function love.update(dt)

end

function love.draw()
    love.graphics.print(alien1.img,0, 0)
end

function love.keypressed(key)
  
    print(key)
  
end
  