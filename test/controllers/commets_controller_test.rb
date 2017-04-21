require 'test_helper'

class CommetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commet = commets(:one)
  end

  test "should get index" do
    get commets_url
    assert_response :success
  end

  test "should get new" do
    get new_commet_url
    assert_response :success
  end

  test "should create commet" do
    assert_difference('Commet.count') do
      post commets_url, params: { commet: { content: @commet.content, post_id: @commet.post_id } }
    end

    assert_redirected_to commet_url(Commet.last)
  end

  test "should show commet" do
    get commet_url(@commet)
    assert_response :success
  end

  test "should get edit" do
    get edit_commet_url(@commet)
    assert_response :success
  end

  test "should update commet" do
    patch commet_url(@commet), params: { commet: { content: @commet.content, post_id: @commet.post_id } }
    assert_redirected_to commet_url(@commet)
  end

  test "should destroy commet" do
    assert_difference('Commet.count', -1) do
      delete commet_url(@commet)
    end

    assert_redirected_to commets_url
  end
end
