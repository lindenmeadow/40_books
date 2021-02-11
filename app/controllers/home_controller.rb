class HomeController < ApplicationController
  def index
  end

  def about
  end

  def books
    @award_winner_books = AwardWinnerBook.all
    @awcount = @award_winner_books.count

    @biography_books = BiographyBook.all
    @bcount = @biography_books.count

    @fantasy_books = FantasyBook.all
    @fcount = @fantasy_books.count

    @historical_fiction_books = HistoricalFictionBook.all
    @hfcount = @historical_fiction_books.count

    @informational_books = InformationalBook.all
    @icount = @informational_books.count

    @mystery_books = MysteryBook.all
    @mcount = @mystery_books.count

    @poetry_anthology_books = PoetryAnthologyBook.all
    @pacount = @poetry_anthology_books.count

    @realistic_fiction_books = RealisticFictionBook.all
    @rfcount = @realistic_fiction_books.count

    @science_fiction_books = ScienceFictionBook.all
    @sfcount = @science_fiction_books.count

    @traditional_literature_books = TraditionalLiteratureBook.all
    @tlcount = @traditional_literature_books.count

    @book_total = @awcount + @bcount + @fcount + @hfcount + @icount + @mcount + @pacount + @rfcount + @sfcount + @tlcount
  end
end
