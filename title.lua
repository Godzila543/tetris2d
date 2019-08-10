local Title = Class{__includes = State}
Title.buttons = {
	Button(200, 100, 400, 100, "Start Game", function() Manager.push(Manager.states[2]) end),
	Button(200, 250, 400, 100, "Exit Game", function() love.event.quit(0) end)
}
function Title:draw()
	love.graphics.setColor(1,1,1)
	love.graphics.printf("Not tetris please do not sue me omg!!", 200, 10, 400, "center")
end

return Title
