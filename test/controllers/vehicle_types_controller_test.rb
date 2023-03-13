require "test_helper"

class VehicleTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_type = vehicle_types(:one)
  end

  test "should get index" do
    get vehicle_types_url, as: :json
    assert_response :success
  end

  test "should show vehicle_type" do
    get vehicle_type_url(@vehicle_type), as: :json
    assert_response :success
  end
end
