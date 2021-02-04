require 'test_helper'

class FantasyBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fantasy_book = fantasy_books(:one)
  end

  test "should get index" do
    get fantasy_books_url
    assert_response :success
  end

  test "should get new" do
    get new_fantasy_book_url
    assert_response :success
  end

  test "should create fantasy_book" do
    assert_difference('FantasyBook.count') do
      post fantasy_books_url, params: { fantasy_book: { author: @fantasy_book.author, date_finished: @fantasy_book.date_finished, genre_explanation: @fantasy_book.genre_explanation, illustrator: @fantasy_book.illustrator, main_characters: @fantasy_book.main_characters, pages: @fantasy_book.pages, problem: @fantasy_book.problem, rating: @fantasy_book.rating, rationale: @fantasy_book.rationale, setting: @fantasy_book.setting, solution: @fantasy_book.solution, title: @fantasy_book.title } }
    end

    assert_redirected_to fantasy_book_url(FantasyBook.last)
  end

  test "should show fantasy_book" do
    get fantasy_book_url(@fantasy_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_fantasy_book_url(@fantasy_book)
    assert_response :success
  end

  test "should update fantasy_book" do
    patch fantasy_book_url(@fantasy_book), params: { fantasy_book: { author: @fantasy_book.author, date_finished: @fantasy_book.date_finished, genre_explanation: @fantasy_book.genre_explanation, illustrator: @fantasy_book.illustrator, main_characters: @fantasy_book.main_characters, pages: @fantasy_book.pages, problem: @fantasy_book.problem, rating: @fantasy_book.rating, rationale: @fantasy_book.rationale, setting: @fantasy_book.setting, solution: @fantasy_book.solution, title: @fantasy_book.title } }
    assert_redirected_to fantasy_book_url(@fantasy_book)
  end

  test "should destroy fantasy_book" do
    assert_difference('FantasyBook.count', -1) do
      delete fantasy_book_url(@fantasy_book)
    end

    assert_redirected_to fantasy_books_url
  end
end
