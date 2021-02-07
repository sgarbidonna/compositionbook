require "test_helper"

class AuxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aux = auxes(:one)
  end

  test "should get index" do
    get auxes_url
    assert_response :success
  end

  test "should get new" do
    get new_aux_url
    assert_response :success
  end

  test "should create aux" do
    assert_difference('Aux.count') do
      post auxes_url, params: { aux: { hola: @aux.hola } }
    end

    assert_redirected_to aux_url(Aux.last)
  end

  test "should show aux" do
    get aux_url(@aux)
    assert_response :success
  end

  test "should get edit" do
    get edit_aux_url(@aux)
    assert_response :success
  end

  test "should update aux" do
    patch aux_url(@aux), params: { aux: { hola: @aux.hola } }
    assert_redirected_to aux_url(@aux)
  end

  test "should destroy aux" do
    assert_difference('Aux.count', -1) do
      delete aux_url(@aux)
    end

    assert_redirected_to auxes_url
  end
end
