class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:books]

  def index
  end

  def about
  end

  def books
    @award_winner_books = current_user.award_winner_books
    @awcount = @award_winner_books.count

    @biography_books = current_user.biography_books
    @bcount = @biography_books.count

    @fantasy_books = current_user.fantasy_books
    @fcount = @fantasy_books.count

    @historical_fiction_books = current_user.historical_fiction_books
    @hfcount = @historical_fiction_books.count

    @informational_books = current_user.informational_books
    @icount = @informational_books.count

    @mystery_books = current_user.mystery_books
    @mcount = @mystery_books.count

    @poetry_anthology_books = current_user.poetry_anthology_books
    @pacount = @poetry_anthology_books.count

    @realistic_fiction_books = current_user.realistic_fiction_books
    @rfcount = @realistic_fiction_books.count

    @science_fiction_books = current_user.science_fiction_books
    @sfcount = @science_fiction_books.count

    @traditional_literature_books = current_user.traditional_literature_books
    @tlcount = @traditional_literature_books.count

    @book_total = @awcount + @bcount + @fcount + @hfcount + @icount + @mcount + @pacount + @rfcount + @sfcount + @tlcount
  end
end
