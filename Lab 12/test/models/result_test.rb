require 'test_helper'

class ResultTest < ActiveSupport::TestCase
  def setup
    @result = Result.new(n: 5, arr: "1 5")
  end

  test 'should save' do
    @result.save
  end

  test 'n should be unique' do
    duplicate_result = @result.dup
    @result.save
    assert_not duplicate_result.valid?
  end

  test "arr should be present" do
    @result.arr = ""
    assert_not @result.valid?
  end
end
