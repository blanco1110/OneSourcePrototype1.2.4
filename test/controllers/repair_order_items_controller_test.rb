require 'test_helper'

class RepairOrderItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repair_order_item = repair_order_items(:one)
  end

  test "should get index" do
    get repair_order_items_url
    assert_response :success
  end

  test "should get new" do
    get new_repair_order_item_url
    assert_response :success
  end

  test "should create repair_order_item" do
    assert_difference('RepairOrderItem.count') do
      post repair_order_items_url, params: { repair_order_item: { device_component_id: @repair_order_item.device_component_id, repair_order_id: @repair_order_item.repair_order_id, repaired_as_warranty: @repair_order_item.repaired_as_warranty, technician_id: @repair_order_item.technician_id, warranty_coverage_notes: @repair_order_item.warranty_coverage_notes, warranty_expire_date: @repair_order_item.warranty_expire_date, warranty_repair_date: @repair_order_item.warranty_repair_date } }
    end

    assert_redirected_to repair_order_item_url(RepairOrderItem.last)
  end

  test "should show repair_order_item" do
    get repair_order_item_url(@repair_order_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_repair_order_item_url(@repair_order_item)
    assert_response :success
  end

  test "should update repair_order_item" do
    patch repair_order_item_url(@repair_order_item), params: { repair_order_item: { device_component_id: @repair_order_item.device_component_id, repair_order_id: @repair_order_item.repair_order_id, repaired_as_warranty: @repair_order_item.repaired_as_warranty, technician_id: @repair_order_item.technician_id, warranty_coverage_notes: @repair_order_item.warranty_coverage_notes, warranty_expire_date: @repair_order_item.warranty_expire_date, warranty_repair_date: @repair_order_item.warranty_repair_date } }
    assert_redirected_to repair_order_item_url(@repair_order_item)
  end

  test "should destroy repair_order_item" do
    assert_difference('RepairOrderItem.count', -1) do
      delete repair_order_item_url(@repair_order_item)
    end

    assert_redirected_to repair_order_items_url
  end
end
