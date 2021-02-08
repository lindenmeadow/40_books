require "application_system_test_case"

class AwardWinnerBooksTest < ApplicationSystemTestCase
  setup do
    @award_winner_book = award_winner_books(:one)
  end

  test "visiting the index" do
    visit award_winner_books_url
    assert_selector "h1", text: "Award Winner Books"
  end

  test "creating a Award winner book" do
    visit award_winner_books_url
    click_on "New Award Winner Book"

    fill_in "Author", with: @award_winner_book.author
    fill_in "Award", with: @award_winner_book.award
    fill_in "Date finished", with: @award_winner_book.date_finished
    fill_in "Illustrator", with: @award_winner_book.illustrator
    fill_in "Main characters", with: @award_winner_book.main_characters
    fill_in "Pages", with: @award_winner_book.pages
    fill_in "Problem", with: @award_winner_book.problem
    fill_in "Rating", with: @award_winner_book.rating
    fill_in "Rationale", with: @award_winner_book.rationale
    fill_in "Setting", with: @award_winner_book.setting
    fill_in "Solution", with: @award_winner_book.solution
    fill_in "Title", with: @award_winner_book.title
    click_on "Create Award winner book"

    assert_text "Award winner book was successfully created"
    click_on "Back"
  end

  test "updating a Award winner book" do
    visit award_winner_books_url
    click_on "Edit", match: :first

    fill_in "Author", with: @award_winner_book.author
    fill_in "Award", with: @award_winner_book.award
    fill_in "Date finished", with: @award_winner_book.date_finished
    fill_in "Illustrator", with: @award_winner_book.illustrator
    fill_in "Main characters", with: @award_winner_book.main_characters
    fill_in "Pages", with: @award_winner_book.pages
    fill_in "Problem", with: @award_winner_book.problem
    fill_in "Rating", with: @award_winner_book.rating
    fill_in "Rationale", with: @award_winner_book.rationale
    fill_in "Setting", with: @award_winner_book.setting
    fill_in "Solution", with: @award_winner_book.solution
    fill_in "Title", with: @award_winner_book.title
    click_on "Update Award winner book"

    assert_text "Award winner book was successfully updated"
    click_on "Back"
  end

  test "destroying a Award winner book" do
    visit award_winner_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Award winner book was successfully destroyed"
  end
end
