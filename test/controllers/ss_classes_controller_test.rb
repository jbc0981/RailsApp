require 'test_helper'

class SsClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ss_class = ss_classes(:one)
  end

  test "should get index" do
    get ss_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_ss_class_url
    assert_response :success
  end

  test "should create ss_class" do
    assert_difference('SsClass.count') do
      post ss_classes_url, params: { ss_class: { leader: @ss_class.leader, name: @ss_class.name } }
    end

    assert_redirected_to ss_class_url(SsClass.last)
  end

  test "should show ss_class" do
    get ss_class_url(@ss_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_ss_class_url(@ss_class)
    assert_response :success
  end

  test "should update ss_class" do
    patch ss_class_url(@ss_class), params: { ss_class: { leader: @ss_class.leader, name: @ss_class.name } }
    assert_redirected_to ss_class_url(@ss_class)
  end

  test "should destroy ss_class" do
    assert_difference('SsClass.count', -1) do
      delete ss_class_url(@ss_class)
    end

    assert_redirected_to ss_classes_url
  end
end
