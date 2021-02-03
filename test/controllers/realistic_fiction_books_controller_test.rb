require 'test_helper'

class RealisticFictionBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @realistic_fiction_book = realistic_fiction_books(:one)
  end

  test "should get index" do
    get realistic_fiction_books_url
    assert_response :success
  end

  test "should get new" do
    get new_realistic_fiction_book_url
    assert_response :success
  end

  test "should create realistic_fiction_book" do
    assert_difference('RealisticFictionBook.count') do
      post realistic_fiction_books_url, params: { realistic_fiction_book: { author: @realistic_fiction_book.author, date_finished: @realistic_fiction_book.date_finished, genre_explanation: @realistic_fiction_book.genre_explanation, illustrator: @realistic_fiction_book.illustrator, main_characters: @realistic_fiction_book.main_characters, pages: @realistic_fiction_book.pages, problem: @realistic_fiction_book.problem, rating: @realistic_fiction_book.rating, rationale: @realistic_fiction_book.rationale, setting: @realistic_fiction_book.setting, solution: @realistic_fiction_book.solution, title: @realistic_fiction_book.title } }
    end

    assert_redirected_to realistic_fiction_book_url(RealisticFictionBook.last)
  end

  test "should show realistic_fiction_book" do
    get realistic_fiction_book_url(@realistic_fiction_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_realistic_fiction_book_url(@realistic_fiction_book)
    assert_response :success
  end

  test "should update realistic_fiction_book" do
    patch realistic_fiction_book_url(@realistic_fiction_book), params: { realistic_fiction_book: { author: @realistic_fiction_book.author, date_finished: @realistic_fiction_book.date_finished, genre_explanation: @realistic_fiction_book.genre_explanation, illustrator: @realistic_fiction_book.illustrator, main_characters: @realistic_fiction_book.main_characters, pages: @realistic_fiction_book.pages, problem: @realistic_fiction_book.problem, rating: @realistic_fiction_book.rating, rationale: @realistic_fiction_book.rationale, setting: @realistic_fiction_book.setting, solution: @realistic_fiction_book.solution, title: @realistic_fiction_book.title } }
    assert_redirected_to realistic_fiction_book_url(@realistic_fiction_book)
  end

  test "should destroy realistic_fiction_book" do
    assert_difference('RealisticFictionBook.count', -1) do
      delete realistic_fiction_book_url(@realistic_fiction_book)
    end

    assert_redirected_to realistic_fiction_books_url
  end
end
