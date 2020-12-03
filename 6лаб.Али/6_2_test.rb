require 'minitest/autorun'
require_relative '6.2.basic'

class MyTest < MiniTest::Unit::TestCase
	def setup
		@enum = Cls.new
	end

	def test_part
		res = 0.46364
		assert_in_delta @enum.find { |num| (num  - res).abs <= 0.001}, res, 0.001
		assert_in_delta @enum.find { |num| (num  - res).abs <= 0.0001}, res, 0.0001
	end

	def test
		skip 'Not implemeted'
	end
end