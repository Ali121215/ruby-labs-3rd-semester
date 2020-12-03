class Work
	def work(stf)
		max = 0
		res = ""
		file = File.open(stf)
		data = file.read
		file.close
		words = data.split(' ')
		for word in words
			if word[0] == 'a' and word.length >= max
				max = word.length
				res = word
			end
		end
		if res == ""
			puts "No words starting with a"
		end
		puts res
	end
end