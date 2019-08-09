local Manager = {}
Manager.stack = {}
Manager.index = 1

function Manager.push(s) --s for state
	table.insert(Manager.stack)
	Manager.index = Manager.index + 1
end

function Manager.pop()
	table.remove(Manager.stack)
	Manager.index = Manager.index - 1
	if Manager.index == 0 then
		love.quit()
	end
end

function Manager.getUp()
	return Manager.stack[Manager.index - 1]
end

function Manager.getDown()
	return Manager.stack[Manager.index + 1]
end

function Manager.draw()
	Manager.stack[Manager.index]:draw()
	Manager.stack[Manager.index]:update()
end

return Manager
