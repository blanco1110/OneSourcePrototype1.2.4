require 'test_helper'

class DevicePostTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @device_post_test = device_post_tests(:one)
  end

  test "should get index" do
    get device_post_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_device_post_test_url
    assert_response :success
  end

  test "should create device_post_test" do
    assert_difference('DevicePostTest.count') do
      post device_post_tests_url, params: { device_post_test: { device_post_test_date: @device_post_test.device_post_test_date, post_test_condition: @device_post_test.post_test_condition, post_test_notes: @device_post_test.post_test_notes, repair_order_id: @device_post_test.repair_order_id, test_id: @device_post_test.test_id } }
    end

    assert_redirected_to device_post_test_url(DevicePostTest.last)
  end

  test "should show device_post_test" do
    get device_post_test_url(@device_post_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_device_post_test_url(@device_post_test)
    assert_response :success
  end

  test "should update device_post_test" do
    patch device_post_test_url(@device_post_test), params: { device_post_test: { device_post_test_date: @device_post_test.device_post_test_date, post_test_condition: @device_post_test.post_test_condition, post_test_notes: @device_post_test.post_test_notes, repair_order_id: @device_post_test.repair_order_id, test_id: @device_post_test.test_id } }
    assert_redirected_to device_post_test_url(@device_post_test)
  end

  test "should destroy device_post_test" do
    assert_difference('DevicePostTest.count', -1) do
      delete device_post_test_url(@device_post_test)
    end

    assert_redirected_to device_post_tests_url
  end
end
