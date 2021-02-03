require "application_system_test_case"

class TraditionalLiteratureBooksTest < ApplicationSystemTestCase
  setup do
    @traditional_literature_book = traditional_literature_books(:one)
  end

  test "visiting the index" do
    visit traditional_literature_books_url
    assert_selector "h1", text: "Traditional Literature Books"
  end

  test "creating a Traditional literature book" do
    visit traditional_literature_books_url
    click_on "New Traditional Literature Book"

    fill_in "Author", with: @traditional_literature_book.author
    fill_in "Characters", with: @traditional_literature_book.characters
    fill_in "Country", with: @traditional_literature_book.country
    fill_in "Illustrator", with: @traditional_literature_book.illustrator
    fill_in "Problem", with: @traditional_literature_book.problem
    fill_in "Rating", with: @traditional_literature_book.rating
    fill_in "Rationale", with: @traditional_literature_book.rationale
    fill_in "Setting", with: @traditional_literature_book.setting
    fill_in "Solution", with: @traditional_literature_book.solution
    fill_in "Title", with: @traditional_literature_book.title
    click_on "Create Traditional literature book"

    assert_text "Traditional literature book was successfully created"
    click_on "Back"
  end

  test "updating a Traditional literature book" do
    visit traditional_literature_books_url
    click_on "Edit", match: :first

    fill_in "Author", with: @traditional_literature_book.author
    fill_in "Characters", with: @traditional_literature_book.characters
    fill_in "Country", with: @traditional_literature_book.country
    fill_in "Illustrator", with: @traditional_literature_book.illustrator
    fill_in "Problem", with: @traditional_literature_book.problem
    fill_in "Rating", with: @traditional_literature_book.rating
    fill_in "Rationale", with: @traditional_literature_book.rationale
    fill_in "Setting", with: @traditional_literature_book.setting
    fill_in "Solution", with: @traditional_literature_book.solution
    fill_in "Title", with: @traditional_literature_book.title
    click_on "Update Traditional literature book"

    assert_text "Traditional literature book was successfully updated"
    click_on "Back"
  end

  test "destroying a Traditional literature book" do
    visit traditional_literature_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Traditional literature book was successfully destroyed"
  end
end
