require 'test_helper'

class AwardWinnerBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @award_winner_book = award_winner_books(:one)
  end

  test "should get index" do
    get award_winner_books_url
    assert_response :success
  end

  test "should get new" do
    get new_award_winner_book_url
    assert_response :success
  end

  test "should create award_winner_book" do
    assert_difference('AwardWinnerBook.count') do
      post award_winner_books_url, params: { award_winner_book: { author: @award_winner_book.author, award: @award_winner_book.award, date_finished: @award_winner_book.date_finished, illustrator: @award_winner_book.illustrator, main_characters: @award_winner_book.main_characters, pages: @award_winner_book.pages, problem: @award_winner_book.problem, rating: @award_winner_book.rating, rationale: @award_winner_book.rationale, setting: @award_winner_book.setting, solution: @award_winner_book.solution, title: @award_winner_book.title } }
    end

    assert_redirected_to award_winner_book_url(AwardWinnerBook.last)
  end

  test "should show award_winner_book" do
    get award_winner_book_url(@award_winner_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_award_winner_book_url(@award_winner_book)
    assert_response :success
  end

  test "should update award_winner_book" do
    patch award_winner_book_url(@award_winner_book), params: { award_winner_book: { author: @award_winner_book.author, award: @award_winner_book.award, date_finished: @award_winner_book.date_finished, illustrator: @award_winner_book.illustrator, main_characters: @award_winner_book.main_characters, pages: @award_winner_book.pages, problem: @award_winner_book.problem, rating: @award_winner_book.rating, rationale: @award_winner_book.rationale, setting: @award_winner_book.setting, solution: @award_winner_book.solution, title: @award_winner_book.title } }
    assert_redirected_to award_winner_book_url(@award_winner_book)
  end

  test "should destroy award_winner_book" do
    assert_difference('AwardWinnerBook.count', -1) do
      delete award_winner_book_url(@award_winner_book)
    end

    assert_redirected_to award_winner_books_url
  end
end
