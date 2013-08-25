require 'test_helper'

class UlracunisControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Ulracuni.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Ulracuni.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Ulracuni.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to ulracuni_url(assigns(:ulracuni))
  end

  def test_edit
    get :edit, :id => Ulracuni.first
    assert_template 'edit'
  end

  def test_update_invalid
    Ulracuni.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Ulracuni.first
    assert_template 'edit'
  end

  def test_update_valid
    Ulracuni.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Ulracuni.first
    assert_redirected_to ulracuni_url(assigns(:ulracuni))
  end

  def test_destroy
    ulracuni = Ulracuni.first
    delete :destroy, :id => ulracuni
    assert_redirected_to ulracunis_url
    assert !Ulracuni.exists?(ulracuni.id)
  end
end
