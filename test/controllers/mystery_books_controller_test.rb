require 'test_helper'

class MysteryBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mystery_book = mystery_books(:one)
  end

  test "should get index" do
    get mystery_books_url
    assert_response :success
  end

  test "should get new" do
    get new_mystery_book_url
    assert_response :success
  end

  test "should create mystery_book" do
    assert_difference('MysteryBook.count') do
      post mystery_books_url, params: { mystery_book: { author: @mystery_book.author, date_finished: @mystery_book.date_finished, genre_explanation: @mystery_book.genre_explanation, illustrator: @mystery_book.illustrator, main_characters: @mystery_book.main_characters, pages: @mystery_book.pages, problem: @mystery_book.problem, rating: @mystery_book.rating, rationale: @mystery_book.rationale, setting: @mystery_book.setting, solution: @mystery_book.solution, title: @mystery_book.title } }
    end

    assert_redirected_to mystery_book_url(MysteryBook.last)
  end

  test "should show mystery_book" do
    get mystery_book_url(@mystery_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_mystery_book_url(@mystery_book)
    assert_response :success
  end

  test "should update mystery_book" do
    patch mystery_book_url(@mystery_book), params: { mystery_book: { author: @mystery_book.author, date_finished: @mystery_book.date_finished, genre_explanation: @mystery_book.genre_explanation, illustrator: @mystery_book.illustrator, main_characters: @mystery_book.main_characters, pages: @mystery_book.pages, problem: @mystery_book.problem, rating: @mystery_book.rating, rationale: @mystery_book.rationale, setting: @mystery_book.setting, solution: @mystery_book.solution, title: @mystery_book.title } }
    assert_redirected_to mystery_book_url(@mystery_book)
  end

  test "should destroy mystery_book" do
    assert_difference('MysteryBook.count', -1) do
      delete mystery_book_url(@mystery_book)
    end

    assert_redirected_to mystery_books_url
  end
end
