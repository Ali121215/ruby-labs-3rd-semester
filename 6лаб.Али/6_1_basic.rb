class Cls
	def work(eps)
		x = 0.5
		i = 1
		while ((x - 0.46364).abs > eps)
			x = x + (-1)**i * 0.5**(2 *i + 1) / (2 * i + 1)
			i = i + 1
		end
		x
	end
end	