local Manager = {}
Manager.stack = {}
Manager.index = 0
Manager.states = {}

function Manager.push(s) --s for state
	table.insert(Manager.stack, s)
	Manager.index = Manager.index + 1
end

function Manager.pop()
	table.remove(Manager.stack)
	Manager.index = Manager.index - 1
	if Manager.index == 0 then
		love.event.quit(0)
	end
end

function Manager.getUp()
	return Manager.stack[Manager.index - 1]
end

function Manager.getDown()
	return Manager.stack[Manager.index + 1]
end

function Manager.draw()
	Manager.stack[Manager.index]:update()
	Manager.stack[Manager.index]:drawButtons()
	Manager.stack[Manager.index]:draw()

end

function Manager.keyPressed(k)
	Manager.stack[Manager.index]:keyPressed(k)
	if k == "escape" then
		Manager.stack[Manager.index]:onEsc()
	end
end

return Manager
