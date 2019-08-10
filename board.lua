local Board = Class{__includes = State}
Board.buttons = {}

function Board:draw()
	love.graphics.printf("Wowweee this is the game screen!", 200, 10, 400, "center")
end

return Board
