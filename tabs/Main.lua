-- LessonFourB

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This program displays three sprites and one object has collision detection aagainst the other 2 objects 

-- variables
local beetle
local planet
local rocket

-- Use this function to perform your initial setup
function setup()  
    supportedOrientations(LANDSCAPE_ANY)
    --displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    --sprite("SpaceCute:Beetle Ship")
    beetle = SpriteObject("SpaceCute:Beetle Ship", vec2(WIDTH/2, HEIGHT/2 +200))
    planet = SpriteObject("SpaceCute:Planet", vec2(WIDTH/2-200, HEIGHT/2-100))
    rocket = SpriteObject("SpaceCute:Rocketship", vec2(WIDTH/2+200, HEIGHT/2-100))
end

-- This function gets called once every frame
function touched(touch)
    
    -- local variables 
    beetle:touched(touch)
    planet:touched(touch)
    rocket:touched(touch)
    
    if( (beetle:isTouching(planet) == true) or
       (beetle:isTouching(rocket) == true) )then
        print("touching")
    else
        print("not touching")
    end
end

-- This function gets called once every frame
function draw()
    
    -- local variables

    -- This sets a background color 
    sprite("Dropbox:CompanyLogo", WIDTH/2, HEIGHT/2)
    beetle:draw()
    planet:draw()
    rocket:draw()
end