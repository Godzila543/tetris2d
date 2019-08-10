local Button = Class{
	init = function(self, x, y, w, h, text, func)
		self.x = x
		self.y = y
		self.w = w
		self.h = h
		self.text = text or "you didnt name me :("
		self.func = func or function() end
		self.held = false
	end
}

function Button:draw()
	--update stuff
	if love.mouse.isDown(1) then
		mx, my = love.mouse.getPosition()
		if mx > self.x and my > self.y and mx < self.x + self.w and my < self.y + self.h then
			self.held = true
		else
			self.held = false
		end
	else
		if self.held then
			self.held = false
			self.func()
		end
	end
	--draw stuff
	if self.held then
		love.graphics.setColor(0.5, 0.5, 0.5)
	else
		love.graphics.setColor(0.7, 0.7, 0.7)
	end
	love.graphics.rectangle("fill", self.x, self.y, self.w, self.h)
	love.graphics.setLineWidth(3)
	love.graphics.setColor(0, 0, 0)
	love.graphics.rectangle("line", self.x, self.y, self.w, self.h)
	love.graphics.printf(self.text, self.x, self.y+self.h/2, self.w, "center")
end

return Button
