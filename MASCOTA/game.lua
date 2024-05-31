
 lib = require 'lib'
 
 pet = {}
 pet.x = 350
 pet.y = 230
 pet.level = 1
 pet.stats = {
     health = 100,
     fun = 50,
     fullness = 50

    }



 food = {
  x = 360,
  y = 500,
  radius = 15,
  obj = object.new()
 }


  col = {}
  col.x = 350
  col.y = 230
  col.radius = 80

colorG = love.graphics.getColor(0, 1, 0)
 text = 'no'



 function distanceBetween(x1, y1, x2, y2)
    return math.sqrt ( (x2 - x1)^2 + (y2 - y1)^2 )
end


local grabbed = false




function gameUpdate(dt)

objectupdate(dt)
statsLimit(dt)





end



function gameDraw()
    love.graphics.setColor(1, 1, 1)
    love.graphics.print(text)
    love.graphics.rectangle('fill', pet.x, pet.y, 80, 110)
    love.graphics.circle('fill', col.x, col.y, col.radius)
    love.graphics.print('hunger: '..pet.stats.fullness, 50)
    love.graphics.print('health: '..pet.stats.health, 150)
    love.graphics.print('fun: '..pet.stats.fun, 230)
   love.graphics.push()
      love.graphics.setColor(0, 1, 0)
      love.graphics.circle('fill', food.x, food.y, food.radius)
      love.graphics.rectangle('fill', 10, 50, 50, 10)
    love.graphics.pop() 

end