require 'test_helper'

class RepairOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repair_order = repair_orders(:one)
  end

  test "should get index" do
    get repair_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_repair_order_url
    assert_response :success
  end

  test "should create repair_order" do
    assert_difference('RepairOrder.count') do
      post repair_orders_url, params: { repair_order: { repair_order_accessories: @repair_order.repair_order_accessories, repair_order_date: @repair_order.repair_order_date, repair_order_notes: @repair_order.repair_order_notes, repair_order_status_date: @repair_order.repair_order_status_date, repair_order_status_id: @repair_order.repair_order_status_id, repair_order_subtotal: @repair_order.repair_order_subtotal, repair_order_tax: @repair_order.repair_order_tax, repair_order_total: @repair_order.repair_order_total } }
    end

    assert_redirected_to repair_order_url(RepairOrder.last)
  end

  test "should show repair_order" do
    get repair_order_url(@repair_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_repair_order_url(@repair_order)
    assert_response :success
  end

  test "should update repair_order" do
    patch repair_order_url(@repair_order), params: { repair_order: { repair_order_accessories: @repair_order.repair_order_accessories, repair_order_date: @repair_order.repair_order_date, repair_order_notes: @repair_order.repair_order_notes, repair_order_status_date: @repair_order.repair_order_status_date, repair_order_status_id: @repair_order.repair_order_status_id, repair_order_subtotal: @repair_order.repair_order_subtotal, repair_order_tax: @repair_order.repair_order_tax, repair_order_total: @repair_order.repair_order_total } }
    assert_redirected_to repair_order_url(@repair_order)
  end

  test "should destroy repair_order" do
    assert_difference('RepairOrder.count', -1) do
      delete repair_order_url(@repair_order)
    end

    assert_redirected_to repair_orders_url
  end
end
