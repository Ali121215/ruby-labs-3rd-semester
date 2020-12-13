class Calc
	include Math
	def calculate(x, z)
		x * (Math.cos(z) + Math.exp(-x - 3))
	end
end
