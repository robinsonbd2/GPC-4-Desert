-- 
--  menu.lua
--  desert
--  
--  Created by Jay Roberts on 2011-03-18.
--  Copyright 2011 GloryFish.org. All rights reserved.
-- 

Menu = class('Menu')

function Menu:initialize(pos)
  self.position = pos
  self.buttons = {}
  self.visible = true
end

function Menu:mousepressed(pos)
  if self.visible then
    for i, button in ipairs(self.buttons) do
      button:mousepressed(pos)
    end
  end
end

function Menu:mousereleased(pos)
  if self.visible then
    for i, button in ipairs(self.buttons) do
      button:mousereleased(pos)
    end
  end
end

function Menu:addButton(button)
  table.insert(self.buttons, button)
  self:layoutButtons()
end

function Menu:layoutButtons()
  local y = self.position.y
  for i, button in ipairs(self.buttons) do
    button.position = vector(self.position.x, y)
    y = y + 45
  end
end

function Menu:draw()
  if self.visible then
    for i, button in ipairs(self.buttons) do
      button:draw()
    end
  end
end