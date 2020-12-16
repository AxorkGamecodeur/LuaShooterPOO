local Alien = {}

local aliens_mt = { __index = Alien }

local alienSprite = require("Sprite")

function Alien.new(pType, pX, pY, pShotTiming, pCamera)
  local newAlien = {}
  newAlien.x = pX
  newAlien.y = pY
  newAlien.type = pType
  newAlien.isSleeping = true
  newAlien.shotTiming = 0
  newAlien.img = ""

  if pType == 1 then
    newAlien.img = "enemy1"
    newAlien.vy = 2
    newAlien.vx = 0
    newAlien.energy = 1
  elseif pType == 2 then
    newAlien.img = "enemy2"
    newAlien.vy = 2
    newAlien.energy = 3
    local direction = math.random(1, 2)
    if direction == 1 then newAlien.vx = 1 else newAlien.vx = -1 end
  elseif pType == 3 then
    newAlien.img = "tourelle"
    newAlien.vy = pCamera.vitesse
    newAlien.vx = 0
    newAlien.energy = 5
  elseif pType == 10 then
    newAlien.img = "enemy3"
    newAlien.vy = pCamera.vitesse * 2
    newAlien.vx = 0
    newAlien.energy = 20
    newAlien.angle = 0
  end

  return setmetatable(newAlien, aliens_mt)
end

return Alien