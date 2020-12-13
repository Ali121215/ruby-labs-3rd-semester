require 'minitest/autorun'
require_relative '5.2.basic'

class MyTest < MiniTest::Unit::TestCase
	def rand_string
		arr = ('a'..'d').to_a.sample(rand(3..10))
		arr2 = arr.select {|word| word.include? "a"}
		[arr2.join(' '), arr.join(' ')]
	end

	def setup
		@rand = rand_string
	end

	def test_part
		assert_equal @rand[0], Cls.new.corr(@rand[1])[0]
	end

	def test
		skip 'Not implemeted'
	end
end