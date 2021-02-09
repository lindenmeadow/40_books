require 'test_helper'

class BiographyBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @biography_book = biography_books(:one)
  end

  test "should get index" do
    get biography_books_url
    assert_response :success
  end

  test "should get new" do
    get new_biography_book_url
    assert_response :success
  end

  test "should create biography_book" do
    assert_difference('BiographyBook.count') do
      post biography_books_url, params: { biography_book: { author: @biography_book.author, connection: @biography_book.connection, date_finished: @biography_book.date_finished, pages: @biography_book.pages, question: @biography_book.question, rating: @biography_book.rating, rationale: @biography_book.rationale, things_learned: @biography_book.things_learned, title: @biography_book.title, words_learned: @biography_book.words_learned } }
    end

    assert_redirected_to biography_book_url(BiographyBook.last)
  end

  test "should show biography_book" do
    get biography_book_url(@biography_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_biography_book_url(@biography_book)
    assert_response :success
  end

  test "should update biography_book" do
    patch biography_book_url(@biography_book), params: { biography_book: { author: @biography_book.author, connection: @biography_book.connection, date_finished: @biography_book.date_finished, pages: @biography_book.pages, question: @biography_book.question, rating: @biography_book.rating, rationale: @biography_book.rationale, things_learned: @biography_book.things_learned, title: @biography_book.title, words_learned: @biography_book.words_learned } }
    assert_redirected_to biography_book_url(@biography_book)
  end

  test "should destroy biography_book" do
    assert_difference('BiographyBook.count', -1) do
      delete biography_book_url(@biography_book)
    end

    assert_redirected_to biography_books_url
  end
end
