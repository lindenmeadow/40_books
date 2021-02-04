require 'test_helper'

class ScienceFictionBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @science_fiction_book = science_fiction_books(:one)
  end

  test "should get index" do
    get science_fiction_books_url
    assert_response :success
  end

  test "should get new" do
    get new_science_fiction_book_url
    assert_response :success
  end

  test "should create science_fiction_book" do
    assert_difference('ScienceFictionBook.count') do
      post science_fiction_books_url, params: { science_fiction_book: { author: @science_fiction_book.author, date_finished: @science_fiction_book.date_finished, genre_explanation: @science_fiction_book.genre_explanation, illustrator: @science_fiction_book.illustrator, main_characters: @science_fiction_book.main_characters, pages: @science_fiction_book.pages, problem: @science_fiction_book.problem, rating: @science_fiction_book.rating, rationale: @science_fiction_book.rationale, setting: @science_fiction_book.setting, solution: @science_fiction_book.solution, title: @science_fiction_book.title } }
    end

    assert_redirected_to science_fiction_book_url(ScienceFictionBook.last)
  end

  test "should show science_fiction_book" do
    get science_fiction_book_url(@science_fiction_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_science_fiction_book_url(@science_fiction_book)
    assert_response :success
  end

  test "should update science_fiction_book" do
    patch science_fiction_book_url(@science_fiction_book), params: { science_fiction_book: { author: @science_fiction_book.author, date_finished: @science_fiction_book.date_finished, genre_explanation: @science_fiction_book.genre_explanation, illustrator: @science_fiction_book.illustrator, main_characters: @science_fiction_book.main_characters, pages: @science_fiction_book.pages, problem: @science_fiction_book.problem, rating: @science_fiction_book.rating, rationale: @science_fiction_book.rationale, setting: @science_fiction_book.setting, solution: @science_fiction_book.solution, title: @science_fiction_book.title } }
    assert_redirected_to science_fiction_book_url(@science_fiction_book)
  end

  test "should destroy science_fiction_book" do
    assert_difference('ScienceFictionBook.count', -1) do
      delete science_fiction_book_url(@science_fiction_book)
    end

    assert_redirected_to science_fiction_books_url
  end
end
