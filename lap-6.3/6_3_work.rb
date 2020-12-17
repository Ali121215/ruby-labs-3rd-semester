require_relative '6.3.basic'

for i in 0..10
	x = i 
	if i % 2 == 0
		y = Math.cos(x)
	else
		y = Math.sin(x ** 2)
	end
	
	work1 = Cls.new.work1(x, y)
	work2 = Cls.new.work2(x, y)
	puts work1[0]
	puts work1[1]
	puts work2[0]
	puts work2[1]
	puts ''
end