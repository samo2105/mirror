require "test_helper"

class VariantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @variant = variants(:one)
  end

  test "should get index" do
    get variants_url, as: :json
    assert_response :success
  end

  test "should show variant" do
    get variant_url(@variant), as: :json
    assert_response :success
  end
end
