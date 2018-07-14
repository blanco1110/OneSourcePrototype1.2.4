require 'test_helper'

class DeviceVersionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @device_version = device_versions(:one)
  end

  test "should get index" do
    get device_versions_url
    assert_response :success
  end

  test "should get new" do
    get new_device_version_url
    assert_response :success
  end

  test "should create device_version" do
    assert_difference('DeviceVersion.count') do
      post device_versions_url, params: { device_version: { device_manufacturer_id: @device_version.device_manufacturer_id, device_version_name: @device_version.device_version_name } }
    end

    assert_redirected_to device_version_url(DeviceVersion.last)
  end

  test "should show device_version" do
    get device_version_url(@device_version)
    assert_response :success
  end

  test "should get edit" do
    get edit_device_version_url(@device_version)
    assert_response :success
  end

  test "should update device_version" do
    patch device_version_url(@device_version), params: { device_version: { device_manufacturer_id: @device_version.device_manufacturer_id, device_version_name: @device_version.device_version_name } }
    assert_redirected_to device_version_url(@device_version)
  end

  test "should destroy device_version" do
    assert_difference('DeviceVersion.count', -1) do
      delete device_version_url(@device_version)
    end

    assert_redirected_to device_versions_url
  end
end
