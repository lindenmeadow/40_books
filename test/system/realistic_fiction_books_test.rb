require "application_system_test_case"

class RealisticFictionBooksTest < ApplicationSystemTestCase
  setup do
    @realistic_fiction_book = realistic_fiction_books(:one)
  end

  test "visiting the index" do
    visit realistic_fiction_books_url
    assert_selector "h1", text: "Realistic Fiction Books"
  end

  test "creating a Realistic fiction book" do
    visit realistic_fiction_books_url
    click_on "New Realistic Fiction Book"

    fill_in "Author", with: @realistic_fiction_book.author
    fill_in "Date finished", with: @realistic_fiction_book.date_finished
    fill_in "Genre explanation", with: @realistic_fiction_book.genre_explanation
    fill_in "Illustrator", with: @realistic_fiction_book.illustrator
    fill_in "Main characters", with: @realistic_fiction_book.main_characters
    fill_in "Pages", with: @realistic_fiction_book.pages
    fill_in "Problem", with: @realistic_fiction_book.problem
    fill_in "Rating", with: @realistic_fiction_book.rating
    fill_in "Rationale", with: @realistic_fiction_book.rationale
    fill_in "Setting", with: @realistic_fiction_book.setting
    fill_in "Solution", with: @realistic_fiction_book.solution
    fill_in "Title", with: @realistic_fiction_book.title
    click_on "Create Realistic fiction book"

    assert_text "Realistic fiction book was successfully created"
    click_on "Back"
  end

  test "updating a Realistic fiction book" do
    visit realistic_fiction_books_url
    click_on "Edit", match: :first

    fill_in "Author", with: @realistic_fiction_book.author
    fill_in "Date finished", with: @realistic_fiction_book.date_finished
    fill_in "Genre explanation", with: @realistic_fiction_book.genre_explanation
    fill_in "Illustrator", with: @realistic_fiction_book.illustrator
    fill_in "Main characters", with: @realistic_fiction_book.main_characters
    fill_in "Pages", with: @realistic_fiction_book.pages
    fill_in "Problem", with: @realistic_fiction_book.problem
    fill_in "Rating", with: @realistic_fiction_book.rating
    fill_in "Rationale", with: @realistic_fiction_book.rationale
    fill_in "Setting", with: @realistic_fiction_book.setting
    fill_in "Solution", with: @realistic_fiction_book.solution
    fill_in "Title", with: @realistic_fiction_book.title
    click_on "Update Realistic fiction book"

    assert_text "Realistic fiction book was successfully updated"
    click_on "Back"
  end

  test "destroying a Realistic fiction book" do
    visit realistic_fiction_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Realistic fiction book was successfully destroyed"
  end
end
