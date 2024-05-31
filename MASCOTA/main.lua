function love.load()
lib = require 'lib'
game = require 'game'
   
end



function love.update(dt)

 gameUpdate(dt)

end

function love.draw()
    
  gameDraw()
end