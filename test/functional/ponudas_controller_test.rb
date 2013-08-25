require 'test_helper'

class PonudasControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Ponuda.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Ponuda.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Ponuda.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to ponuda_url(assigns(:ponuda))
  end

  def test_edit
    get :edit, :id => Ponuda.first
    assert_template 'edit'
  end

  def test_update_invalid
    Ponuda.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Ponuda.first
    assert_template 'edit'
  end

  def test_update_valid
    Ponuda.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Ponuda.first
    assert_redirected_to ponuda_url(assigns(:ponuda))
  end

  def test_destroy
    ponuda = Ponuda.first
    delete :destroy, :id => ponuda
    assert_redirected_to ponudas_url
    assert !Ponuda.exists?(ponuda.id)
  end
end
