require_relative '6.3.basic'

for i in 0..10
	x = i 
	if i % 2 == 0
		y = Math.cos(x)
	else
		y = Math.sin(x ** 2)
	end
	work = Cls.new.work(x, y)
	puts work[0]
	puts work[1]
	puts ''
end