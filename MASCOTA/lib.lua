-- game = require 'game'


function distanceBetween(x1, y1, x2, y2)
    return math.sqrt ( (x2 - x1)^2 + (y2 - y1)^2 )
end


local grabbed = false



object = {
    x = nil,
    y = 500,
    radius = 15,
    type = nil,
    code = nil,
    asset = nil
}

object.__index = object

function eatfood(healthy)

    pet.stats.fullness = pet.stats.fullness + 5
    if healthy == true then
    pet.stats.health = pet.stats.health + 3
    elseif healthy == false then
        pet.stats.health = pet.stats.health - 2
    end

end



function object.new(type, code, asset)
    if type == 'food' then
        if code == 'healthy' then
            eatfood(true)
        elseif code == 'unhealthy' then
            eatfood(false)
        end
    end

end


function statsLimit(dt)
    if pet.stats.health >= 100 then 
        pet.stats.health = 100 
    end
    if pet.stats.fullness >= 100 then 
        pet.stats.fullness = 100 
    end
end
 


function objectupdate(dt)
    x, y = love.mouse.getPosition()

-- MOVIDO DE GAME
    if grabbed then
        food.x = love.mouse.getX()
        food.y = love.mouse.getY()
        end
    local inpet = false
        local foodToPet = distanceBetween(food.x, food.y, col.x, col.y)
        if foodToPet < col.radius then --food.y < col.y + col.radius then
            text = 'yum'
            inpet = true
            if inpet and grabbed == false then
    
            for i, v in pairs(pet.stats) do -- CAMBIAR VALOR A DISTINTOS ELEMNTOS DE LA TABLA
                --pet.stats[i] =  pet.stats[i] + 20
                pet.stats.fullness = pet.stats.fullness + 10
            end
        end
                
        else
            text = 'no'
            inpet = false
        end
    
    
    
    function love.mousepressed( x, y, button, istouch, presses )
    if button == 1 then
        local mouseTofood = distanceBetween(x, y, food.x, food.y)
        if mouseTofood < food.radius then
        if love.mousepressed and grabbed == false then
            grabbed = true
        
        elseif love.mousepressed and grabbed then
            grabbed = false
        end  
    
        end
    end
    end


    if inpet == true and grabbed == false then
        food.x = 360
        food.y = 500
        end
    

end