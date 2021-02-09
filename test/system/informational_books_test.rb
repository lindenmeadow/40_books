require "application_system_test_case"

class InformationalBooksTest < ApplicationSystemTestCase
  setup do
    @informational_book = informational_books(:one)
  end

  test "visiting the index" do
    visit informational_books_url
    assert_selector "h1", text: "Informational Books"
  end

  test "creating a Informational book" do
    visit informational_books_url
    click_on "New Informational Book"

    fill_in "Author", with: @informational_book.author
    fill_in "Connection", with: @informational_book.connection
    fill_in "Date finished", with: @informational_book.date_finished
    fill_in "Pages", with: @informational_book.pages
    fill_in "Question", with: @informational_book.question
    fill_in "Rating", with: @informational_book.rating
    fill_in "Rationale", with: @informational_book.rationale
    fill_in "Things learned", with: @informational_book.things_learned
    fill_in "Title", with: @informational_book.title
    fill_in "Words learned", with: @informational_book.words_learned
    click_on "Create Informational book"

    assert_text "Informational book was successfully created"
    click_on "Back"
  end

  test "updating a Informational book" do
    visit informational_books_url
    click_on "Edit", match: :first

    fill_in "Author", with: @informational_book.author
    fill_in "Connection", with: @informational_book.connection
    fill_in "Date finished", with: @informational_book.date_finished
    fill_in "Pages", with: @informational_book.pages
    fill_in "Question", with: @informational_book.question
    fill_in "Rating", with: @informational_book.rating
    fill_in "Rationale", with: @informational_book.rationale
    fill_in "Things learned", with: @informational_book.things_learned
    fill_in "Title", with: @informational_book.title
    fill_in "Words learned", with: @informational_book.words_learned
    click_on "Update Informational book"

    assert_text "Informational book was successfully updated"
    click_on "Back"
  end

  test "destroying a Informational book" do
    visit informational_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Informational book was successfully destroyed"
  end
end
