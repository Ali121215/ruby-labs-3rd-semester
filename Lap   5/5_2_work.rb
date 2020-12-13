require_relative '5.2.basic'

puts 'Enter line'
line = STDIN.gets
puts 'Starting line'
puts line
puts 'Correcretd line'
nl, num = Cls.new.corr(line)
puts nl
puts 'Number of deleted words'
if num == 0
	puts "No words deleted"
else 
	puts num
end