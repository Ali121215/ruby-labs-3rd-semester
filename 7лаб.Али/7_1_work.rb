require_relative '7.1.basic'

Work.new.work('F.txt')

file = File.open('F.txt')
puts 'F.txt:'
puts file.read
file.close