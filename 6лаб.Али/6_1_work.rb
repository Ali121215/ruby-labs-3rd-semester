require_relative '6.1.basic'

puts 'Input accuracy'
eps = gets.chop.to_f
res = Cls.new.work(eps)
puts res