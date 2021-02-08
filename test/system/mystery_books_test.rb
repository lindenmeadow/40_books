require "application_system_test_case"

class MysteryBooksTest < ApplicationSystemTestCase
  setup do
    @mystery_book = mystery_books(:one)
  end

  test "visiting the index" do
    visit mystery_books_url
    assert_selector "h1", text: "Mystery Books"
  end

  test "creating a Mystery book" do
    visit mystery_books_url
    click_on "New Mystery Book"

    fill_in "Author", with: @mystery_book.author
    fill_in "Date finished", with: @mystery_book.date_finished
    fill_in "Genre explanation", with: @mystery_book.genre_explanation
    fill_in "Illustrator", with: @mystery_book.illustrator
    fill_in "Main characters", with: @mystery_book.main_characters
    fill_in "Pages", with: @mystery_book.pages
    fill_in "Problem", with: @mystery_book.problem
    fill_in "Rating", with: @mystery_book.rating
    fill_in "Rationale", with: @mystery_book.rationale
    fill_in "Setting", with: @mystery_book.setting
    fill_in "Solution", with: @mystery_book.solution
    fill_in "Title", with: @mystery_book.title
    click_on "Create Mystery book"

    assert_text "Mystery book was successfully created"
    click_on "Back"
  end

  test "updating a Mystery book" do
    visit mystery_books_url
    click_on "Edit", match: :first

    fill_in "Author", with: @mystery_book.author
    fill_in "Date finished", with: @mystery_book.date_finished
    fill_in "Genre explanation", with: @mystery_book.genre_explanation
    fill_in "Illustrator", with: @mystery_book.illustrator
    fill_in "Main characters", with: @mystery_book.main_characters
    fill_in "Pages", with: @mystery_book.pages
    fill_in "Problem", with: @mystery_book.problem
    fill_in "Rating", with: @mystery_book.rating
    fill_in "Rationale", with: @mystery_book.rationale
    fill_in "Setting", with: @mystery_book.setting
    fill_in "Solution", with: @mystery_book.solution
    fill_in "Title", with: @mystery_book.title
    click_on "Update Mystery book"

    assert_text "Mystery book was successfully updated"
    click_on "Back"
  end

  test "destroying a Mystery book" do
    visit mystery_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mystery book was successfully destroyed"
  end
end
