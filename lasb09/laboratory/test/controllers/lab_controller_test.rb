require 'test_helper'

class LabControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get "/"
    assert_response :success
  end

  test "should get 1 for entered data" do
    get "/create", params: { n: 5 }
    assert_equal assigns[:arr].join(" "), "1 5"
  end

end
