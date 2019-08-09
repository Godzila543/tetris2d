function love.load()
	Class = require "class"
	State = require "state"
	Manager = require "manager"
	love.window.setMode( 800, 800)
end

function love.draw()
	Manager.draw()
end

function love.update(dt)

end

function love.mousepressed(x, y, button)

end

function love.wheelmoved( x, y )

end

function love.mousemoved(x, y, dx, dy, istouch)

end

function love.keypressed(key)


end

function love.mousereleased(x,y,button)

end
