require 'test_helper'

class MoussaillonsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get moussaillons_new_url
    assert_response :success
  end

  test "should get create" do
    get moussaillons_create_url
    assert_response :success
  end

  test "should get index" do
    get moussaillons_index_url
    assert_response :success
  end

  test "should get show" do
    get moussaillons_show_url
    assert_response :success
  end

  test "should get delete" do
    get moussaillons_delete_url
    assert_response :success
  end

  test "should get update" do
    get moussaillons_update_url
    assert_response :success
  end

end
