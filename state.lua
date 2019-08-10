local State = Class{
	init = function(self)
		self.buttons = {}
	end
}
function State:draw()
end

function State:update()
end

function State:keyPressed()
end

function State:onEsc()
	Manager.pop()
end

function State:drawButtons()
	for i, butt in ipairs(self.buttons) do --butt button duh
		butt:draw()
	end
end

return State
