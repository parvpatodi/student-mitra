require 'test_helper'

class ArticleNotesControllerTest < ActionController::TestCase
  setup do
    @article_note = article_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:article_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create article_note" do
    assert_difference('ArticleNote.count') do
      post :create, article_note: { answer: @article_note.answer, question: @article_note.question }
    end

    assert_redirected_to article_note_path(assigns(:article_note))
  end

  test "should show article_note" do
    get :show, id: @article_note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @article_note
    assert_response :success
  end

  test "should update article_note" do
    patch :update, id: @article_note, article_note: { answer: @article_note.answer, question: @article_note.question }
    assert_redirected_to article_note_path(assigns(:article_note))
  end

  test "should destroy article_note" do
    assert_difference('ArticleNote.count', -1) do
      delete :destroy, id: @article_note
    end

    assert_redirected_to article_notes_path
  end
end
