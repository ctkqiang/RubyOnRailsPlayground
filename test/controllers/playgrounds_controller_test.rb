require "test_helper"

class PlaygroundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playground = playgrounds(:one)
  end

  test "should get index" do
    get playgrounds_url
    assert_response :success
  end

  test "should get new" do
    get new_playground_url
    assert_response :success
  end

  test "should create playground" do
    assert_difference('Playground.count') do
      post playgrounds_url, params: { playground: { email: @playground.email, name: @playground.name, phone: @playground.phone, twitter: @playground.twitter } }
    end

    assert_redirected_to playground_url(Playground.last)
  end

  test "should show playground" do
    get playground_url(@playground)
    assert_response :success
  end

  test "should get edit" do
    get edit_playground_url(@playground)
    assert_response :success
  end

  test "should update playground" do
    patch playground_url(@playground), params: { playground: { email: @playground.email, name: @playground.name, phone: @playground.phone, twitter: @playground.twitter } }
    assert_redirected_to playground_url(@playground)
  end

  test "should destroy playground" do
    assert_difference('Playground.count', -1) do
      delete playground_url(@playground)
    end

    assert_redirected_to playgrounds_url
  end
end
