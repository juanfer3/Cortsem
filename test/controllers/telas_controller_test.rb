require 'test_helper'

class TelasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tela = telas(:one)
  end

  test "should get index" do
    get telas_url
    assert_response :success
  end

  test "should get new" do
    get new_tela_url
    assert_response :success
  end

  test "should create tela" do
    assert_difference('Tela.count') do
      post telas_url, params: { tela: { tipo_tela: @tela.tipo_tela } }
    end

    assert_redirected_to tela_url(Tela.last)
  end

  test "should show tela" do
    get tela_url(@tela)
    assert_response :success
  end

  test "should get edit" do
    get edit_tela_url(@tela)
    assert_response :success
  end

  test "should update tela" do
    patch tela_url(@tela), params: { tela: { tipo_tela: @tela.tipo_tela } }
    assert_redirected_to tela_url(@tela)
  end

  test "should destroy tela" do
    assert_difference('Tela.count', -1) do
      delete tela_url(@tela)
    end

    assert_redirected_to telas_url
  end
end
