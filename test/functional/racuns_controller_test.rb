require 'test_helper'

class RacunsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Racun.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Racun.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Racun.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to racun_url(assigns(:racun))
  end

  def test_edit
    get :edit, :id => Racun.first
    assert_template 'edit'
  end

  def test_update_invalid
    Racun.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Racun.first
    assert_template 'edit'
  end

  def test_update_valid
    Racun.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Racun.first
    assert_redirected_to racun_url(assigns(:racun))
  end

  def test_destroy
    racun = Racun.first
    delete :destroy, :id => racun
    assert_redirected_to racuns_url
    assert !Racun.exists?(racun.id)
  end
end
