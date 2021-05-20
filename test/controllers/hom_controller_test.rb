require "test_helper"

class HomControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hom_index_url
    assert_response :success
  end
end
