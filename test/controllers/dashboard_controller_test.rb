require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get listings" do
    get dashboard_listings_url
    assert_response :success
  end

  test "should get rentals" do
    get dashboard_rentals_url
    assert_response :success
  end

end
