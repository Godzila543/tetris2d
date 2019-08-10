function love.load()
	Class = require "class"
	State = require "state"
	Manager = require "manager"
	Button = require "button"
	Manager.states[1] = require "title"
	Manager.states[2] = require "board"
	Manager.push(Manager.states[1])
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
	Manager.keyPressed(key)
end

function love.mousereleased(x,y,button)

end
