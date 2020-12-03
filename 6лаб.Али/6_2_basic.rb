class Cls
	include Enumerable
	def each
		x = 0.5
		i = 1
		loop do
			yield x
			x = x + (-1)**i * 0.5**(2 *i + 1) / (2 * i + 1)
			i = i + 1
		end
	end
end	