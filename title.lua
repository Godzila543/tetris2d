local Title = Class{__includes = State}

function Title:draw()
	love.graphics.printf("Not tetris please do not sue me omg!!", 400, 10, 200, "center", 0, 4, 4)
end

return Title
