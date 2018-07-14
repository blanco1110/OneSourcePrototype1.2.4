require 'test_helper'

class DeviceRepairOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @device_repair_order = device_repair_orders(:one)
  end

  test "should get index" do
    get device_repair_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_device_repair_order_url
    assert_response :success
  end

  test "should create device_repair_order" do
    assert_difference('DeviceRepairOrder.count') do
      post device_repair_orders_url, params: { device_repair_order: { device_id: @device_repair_order.device_id, repair_order_id: @device_repair_order.repair_order_id } }
    end

    assert_redirected_to device_repair_order_url(DeviceRepairOrder.last)
  end

  test "should show device_repair_order" do
    get device_repair_order_url(@device_repair_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_device_repair_order_url(@device_repair_order)
    assert_response :success
  end

  test "should update device_repair_order" do
    patch device_repair_order_url(@device_repair_order), params: { device_repair_order: { device_id: @device_repair_order.device_id, repair_order_id: @device_repair_order.repair_order_id } }
    assert_redirected_to device_repair_order_url(@device_repair_order)
  end

  test "should destroy device_repair_order" do
    assert_difference('DeviceRepairOrder.count', -1) do
      delete device_repair_order_url(@device_repair_order)
    end

    assert_redirected_to device_repair_orders_url
  end
end
