require 'test_helper'

class PersonnelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personnel = personnels(:one)
  end

  test "should get index" do
    get personnels_url
    assert_response :success
  end

  test "should get new" do
    get new_personnel_url
    assert_response :success
  end

  test "should create personnel" do
    assert_difference('Personnel.count') do
      post personnels_url, params: { personnel: { about: @personnel.about, age: @personnel.age, name: @personnel.name, pos_code: @personnel.pos_code } }
    end

    assert_redirected_to personnel_url(Personnel.last)
  end

  test "should show personnel" do
    get personnel_url(@personnel)
    assert_response :success
  end

  test "should get edit" do
    get edit_personnel_url(@personnel)
    assert_response :success
  end

  test "should update personnel" do
    patch personnel_url(@personnel), params: { personnel: { about: @personnel.about, age: @personnel.age, name: @personnel.name, pos_code: @personnel.pos_code } }
    assert_redirected_to personnel_url(@personnel)
  end

  test "should destroy personnel" do
    assert_difference('Personnel.count', -1) do
      delete personnel_url(@personnel)
    end

    assert_redirected_to personnels_url
  end
end
