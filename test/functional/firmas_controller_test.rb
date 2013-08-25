require 'test_helper'

class FirmasControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Firma.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Firma.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Firma.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to firma_url(assigns(:firma))
  end

  def test_edit
    get :edit, :id => Firma.first
    assert_template 'edit'
  end

  def test_update_invalid
    Firma.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Firma.first
    assert_template 'edit'
  end

  def test_update_valid
    Firma.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Firma.first
    assert_redirected_to firma_url(assigns(:firma))
  end

  def test_destroy
    firma = Firma.first
    delete :destroy, :id => firma
    assert_redirected_to firmas_url
    assert !Firma.exists?(firma.id)
  end
end
