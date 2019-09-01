function pointToLine(e1, e2, p)
	local l2 = e1:dist2(e2)
	local t = math.max(0, math.min(1, ((p - e1) * (e2 - e1)) / l2))
	local projection = e1 + t * (e2 - e1)
	return p:dist(projection)
end

local ball = {
	pos = Vector(100, 100),
	vel = Vector(3,10),
	acc = Vector(0,0),
	rad = 10,
	ela = 0.9
}
function ball:force(f)
	self.acc = self.acc + f
end

function ball:checkCollision(collision, size)
	local size = size + self.rad
	for i, v in ipairs(collision) do
		local distance = pointToLine(v[1], v[2], self.pos)
		local normal = (v[2] - v[1]):perpendicular():normalizeInplace()
		if distance < size then
			local side = (self.pos.x - v[1].x)*(v[2].y - v[1].y) - (self.pos.y - v[1].y)*(v[2].x - v[1].x)
			if side < 0 then side = -1 else	side = 1 end
			self.pos = self.pos + normal * (size - distance) * -side
			self.vel = self.vel:mirrorOn(v[2] - v[1]) * 0.9
		end
	end
end

function ball:update(dt)
	self:force(Vector(0, 0.3))

	self.vel = self.vel + self.acc * dt
	self.pos = self.pos + self.vel * dt
	self.acc = self.acc * 0
end

function ball:draw()
	love.graphics.setColor(0.8, 0.8, 1)
	love.graphics.circle("fill", self.pos.x, self.pos.y, self.rad)
end

return ball
