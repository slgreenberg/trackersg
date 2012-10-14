require 'test_helper'

class FitnessClassesControllerTest < ActionController::TestCase
  setup do
    @fitness_class = fitness_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fitness_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fitness_class" do
    assert_difference('FitnessClass.count') do
      post :create, fitness_class: { duration: @fitness_class.duration, equipment_user: @fitness_class.equipment_user, name,: @fitness_class.name, }
    end

    assert_redirected_to fitness_class_path(assigns(:fitness_class))
  end

  test "should show fitness_class" do
    get :show, id: @fitness_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fitness_class
    assert_response :success
  end

  test "should update fitness_class" do
    put :update, id: @fitness_class, fitness_class: { duration: @fitness_class.duration, equipment_user: @fitness_class.equipment_user, name,: @fitness_class.name, }
    assert_redirected_to fitness_class_path(assigns(:fitness_class))
  end

  test "should destroy fitness_class" do
    assert_difference('FitnessClass.count', -1) do
      delete :destroy, id: @fitness_class
    end

    assert_redirected_to fitness_classes_path
  end
end
