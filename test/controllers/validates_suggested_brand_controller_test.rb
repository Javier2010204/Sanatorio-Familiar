require 'test_helper'

class ValidatesSuggestedBrandControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get validates_suggested_brand_index_url
    assert_response :success
  end

end
