require 'test_helper'

class DataFeedsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get data_feeds_home_url
    assert_response :success
  end

end
