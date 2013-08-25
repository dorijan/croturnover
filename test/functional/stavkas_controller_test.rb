require 'test_helper'

class StavkasControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Stavka.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Stavka.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Stavka.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to stavka_url(assigns(:stavka))
  end

  def test_edit
    get :edit, :id => Stavka.first
    assert_template 'edit'
  end

  def test_update_invalid
    Stavka.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Stavka.first
    assert_template 'edit'
  end

  def test_update_valid
    Stavka.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Stavka.first
    assert_redirected_to stavka_url(assigns(:stavka))
  end

  def test_destroy
    stavka = Stavka.first
    delete :destroy, :id => stavka
    assert_redirected_to stavkas_url
    assert !Stavka.exists?(stavka.id)
  end
end
