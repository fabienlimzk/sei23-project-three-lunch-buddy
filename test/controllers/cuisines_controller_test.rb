require 'test_helper'

class CuisinesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cuisines_index_url
    assert_response :success
  end

  test "should get show" do
    get cuisines_show_url
    assert_response :success
  end

  test "should get new" do
    get cuisines_new_url
    assert_response :success
  end

  test "should get create" do
    get cuisines_create_url
    assert_response :success
  end

  test "should get edit" do
    get cuisines_edit_url
    assert_response :success
  end

  test "should get update" do
    get cuisines_update_url
    assert_response :success
  end

  test "should get destroy" do
    get cuisines_destroy_url
    assert_response :success
  end

end
