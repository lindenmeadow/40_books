require "application_system_test_case"

class HistoricalFictionBooksTest < ApplicationSystemTestCase
  setup do
    @historical_fiction_book = historical_fiction_books(:one)
  end

  test "visiting the index" do
    visit historical_fiction_books_url
    assert_selector "h1", text: "Historical Fiction Books"
  end

  test "creating a Historical fiction book" do
    visit historical_fiction_books_url
    click_on "New Historical Fiction Book"

    fill_in "Author", with: @historical_fiction_book.author
    fill_in "Date finished", with: @historical_fiction_book.date_finished
    fill_in "Genre explanation", with: @historical_fiction_book.genre_explanation
    fill_in "Illustrator", with: @historical_fiction_book.illustrator
    fill_in "Main characters", with: @historical_fiction_book.main_characters
    fill_in "Pages", with: @historical_fiction_book.pages
    fill_in "Problem", with: @historical_fiction_book.problem
    fill_in "Rating", with: @historical_fiction_book.rating
    fill_in "Rationale", with: @historical_fiction_book.rationale
    fill_in "Setting", with: @historical_fiction_book.setting
    fill_in "Solution", with: @historical_fiction_book.solution
    fill_in "Title", with: @historical_fiction_book.title
    click_on "Create Historical fiction book"

    assert_text "Historical fiction book was successfully created"
    click_on "Back"
  end

  test "updating a Historical fiction book" do
    visit historical_fiction_books_url
    click_on "Edit", match: :first

    fill_in "Author", with: @historical_fiction_book.author
    fill_in "Date finished", with: @historical_fiction_book.date_finished
    fill_in "Genre explanation", with: @historical_fiction_book.genre_explanation
    fill_in "Illustrator", with: @historical_fiction_book.illustrator
    fill_in "Main characters", with: @historical_fiction_book.main_characters
    fill_in "Pages", with: @historical_fiction_book.pages
    fill_in "Problem", with: @historical_fiction_book.problem
    fill_in "Rating", with: @historical_fiction_book.rating
    fill_in "Rationale", with: @historical_fiction_book.rationale
    fill_in "Setting", with: @historical_fiction_book.setting
    fill_in "Solution", with: @historical_fiction_book.solution
    fill_in "Title", with: @historical_fiction_book.title
    click_on "Update Historical fiction book"

    assert_text "Historical fiction book was successfully updated"
    click_on "Back"
  end

  test "destroying a Historical fiction book" do
    visit historical_fiction_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Historical fiction book was successfully destroyed"
  end
end
