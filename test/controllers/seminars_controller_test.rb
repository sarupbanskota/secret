require 'test_helper'

class SeminarsControllerTest < ActionController::TestCase
  setup do
    @seminar = seminars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seminars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seminar" do
    assert_difference('Seminar.count') do
      post :create, seminar: { accepted: @seminar.accepted, category: @seminar.category, confirmed: @seminar.confirmed, confirmed: @seminar.confirmed, date: @seminar.date, description: @seminar.description, duration: @seminar.duration, headline: @seminar.headline, slot: @seminar.slot, subline: @seminar.subline, track: @seminar.track, user_id: @seminar.user_id }
    end

    assert_redirected_to seminar_path(assigns(:seminar))
  end

  test "should show seminar" do
    get :show, id: @seminar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seminar
    assert_response :success
  end

  test "should update seminar" do
    patch :update, id: @seminar, seminar: { accepted: @seminar.accepted, category: @seminar.category, confirmed: @seminar.confirmed, confirmed: @seminar.confirmed, date: @seminar.date, description: @seminar.description, duration: @seminar.duration, headline: @seminar.headline, slot: @seminar.slot, subline: @seminar.subline, track: @seminar.track, user_id: @seminar.user_id }
    assert_redirected_to seminar_path(assigns(:seminar))
  end

  test "should destroy seminar" do
    assert_difference('Seminar.count', -1) do
      delete :destroy, id: @seminar
    end

    assert_redirected_to seminars_path
  end
end
