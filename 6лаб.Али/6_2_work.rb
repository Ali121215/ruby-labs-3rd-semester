require_relative '6.2.basic'

puts 'Input accuracy'
eps = gets.chop.to_f
res = Cls.new.find {|x| (x - 0.46364).abs <= eps}
puts res