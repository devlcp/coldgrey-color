local lush = require('lush')
local hsl = lush.hsl
local let = vim.g

local colors = {}

if let.coldgrey_background == 'dark' then
  colors = {
    background = hsl(228, 19, 15),
    foreground = hsl(205, 26, 70),
    red        = hsl(0, 26, 70),
    green      = hsl(121, 26, 70),
    brown      = hsl(25, 26, 70),
    blue       = hsl(225, 26, 70),
    purple     = hsl(261, 26, 70),
    cyan       = hsl(180, 26, 70),
    yellow     = hsl(60, 26, 70),
    pink       = hsl(310, 26, 70)
  }
else 
  colors = {
    background = hsl(205, 26, 70),
    foreground = hsl(228, 19, 15),
    red        = hsl(0, 26, 40),
    green      = hsl(121, 26, 30),
    brown      = hsl(25, 26, 40),
    blue       = hsl(225, 26, 40),
    purple     = hsl(261, 26, 40),
    cyan       = hsl(180, 26, 40),
    yellow     = hsl(60, 100, 20),
    pink       = hsl(310, 26, 40)
  }
end

return colors
