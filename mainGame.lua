local game = Class{__includes = State}
game.gravity = Vector(0, -0.05)
game.buttons = {}
game.collision = {
	{Vector(0, 0), Vector(1280, 0)},
	{Vector(0, 0), Vector(0, 720)},
	{Vector(0, 720), Vector(1280, 720)},
	{Vector(1280, 0), Vector(1280, 720)},
	{Vector(400, 400), Vector(500, 500)},
	{Vector(200, 400), Vector(500, 300)},
	{Vector(800, 400), Vector(700, 500)}
}
game.cSize = 5
game.polygons = {}
game.ball = require "ball"


function game:draw()
	game.ball:draw()
	love.graphics.setLineWidth(game.cSize)
	love.graphics.setColor(0.7, 0.7, 0.7)
	for i, v in ipairs(game.collision) do
		love.graphics.line(v[1].x, v[1].y, v[2].x, v[2].y)
	end
end

function game:update()
	local dt = 0.01
	for i = 0, 1/dt do
		game.ball:checkCollision(game.collision, game.cSize)
		game.ball:update(dt)
	end

end

return game
