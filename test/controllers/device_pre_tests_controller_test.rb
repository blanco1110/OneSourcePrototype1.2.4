require 'test_helper'

class DevicePreTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @device_pre_test = device_pre_tests(:one)
  end

  test "should get index" do
    get device_pre_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_device_pre_test_url
    assert_response :success
  end

  test "should create device_pre_test" do
    assert_difference('DevicePreTest.count') do
      post device_pre_tests_url, params: { device_pre_test: { device_pre_test_date: @device_pre_test.device_pre_test_date, pre_test_condition: @device_pre_test.pre_test_condition, pre_test_notes: @device_pre_test.pre_test_notes, repair_order_id: @device_pre_test.repair_order_id, test_id: @device_pre_test.test_id } }
    end

    assert_redirected_to device_pre_test_url(DevicePreTest.last)
  end

  test "should show device_pre_test" do
    get device_pre_test_url(@device_pre_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_device_pre_test_url(@device_pre_test)
    assert_response :success
  end

  test "should update device_pre_test" do
    patch device_pre_test_url(@device_pre_test), params: { device_pre_test: { device_pre_test_date: @device_pre_test.device_pre_test_date, pre_test_condition: @device_pre_test.pre_test_condition, pre_test_notes: @device_pre_test.pre_test_notes, repair_order_id: @device_pre_test.repair_order_id, test_id: @device_pre_test.test_id } }
    assert_redirected_to device_pre_test_url(@device_pre_test)
  end

  test "should destroy device_pre_test" do
    assert_difference('DevicePreTest.count', -1) do
      delete device_pre_test_url(@device_pre_test)
    end

    assert_redirected_to device_pre_tests_url
  end
end
