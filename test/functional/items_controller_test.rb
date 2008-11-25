require File.dirname(__FILE__) + '/../test_helper'

class ItemsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:items)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_items
    assert_difference('Items.count') do
      post :create, :items => { }
    end

    assert_redirected_to items_path(assigns(:items))
  end

  def test_should_show_items
    get :show, :id => items(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => items(:one).id
    assert_response :success
  end

  def test_should_update_items
    put :update, :id => items(:one).id, :items => { }
    assert_redirected_to items_path(assigns(:items))
  end

  def test_should_destroy_items
    assert_difference('Items.count', -1) do
      delete :destroy, :id => items(:one).id
    end

    assert_redirected_to items_path
  end
end
