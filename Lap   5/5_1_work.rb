require_relative '5.1.basic'

puts 'Please enter x, z'
x = gets.chomp.to_i
z = gets.chomp.to_i
puts Calc.new.calculate(x, z)