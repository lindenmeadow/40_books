require "application_system_test_case"

class ScienceFictionBooksTest < ApplicationSystemTestCase
  setup do
    @science_fiction_book = science_fiction_books(:one)
  end

  test "visiting the index" do
    visit science_fiction_books_url
    assert_selector "h1", text: "Science Fiction Books"
  end

  test "creating a Science fiction book" do
    visit science_fiction_books_url
    click_on "New Science Fiction Book"

    fill_in "Author", with: @science_fiction_book.author
    fill_in "Date finished", with: @science_fiction_book.date_finished
    fill_in "Genre explanation", with: @science_fiction_book.genre_explanation
    fill_in "Illustrator", with: @science_fiction_book.illustrator
    fill_in "Main characters", with: @science_fiction_book.main_characters
    fill_in "Pages", with: @science_fiction_book.pages
    fill_in "Problem", with: @science_fiction_book.problem
    fill_in "Rating", with: @science_fiction_book.rating
    fill_in "Rationale", with: @science_fiction_book.rationale
    fill_in "Setting", with: @science_fiction_book.setting
    fill_in "Solution", with: @science_fiction_book.solution
    fill_in "Title", with: @science_fiction_book.title
    click_on "Create Science fiction book"

    assert_text "Science fiction book was successfully created"
    click_on "Back"
  end

  test "updating a Science fiction book" do
    visit science_fiction_books_url
    click_on "Edit", match: :first

    fill_in "Author", with: @science_fiction_book.author
    fill_in "Date finished", with: @science_fiction_book.date_finished
    fill_in "Genre explanation", with: @science_fiction_book.genre_explanation
    fill_in "Illustrator", with: @science_fiction_book.illustrator
    fill_in "Main characters", with: @science_fiction_book.main_characters
    fill_in "Pages", with: @science_fiction_book.pages
    fill_in "Problem", with: @science_fiction_book.problem
    fill_in "Rating", with: @science_fiction_book.rating
    fill_in "Rationale", with: @science_fiction_book.rationale
    fill_in "Setting", with: @science_fiction_book.setting
    fill_in "Solution", with: @science_fiction_book.solution
    fill_in "Title", with: @science_fiction_book.title
    click_on "Update Science fiction book"

    assert_text "Science fiction book was successfully updated"
    click_on "Back"
  end

  test "destroying a Science fiction book" do
    visit science_fiction_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Science fiction book was successfully destroyed"
  end
end
