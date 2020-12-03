require 'minitest/autorun'
require_relative '7.2.basic'

class MyTest < MiniTest::Unit::TestCase
	def setup
		@box = Box.new(2, 3, 4)
	end

	def test_part
		assert_equal @box.instance_variable_get(:@len), 2
		assert_equal @box.instance_variable_get(:@wid), 3
		assert_equal @box.instance_variable_get(:@hgt), 4
		assert_equal @box.vol, 24
	end

	def test
		skip 'Not implemeted'
	end
end