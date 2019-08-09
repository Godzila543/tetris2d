local State = Class{
	init = function(self)

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

return State
