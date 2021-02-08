require "application_system_test_case"

class PoetryAnthologyBooksTest < ApplicationSystemTestCase
  setup do
    @poetry_anthology_book = poetry_anthology_books(:one)
  end

  test "visiting the index" do
    visit poetry_anthology_books_url
    assert_selector "h1", text: "Poetry Anthology Books"
  end

  test "creating a Poetry anthology book" do
    visit poetry_anthology_books_url
    click_on "New Poetry Anthology Book"

    fill_in "Author", with: @poetry_anthology_book.author
    fill_in "Date finished", with: @poetry_anthology_book.date_finished
    fill_in "Favorite poem", with: @poetry_anthology_book.favorite_poem
    fill_in "Illustrator", with: @poetry_anthology_book.illustrator
    fill_in "Least favorite poem", with: @poetry_anthology_book.least_favorite_poem
    fill_in "Literal language", with: @poetry_anthology_book.literal_language
    fill_in "Nonliteral language", with: @poetry_anthology_book.nonliteral_language
    fill_in "Pages", with: @poetry_anthology_book.pages
    fill_in "Rating", with: @poetry_anthology_book.rating
    fill_in "Rationale", with: @poetry_anthology_book.rationale
    fill_in "Stanza", with: @poetry_anthology_book.stanza
    fill_in "Title", with: @poetry_anthology_book.title
    click_on "Create Poetry anthology book"

    assert_text "Poetry anthology book was successfully created"
    click_on "Back"
  end

  test "updating a Poetry anthology book" do
    visit poetry_anthology_books_url
    click_on "Edit", match: :first

    fill_in "Author", with: @poetry_anthology_book.author
    fill_in "Date finished", with: @poetry_anthology_book.date_finished
    fill_in "Favorite poem", with: @poetry_anthology_book.favorite_poem
    fill_in "Illustrator", with: @poetry_anthology_book.illustrator
    fill_in "Least favorite poem", with: @poetry_anthology_book.least_favorite_poem
    fill_in "Literal language", with: @poetry_anthology_book.literal_language
    fill_in "Nonliteral language", with: @poetry_anthology_book.nonliteral_language
    fill_in "Pages", with: @poetry_anthology_book.pages
    fill_in "Rating", with: @poetry_anthology_book.rating
    fill_in "Rationale", with: @poetry_anthology_book.rationale
    fill_in "Stanza", with: @poetry_anthology_book.stanza
    fill_in "Title", with: @poetry_anthology_book.title
    click_on "Update Poetry anthology book"

    assert_text "Poetry anthology book was successfully updated"
    click_on "Back"
  end

  test "destroying a Poetry anthology book" do
    visit poetry_anthology_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poetry anthology book was successfully destroyed"
  end
end
