require 'test_helper'

class RepairOrderStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repair_order_status = repair_order_statuses(:one)
  end

  test "should get index" do
    get repair_order_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_repair_order_status_url
    assert_response :success
  end

  test "should create repair_order_status" do
    assert_difference('RepairOrderStatus.count') do
      post repair_order_statuses_url, params: { repair_order_status: { repair_order_status: @repair_order_status.repair_order_status } }
    end

    assert_redirected_to repair_order_status_url(RepairOrderStatus.last)
  end

  test "should show repair_order_status" do
    get repair_order_status_url(@repair_order_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_repair_order_status_url(@repair_order_status)
    assert_response :success
  end

  test "should update repair_order_status" do
    patch repair_order_status_url(@repair_order_status), params: { repair_order_status: { repair_order_status: @repair_order_status.repair_order_status } }
    assert_redirected_to repair_order_status_url(@repair_order_status)
  end

  test "should destroy repair_order_status" do
    assert_difference('RepairOrderStatus.count', -1) do
      delete repair_order_status_url(@repair_order_status)
    end

    assert_redirected_to repair_order_statuses_url
  end
end
