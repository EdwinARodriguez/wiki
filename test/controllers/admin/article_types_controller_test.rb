require 'test_helper'

class Admin::ArticleTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_article_type = admin_article_types(:one)
  end

  test "should get index" do
    get admin_article_types_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_article_type_url
    assert_response :success
  end

  test "should create admin_article_type" do
    assert_difference('Admin::ArticleType.count') do
      post admin_article_types_url, params: { admin_article_type: { description: @admin_article_type.description, name: @admin_article_type.name } }
    end

    assert_redirected_to admin_article_type_url(Admin::ArticleType.last)
  end

  test "should show admin_article_type" do
    get admin_article_type_url(@admin_article_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_article_type_url(@admin_article_type)
    assert_response :success
  end

  test "should update admin_article_type" do
    patch admin_article_type_url(@admin_article_type), params: { admin_article_type: { description: @admin_article_type.description, name: @admin_article_type.name } }
    assert_redirected_to admin_article_type_url(@admin_article_type)
  end

  test "should destroy admin_article_type" do
    assert_difference('Admin::ArticleType.count', -1) do
      delete admin_article_type_url(@admin_article_type)
    end

    assert_redirected_to admin_article_types_url
  end
end
