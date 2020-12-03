require 'minitest/autorun'
require_relative '6.2.basic'

class MyTest < MiniTest::Unit::TestCase
	def setup
		@enum = Cls.new
	end

	def test_part
		assert_equal 'assjjdj ggh sflkndkvdfkvn arrg', File.open('F.txt').read
	end

	def test
		skip 'Not implemeted'
	end
end