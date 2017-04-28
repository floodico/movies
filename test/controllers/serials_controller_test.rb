require 'test_helper'

class SerialsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get serials_index_url
    assert_response :success
  end

  test "should get show" do
    get serials_show_url
    assert_response :success
  end

end
