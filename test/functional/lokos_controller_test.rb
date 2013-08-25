require 'test_helper'

class LokosControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Loko.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Loko.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Loko.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to loko_url(assigns(:loko))
  end

  def test_edit
    get :edit, :id => Loko.first
    assert_template 'edit'
  end

  def test_update_invalid
    Loko.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Loko.first
    assert_template 'edit'
  end

  def test_update_valid
    Loko.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Loko.first
    assert_redirected_to loko_url(assigns(:loko))
  end

  def test_destroy
    loko = Loko.first
    delete :destroy, :id => loko
    assert_redirected_to lokos_url
    assert !Loko.exists?(loko.id)
  end
end
