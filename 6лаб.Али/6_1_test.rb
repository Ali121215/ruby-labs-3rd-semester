require 'minitest/autorun'
require_relative '6.1.basic'

class MyTest < MiniTest::Unit::TestCase
	def setup
		
	end

	def test_part
		assert_in_delta Cls.new.work(0.001), 0.46364, 0.001
		assert_in_delta Cls.new.work(0.0001), 0.46364, 0.0001
	end

	def test
		skip 'Not implemeted'
	end
end
