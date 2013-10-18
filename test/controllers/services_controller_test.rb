require 'test_helper'

class ServicesControllerTest < ActionController::TestCase
  setup do
    @service = services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service" do
    assert_difference('Service.count') do
      post :create, service: { arrival_date: @service.arrival_date, arrival_id: @service.arrival_id, departure_date: @service.departure_date, departure_id: @service.departure_id, head_id: @service.head_id, latitude: @service.latitude, location_id: @service.location_id, longitude: @service.longitude, release_date: @service.release_date, shipment: @service.shipment, status: @service.status }
    end

    assert_redirected_to service_path(assigns(:service))
  end

  test "should show service" do
    get :show, id: @service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service
    assert_response :success
  end

  test "should update service" do
    patch :update, id: @service, service: { arrival_date: @service.arrival_date, arrival_id: @service.arrival_id, departure_date: @service.departure_date, departure_id: @service.departure_id, head_id: @service.head_id, latitude: @service.latitude, location_id: @service.location_id, longitude: @service.longitude, release_date: @service.release_date, shipment: @service.shipment, status: @service.status }
    assert_redirected_to service_path(assigns(:service))
  end

  test "should destroy service" do
    assert_difference('Service.count', -1) do
      delete :destroy, id: @service
    end

    assert_redirected_to services_path
  end
end
