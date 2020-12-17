 class Cls
	def neibr(x, y)
		(yield (x)) == y
	end
	def work1(x, y)
		[neibr(x, y){ |num| Math.cos(num)}, neibr(x, y){ |num| Math.sin(num ** 2)}]
	end
	def work2(x, y)
		p l = -> (num){Math.cos(num)}
		p l2 = -> (num){Math.sin(num ** 2)}
		[neibr(x, y, &l), neibr(x, y, &l2)]
	end
end