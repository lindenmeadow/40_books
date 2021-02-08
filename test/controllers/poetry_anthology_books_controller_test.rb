require 'test_helper'

class PoetryAnthologyBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poetry_anthology_book = poetry_anthology_books(:one)
  end

  test "should get index" do
    get poetry_anthology_books_url
    assert_response :success
  end

  test "should get new" do
    get new_poetry_anthology_book_url
    assert_response :success
  end

  test "should create poetry_anthology_book" do
    assert_difference('PoetryAnthologyBook.count') do
      post poetry_anthology_books_url, params: { poetry_anthology_book: { author: @poetry_anthology_book.author, date_finished: @poetry_anthology_book.date_finished, favorite_poem: @poetry_anthology_book.favorite_poem, illustrator: @poetry_anthology_book.illustrator, least_favorite_poem: @poetry_anthology_book.least_favorite_poem, literal_language: @poetry_anthology_book.literal_language, nonliteral_language: @poetry_anthology_book.nonliteral_language, pages: @poetry_anthology_book.pages, rating: @poetry_anthology_book.rating, rationale: @poetry_anthology_book.rationale, stanza: @poetry_anthology_book.stanza, title: @poetry_anthology_book.title } }
    end

    assert_redirected_to poetry_anthology_book_url(PoetryAnthologyBook.last)
  end

  test "should show poetry_anthology_book" do
    get poetry_anthology_book_url(@poetry_anthology_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_poetry_anthology_book_url(@poetry_anthology_book)
    assert_response :success
  end

  test "should update poetry_anthology_book" do
    patch poetry_anthology_book_url(@poetry_anthology_book), params: { poetry_anthology_book: { author: @poetry_anthology_book.author, date_finished: @poetry_anthology_book.date_finished, favorite_poem: @poetry_anthology_book.favorite_poem, illustrator: @poetry_anthology_book.illustrator, least_favorite_poem: @poetry_anthology_book.least_favorite_poem, literal_language: @poetry_anthology_book.literal_language, nonliteral_language: @poetry_anthology_book.nonliteral_language, pages: @poetry_anthology_book.pages, rating: @poetry_anthology_book.rating, rationale: @poetry_anthology_book.rationale, stanza: @poetry_anthology_book.stanza, title: @poetry_anthology_book.title } }
    assert_redirected_to poetry_anthology_book_url(@poetry_anthology_book)
  end

  test "should destroy poetry_anthology_book" do
    assert_difference('PoetryAnthologyBook.count', -1) do
      delete poetry_anthology_book_url(@poetry_anthology_book)
    end

    assert_redirected_to poetry_anthology_books_url
  end
end
