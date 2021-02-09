require "application_system_test_case"

class BiographyBooksTest < ApplicationSystemTestCase
  setup do
    @biography_book = biography_books(:one)
  end

  test "visiting the index" do
    visit biography_books_url
    assert_selector "h1", text: "Biography Books"
  end

  test "creating a Biography book" do
    visit biography_books_url
    click_on "New Biography Book"

    fill_in "Author", with: @biography_book.author
    fill_in "Connection", with: @biography_book.connection
    fill_in "Date finished", with: @biography_book.date_finished
    fill_in "Pages", with: @biography_book.pages
    fill_in "Question", with: @biography_book.question
    fill_in "Rating", with: @biography_book.rating
    fill_in "Rationale", with: @biography_book.rationale
    fill_in "Things learned", with: @biography_book.things_learned
    fill_in "Title", with: @biography_book.title
    fill_in "Words learned", with: @biography_book.words_learned
    click_on "Create Biography book"

    assert_text "Biography book was successfully created"
    click_on "Back"
  end

  test "updating a Biography book" do
    visit biography_books_url
    click_on "Edit", match: :first

    fill_in "Author", with: @biography_book.author
    fill_in "Connection", with: @biography_book.connection
    fill_in "Date finished", with: @biography_book.date_finished
    fill_in "Pages", with: @biography_book.pages
    fill_in "Question", with: @biography_book.question
    fill_in "Rating", with: @biography_book.rating
    fill_in "Rationale", with: @biography_book.rationale
    fill_in "Things learned", with: @biography_book.things_learned
    fill_in "Title", with: @biography_book.title
    fill_in "Words learned", with: @biography_book.words_learned
    click_on "Update Biography book"

    assert_text "Biography book was successfully updated"
    click_on "Back"
  end

  test "destroying a Biography book" do
    visit biography_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Biography book was successfully destroyed"
  end
end
