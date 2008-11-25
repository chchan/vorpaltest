require File.dirname(__FILE__) + '/../test_helper'

class CreditCardsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:credit_cards)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_credit_card
    assert_difference('CreditCard.count') do
      post :create, :credit_card => { }
    end

    assert_redirected_to credit_card_path(assigns(:credit_card))
  end

  def test_should_show_credit_card
    get :show, :id => credit_cards(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => credit_cards(:one).id
    assert_response :success
  end

  def test_should_update_credit_card
    put :update, :id => credit_cards(:one).id, :credit_card => { }
    assert_redirected_to credit_card_path(assigns(:credit_card))
  end

  def test_should_destroy_credit_card
    assert_difference('CreditCard.count', -1) do
      delete :destroy, :id => credit_cards(:one).id
    end

    assert_redirected_to credit_cards_path
  end
end
