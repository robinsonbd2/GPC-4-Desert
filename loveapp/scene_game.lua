-- 
--  scene_game.lua
--  redditgamejam-05
--  
--  Created by Jay Roberts on 2011-01-06.
--  Copyright 2011 GloryFish.org. All rights reserved.
-- 

require 'logger'
require 'vector'

game = Gamestate.new()
game.level = ''

function game.enter(self, pre)
  game.period = 120
end

function game.mousereleased(self, x, y, button)
end

function game.update(self, dt)
  game.elapsed = game.elapsed + dt
  local _, time = math.modf(game.elapsed / game.period)
  
 self.background:update(dt, time)
end

function game.draw(self)
  self.background:draw(dt)
end

function game.leave(self)
end