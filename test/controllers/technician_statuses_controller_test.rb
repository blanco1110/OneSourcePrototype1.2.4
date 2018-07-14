require 'test_helper'

class TechnicianStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @technician_status = technician_statuses(:one)
  end

  test "should get index" do
    get technician_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_technician_status_url
    assert_response :success
  end

  test "should create technician_status" do
    assert_difference('TechnicianStatus.count') do
      post technician_statuses_url, params: { technician_status: { tech_status: @technician_status.tech_status } }
    end

    assert_redirected_to technician_status_url(TechnicianStatus.last)
  end

  test "should show technician_status" do
    get technician_status_url(@technician_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_technician_status_url(@technician_status)
    assert_response :success
  end

  test "should update technician_status" do
    patch technician_status_url(@technician_status), params: { technician_status: { tech_status: @technician_status.tech_status } }
    assert_redirected_to technician_status_url(@technician_status)
  end

  test "should destroy technician_status" do
    assert_difference('TechnicianStatus.count', -1) do
      delete technician_status_url(@technician_status)
    end

    assert_redirected_to technician_statuses_url
  end
end
