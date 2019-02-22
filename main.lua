-----------------------------------------------------------------------------------------
--
-- how to calculate the area of a square
-- 
-----------------------------------------------------------------------------------------
local image = display.newImageRect( "PPPizza.png", 400, 400 )
image.x = 350
image.y = 650

local diameter = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 75 )
diameter.id = "a textField"
diameter.inputType = "number"

local costtext = display.newText( "Cost Of pizza", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 75 )
costtext.id = "area textField"
costtext:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "calculateButton.png", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 display.setDefault( "background", 255, 0, 0 )

function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end
local function calculateButtonTouch( event )
    -- this function calculates the area of a square given the length of one of its sides
 
    
    local cost
 
   
    cost = ( 0.50 * diameter.text + 1.00 + 0.75 ) *1.13
    cost = round(cost,2)
    -- print( diameter )
   costtext.text = "The cost is $ " .. cost

    return true
end
calculateButton:addEventListener( "touch", calculateButtonTouch )