class Cls
	def corr(line)
		counter = 0
		new_line = ""
		arr = line.split(' ')
		arr2 = arr.select {|word| word.include? "a" or word.include? "e" or word.include? "i" or word.include? "o" or word.include? "u" or word.include? "y"}
		counter = arr.length - arr2.length
		return arr2.join(' '), counter
	end
end