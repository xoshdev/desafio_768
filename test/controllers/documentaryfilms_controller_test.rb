require "test_helper"

class DocumentaryfilmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @documentaryfilm = documentaryfilms(:one)
  end

  test "should get index" do
    get documentaryfilms_url
    assert_response :success
  end

  test "should get new" do
    get new_documentaryfilm_url
    assert_response :success
  end

  test "should create documentaryfilm" do
    assert_difference("Documentaryfilm.count") do
      post documentaryfilms_url, params: { documentaryfilm: { director: @documentaryfilm.director, name: @documentaryfilm.name, synopsis: @documentaryfilm.synopsis } }
    end

    assert_redirected_to documentaryfilm_url(Documentaryfilm.last)
  end

  test "should show documentaryfilm" do
    get documentaryfilm_url(@documentaryfilm)
    assert_response :success
  end

  test "should get edit" do
    get edit_documentaryfilm_url(@documentaryfilm)
    assert_response :success
  end

  test "should update documentaryfilm" do
    patch documentaryfilm_url(@documentaryfilm), params: { documentaryfilm: { director: @documentaryfilm.director, name: @documentaryfilm.name, synopsis: @documentaryfilm.synopsis } }
    assert_redirected_to documentaryfilm_url(@documentaryfilm)
  end

  test "should destroy documentaryfilm" do
    assert_difference("Documentaryfilm.count", -1) do
      delete documentaryfilm_url(@documentaryfilm)
    end

    assert_redirected_to documentaryfilms_url
  end
end
