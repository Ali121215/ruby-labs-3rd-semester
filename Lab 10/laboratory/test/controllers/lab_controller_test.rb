require 'test_helper'

class LabControllerTest < ActionDispatch::IntegrationTest
  test "Should get 200 Ok" do
    get '/create', params: { num: 5, format: "xml" }
    assert_response :success
    assert_includes @response.headers['Content-Type'], 'application/xml'
  end

end
