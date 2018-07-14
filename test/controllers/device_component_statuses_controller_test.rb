require 'test_helper'

class DeviceComponentStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @device_component_status = device_component_statuses(:one)
  end

  test "should get index" do
    get device_component_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_device_component_status_url
    assert_response :success
  end

  test "should create device_component_status" do
    assert_difference('DeviceComponentStatus.count') do
      post device_component_statuses_url, params: { device_component_status: { device_comp_status: @device_component_status.device_comp_status } }
    end

    assert_redirected_to device_component_status_url(DeviceComponentStatus.last)
  end

  test "should show device_component_status" do
    get device_component_status_url(@device_component_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_device_component_status_url(@device_component_status)
    assert_response :success
  end

  test "should update device_component_status" do
    patch device_component_status_url(@device_component_status), params: { device_component_status: { device_comp_status: @device_component_status.device_comp_status } }
    assert_redirected_to device_component_status_url(@device_component_status)
  end

  test "should destroy device_component_status" do
    assert_difference('DeviceComponentStatus.count', -1) do
      delete device_component_status_url(@device_component_status)
    end

    assert_redirected_to device_component_statuses_url
  end
end
