require 'test_helper'

class VehiculesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vehicules_index_url
    assert_response :success
  end

  test "should get show" do
    get vehicules_show_url
    assert_response :success
  end

  test "should get new" do
    get vehicules_new_url
    assert_response :success
  end

  test "should get create" do
    get vehicules_create_url
    assert_response :success
  end

  test "should get edit" do
    get vehicules_edit_url
    assert_response :success
  end

  test "should get update" do
    get vehicules_update_url
    assert_response :success
  end

  test "should get destroy" do
    get vehicules_destroy_url
    assert_response :success
  end

end
