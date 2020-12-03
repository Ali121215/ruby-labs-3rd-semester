require 'minitest/autorun'
require_relative '6.3.basic'

class MyTest < MiniTest::Unit::TestCase
	def setup
		@work = Cls.new.work(1, Math.cos(1))
	end

	def test_part
		assert_equal @work[0], [true]
		assert_equal @work[1], [false]
	end

	def test
		skip 'Not implemeted'
	end
end