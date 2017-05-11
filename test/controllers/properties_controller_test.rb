require 'test_helper'

class PropertiesControllerTest < ActionController::TestCase
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post :create, property: { address: @property.address, baths: @property.baths, beds: @property.beds, city: @property.city, description: @property.description, latitude: @property.latitude, longitude: @property.longitude, price: @property.price, title: @property.title, type_id: @property.type_id, user_id: @property.user_id, zip_code: @property.zip_code }
    end

    assert_redirected_to property_path(assigns(:property))
  end

  test "should show property" do
    get :show, id: @property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property
    assert_response :success
  end

  test "should update property" do
    patch :update, id: @property, property: { address: @property.address, baths: @property.baths, beds: @property.beds, city: @property.city, description: @property.description, latitude: @property.latitude, longitude: @property.longitude, price: @property.price, title: @property.title, type_id: @property.type_id, user_id: @property.user_id, zip_code: @property.zip_code }
    assert_redirected_to property_path(assigns(:property))
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete :destroy, id: @property
    end

    assert_redirected_to properties_path
  end
end
