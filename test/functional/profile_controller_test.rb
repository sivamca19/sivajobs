require 'test_helper'

class ProfileControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get job_seeker_new" do
    get :job_seeker_new
    assert_response :success
  end

  test "should get employer_new" do
    get :employer_new
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
