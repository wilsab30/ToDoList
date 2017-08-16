require 'test_helper'

class TodosControllerTest < ActionDispatch::IntegrationTest
  test "should get index," do
    get todos_index,_url
    assert_response :success
  end

  test "should get show," do
    get todos_show,_url
    assert_response :success
  end

  test "should get new," do
    get todos_new,_url
    assert_response :success
  end

  test "should get destroy" do
    get todos_destroy_url
    assert_response :success
  end

end
