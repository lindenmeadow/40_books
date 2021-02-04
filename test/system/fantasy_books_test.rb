require "application_system_test_case"

class FantasyBooksTest < ApplicationSystemTestCase
  setup do
    @fantasy_book = fantasy_books(:one)
  end

  test "visiting the index" do
    visit fantasy_books_url
    assert_selector "h1", text: "Fantasy Books"
  end

  test "creating a Fantasy book" do
    visit fantasy_books_url
    click_on "New Fantasy Book"

    fill_in "Author", with: @fantasy_book.author
    fill_in "Date finished", with: @fantasy_book.date_finished
    fill_in "Genre explanation", with: @fantasy_book.genre_explanation
    fill_in "Illustrator", with: @fantasy_book.illustrator
    fill_in "Main characters", with: @fantasy_book.main_characters
    fill_in "Pages", with: @fantasy_book.pages
    fill_in "Problem", with: @fantasy_book.problem
    fill_in "Rating", with: @fantasy_book.rating
    fill_in "Rationale", with: @fantasy_book.rationale
    fill_in "Setting", with: @fantasy_book.setting
    fill_in "Solution", with: @fantasy_book.solution
    fill_in "Title", with: @fantasy_book.title
    click_on "Create Fantasy book"

    assert_text "Fantasy book was successfully created"
    click_on "Back"
  end

  test "updating a Fantasy book" do
    visit fantasy_books_url
    click_on "Edit", match: :first

    fill_in "Author", with: @fantasy_book.author
    fill_in "Date finished", with: @fantasy_book.date_finished
    fill_in "Genre explanation", with: @fantasy_book.genre_explanation
    fill_in "Illustrator", with: @fantasy_book.illustrator
    fill_in "Main characters", with: @fantasy_book.main_characters
    fill_in "Pages", with: @fantasy_book.pages
    fill_in "Problem", with: @fantasy_book.problem
    fill_in "Rating", with: @fantasy_book.rating
    fill_in "Rationale", with: @fantasy_book.rationale
    fill_in "Setting", with: @fantasy_book.setting
    fill_in "Solution", with: @fantasy_book.solution
    fill_in "Title", with: @fantasy_book.title
    click_on "Update Fantasy book"

    assert_text "Fantasy book was successfully updated"
    click_on "Back"
  end

  test "destroying a Fantasy book" do
    visit fantasy_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fantasy book was successfully destroyed"
  end
end
