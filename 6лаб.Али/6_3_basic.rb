class Cls
	def neibr(x, y)
		res = lambda do |x, y|
			[x].map do |x|
				yield(x) == y
			end
		end
		res.call(x, y)
	end
	def work(x, y)
		[neibr(x, y){ |num| Math.cos(num)}, neibr(x, y){ |num| Math.sin(num ** 2)}]
	end
end