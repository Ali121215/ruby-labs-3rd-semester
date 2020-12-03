require_relative '7.2.basic'

puts 'Enter length and wiidth'
d = gets.chomp.split(' ').map(&:to_i)
puts 'Enter height'
h = gets.chomp.to_i
box1 = Box.new(d[0], d[1], h)
puts "Volume:"
puts box1.vol
puts "Length, Width, Height:"
puts box1.get_len, box1.get_wid, box1.get_hgt