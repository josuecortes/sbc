require 'test_helper'

class TransacaoControllerTest < ActionDispatch::IntegrationTest
  test "should get frente" do
    get transacao_frente_url
    assert_response :success
  end

  test "should get plano" do
    get transacao_plano_url
    assert_response :success
  end

end
