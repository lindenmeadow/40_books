require 'test_helper'

class TraditionalLiteratureBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @traditional_literature_book = traditional_literature_books(:one)
  end

  test "should get index" do
    get traditional_literature_books_url
    assert_response :success
  end

  test "should get new" do
    get new_traditional_literature_book_url
    assert_response :success
  end

  test "should create traditional_literature_book" do
    assert_difference('TraditionalLiteratureBook.count') do
      post traditional_literature_books_url, params: { traditional_literature_book: { author: @traditional_literature_book.author, characters: @traditional_literature_book.characters, country: @traditional_literature_book.country, illustrator: @traditional_literature_book.illustrator, problem: @traditional_literature_book.problem, rating: @traditional_literature_book.rating, rationale: @traditional_literature_book.rationale, setting: @traditional_literature_book.setting, solution: @traditional_literature_book.solution, title: @traditional_literature_book.title } }
    end

    assert_redirected_to traditional_literature_book_url(TraditionalLiteratureBook.last)
  end

  test "should show traditional_literature_book" do
    get traditional_literature_book_url(@traditional_literature_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_traditional_literature_book_url(@traditional_literature_book)
    assert_response :success
  end

  test "should update traditional_literature_book" do
    patch traditional_literature_book_url(@traditional_literature_book), params: { traditional_literature_book: { author: @traditional_literature_book.author, characters: @traditional_literature_book.characters, country: @traditional_literature_book.country, illustrator: @traditional_literature_book.illustrator, problem: @traditional_literature_book.problem, rating: @traditional_literature_book.rating, rationale: @traditional_literature_book.rationale, setting: @traditional_literature_book.setting, solution: @traditional_literature_book.solution, title: @traditional_literature_book.title } }
    assert_redirected_to traditional_literature_book_url(@traditional_literature_book)
  end

  test "should destroy traditional_literature_book" do
    assert_difference('TraditionalLiteratureBook.count', -1) do
      delete traditional_literature_book_url(@traditional_literature_book)
    end

    assert_redirected_to traditional_literature_books_url
  end
end
