require 'test_helper'

class ActiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acticle = acticles(:one)
  end

  test "should get index" do
    get acticles_url
    assert_response :success
  end

  test "should get new" do
    get new_acticle_url
    assert_response :success
  end

  test "should create acticle" do
    assert_difference('Acticle.count') do
      post acticles_url, params: { acticle: { title: @acticle.title } }
    end

    assert_redirected_to acticle_url(Acticle.last)
  end

  test "should show acticle" do
    get acticle_url(@acticle)
    assert_response :success
  end

  test "should get edit" do
    get edit_acticle_url(@acticle)
    assert_response :success
  end

  test "should update acticle" do
    patch acticle_url(@acticle), params: { acticle: { title: @acticle.title } }
    assert_redirected_to acticle_url(@acticle)
  end

  test "should destroy acticle" do
    assert_difference('Acticle.count', -1) do
      delete acticle_url(@acticle)
    end

    assert_redirected_to acticles_url
  end
end
