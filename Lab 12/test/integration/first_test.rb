require 'test_helper'

class FirstTest < ActionDispatch::IntegrationTest
  test "redirect from index" do 
    get "/"
    assert_response :redirect
  end

  test "can find a result from new authorized user" do 
    post "/new", params: { name: "user", email: "user@mail.ru", password: "555", another_password: "555" }
    assert_response :redirect

    get "/create", params: { n: 5 }
    assert_equal assigns[:arr].join(" "), "1 5"
  end
end
