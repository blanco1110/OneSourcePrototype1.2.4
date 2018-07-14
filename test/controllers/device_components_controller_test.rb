require 'test_helper'

class DeviceComponentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @device_component = device_components(:one)
  end

  test "should get index" do
    get device_components_url
    assert_response :success
  end

  test "should get new" do
    get new_device_component_url
    assert_response :success
  end

  test "should create device_component" do
    assert_difference('DeviceComponent.count') do
      post device_components_url, params: { device_component: { device_comp_color: @device_component.device_comp_color, device_comp_cost: @device_component.device_comp_cost, device_comp_description: @device_component.device_comp_description, device_comp_name: @device_component.device_comp_name, device_component_status_id: @device_component.device_component_status_id, device_version_id: @device_component.device_version_id } }
    end

    assert_redirected_to device_component_url(DeviceComponent.last)
  end

  test "should show device_component" do
    get device_component_url(@device_component)
    assert_response :success
  end

  test "should get edit" do
    get edit_device_component_url(@device_component)
    assert_response :success
  end

  test "should update device_component" do
    patch device_component_url(@device_component), params: { device_component: { device_comp_color: @device_component.device_comp_color, device_comp_cost: @device_component.device_comp_cost, device_comp_description: @device_component.device_comp_description, device_comp_name: @device_component.device_comp_name, device_component_status_id: @device_component.device_component_status_id, device_version_id: @device_component.device_version_id } }
    assert_redirected_to device_component_url(@device_component)
  end

  test "should destroy device_component" do
    assert_difference('DeviceComponent.count', -1) do
      delete device_component_url(@device_component)
    end

    assert_redirected_to device_components_url
  end
end
