require 'test_helper'

class TrialModelsControllerTest < ActionController::TestCase
  setup do
    @trial_model = trial_models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trial_models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trial_model" do
    assert_difference('TrialModel.count') do
      post :create, trial_model: { trial_attribute: @trial_model.trial_attribute }
    end

    assert_redirected_to trial_model_path(assigns(:trial_model))
  end

  test "should show trial_model" do
    get :show, id: @trial_model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trial_model
    assert_response :success
  end

  test "should update trial_model" do
    patch :update, id: @trial_model, trial_model: { trial_attribute: @trial_model.trial_attribute }
    assert_redirected_to trial_model_path(assigns(:trial_model))
  end

  test "should destroy trial_model" do
    assert_difference('TrialModel.count', -1) do
      delete :destroy, id: @trial_model
    end

    assert_redirected_to trial_models_path
  end
end
