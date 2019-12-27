require 'test_helper'

class ChompsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chomp = chomps(:one)
  end

  test "should get index" do
    get chomps_url
    assert_response :success
  end

  test "should get new" do
    get new_chomp_url
    assert_response :success
  end

  test "should create chomp" do
    assert_difference('Chomp.count') do
      post chomps_url, params: { chomp: { content: @chomp.content, name: @chomp.name } }
    end

    assert_redirected_to chomp_url(Chomp.last)
  end

  test "should show chomp" do
    get chomp_url(@chomp)
    assert_response :success
  end

  test "should get edit" do
    get edit_chomp_url(@chomp)
    assert_response :success
  end

  test "should update chomp" do
    patch chomp_url(@chomp), params: { chomp: { content: @chomp.content, name: @chomp.name } }
    assert_redirected_to chomp_url(@chomp)
  end

  test "should destroy chomp" do
    assert_difference('Chomp.count', -1) do
      delete chomp_url(@chomp)
    end

    assert_redirected_to chomps_url
  end
end
