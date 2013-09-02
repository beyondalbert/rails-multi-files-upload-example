require 'test_helper'

class FilesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get upload_file" do
    get :upload_file
    assert_response :success
  end

  test "should get upload_files" do
    get :upload_files
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

end
