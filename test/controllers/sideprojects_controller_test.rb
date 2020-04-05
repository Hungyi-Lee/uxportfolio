require 'test_helper'

class SideprojectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sideprojects_index_url
    assert_response :success
  end

  test "should get show" do
    get sideprojects_show_url
    assert_response :success
  end

  test "should get new" do
    get sideprojects_new_url
    assert_response :success
  end

  test "should get edit" do
    get sideprojects_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get sideprojects_destroy_url
    assert_response :success
  end

  test "should get create" do
    get sideprojects_create_url
    assert_response :success
  end

  test "should get update" do
    get sideprojects_update_url
    assert_response :success
  end

end
