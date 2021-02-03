require 'test_helper'

class HistoricalFictionBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historical_fiction_book = historical_fiction_books(:one)
  end

  test "should get index" do
    get historical_fiction_books_url
    assert_response :success
  end

  test "should get new" do
    get new_historical_fiction_book_url
    assert_response :success
  end

  test "should create historical_fiction_book" do
    assert_difference('HistoricalFictionBook.count') do
      post historical_fiction_books_url, params: { historical_fiction_book: { author: @historical_fiction_book.author, date_finished: @historical_fiction_book.date_finished, genre_explanation: @historical_fiction_book.genre_explanation, illustrator: @historical_fiction_book.illustrator, main_characters: @historical_fiction_book.main_characters, pages: @historical_fiction_book.pages, problem: @historical_fiction_book.problem, rating: @historical_fiction_book.rating, rationale: @historical_fiction_book.rationale, setting: @historical_fiction_book.setting, solution: @historical_fiction_book.solution, title: @historical_fiction_book.title } }
    end

    assert_redirected_to historical_fiction_book_url(HistoricalFictionBook.last)
  end

  test "should show historical_fiction_book" do
    get historical_fiction_book_url(@historical_fiction_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_historical_fiction_book_url(@historical_fiction_book)
    assert_response :success
  end

  test "should update historical_fiction_book" do
    patch historical_fiction_book_url(@historical_fiction_book), params: { historical_fiction_book: { author: @historical_fiction_book.author, date_finished: @historical_fiction_book.date_finished, genre_explanation: @historical_fiction_book.genre_explanation, illustrator: @historical_fiction_book.illustrator, main_characters: @historical_fiction_book.main_characters, pages: @historical_fiction_book.pages, problem: @historical_fiction_book.problem, rating: @historical_fiction_book.rating, rationale: @historical_fiction_book.rationale, setting: @historical_fiction_book.setting, solution: @historical_fiction_book.solution, title: @historical_fiction_book.title } }
    assert_redirected_to historical_fiction_book_url(@historical_fiction_book)
  end

  test "should destroy historical_fiction_book" do
    assert_difference('HistoricalFictionBook.count', -1) do
      delete historical_fiction_book_url(@historical_fiction_book)
    end

    assert_redirected_to historical_fiction_books_url
  end
end
