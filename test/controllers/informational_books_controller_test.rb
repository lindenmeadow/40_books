require 'test_helper'

class InformationalBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @informational_book = informational_books(:one)
  end

  test "should get index" do
    get informational_books_url
    assert_response :success
  end

  test "should get new" do
    get new_informational_book_url
    assert_response :success
  end

  test "should create informational_book" do
    assert_difference('InformationalBook.count') do
      post informational_books_url, params: { informational_book: { author: @informational_book.author, connection: @informational_book.connection, date_finished: @informational_book.date_finished, pages: @informational_book.pages, question: @informational_book.question, rating: @informational_book.rating, rationale: @informational_book.rationale, things_learned: @informational_book.things_learned, title: @informational_book.title, words_learned: @informational_book.words_learned } }
    end

    assert_redirected_to informational_book_url(InformationalBook.last)
  end

  test "should show informational_book" do
    get informational_book_url(@informational_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_informational_book_url(@informational_book)
    assert_response :success
  end

  test "should update informational_book" do
    patch informational_book_url(@informational_book), params: { informational_book: { author: @informational_book.author, connection: @informational_book.connection, date_finished: @informational_book.date_finished, pages: @informational_book.pages, question: @informational_book.question, rating: @informational_book.rating, rationale: @informational_book.rationale, things_learned: @informational_book.things_learned, title: @informational_book.title, words_learned: @informational_book.words_learned } }
    assert_redirected_to informational_book_url(@informational_book)
  end

  test "should destroy informational_book" do
    assert_difference('InformationalBook.count', -1) do
      delete informational_book_url(@informational_book)
    end

    assert_redirected_to informational_books_url
  end
end
