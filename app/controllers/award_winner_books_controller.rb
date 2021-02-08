class AwardWinnerBooksController < ApplicationController
  before_action :set_award_winner_book, only: %i[ show edit update destroy ]

  # GET /award_winner_books or /award_winner_books.json
  def index
    @award_winner_books = AwardWinnerBook.all
  end

  # GET /award_winner_books/1 or /award_winner_books/1.json
  def show
  end

  # GET /award_winner_books/new
  def new
    @award_winner_book = AwardWinnerBook.new
  end

  # GET /award_winner_books/1/edit
  def edit
  end

  # POST /award_winner_books or /award_winner_books.json
  def create
    @award_winner_book = AwardWinnerBook.new(award_winner_book_params)

    respond_to do |format|
      if @award_winner_book.save
        format.html { redirect_to @award_winner_book, notice: "Award winner book was successfully created." }
        format.json { render :show, status: :created, location: @award_winner_book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @award_winner_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /award_winner_books/1 or /award_winner_books/1.json
  def update
    respond_to do |format|
      if @award_winner_book.update(award_winner_book_params)
        format.html { redirect_to @award_winner_book, notice: "Award winner book was successfully updated." }
        format.json { render :show, status: :ok, location: @award_winner_book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @award_winner_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /award_winner_books/1 or /award_winner_books/1.json
  def destroy
    @award_winner_book.destroy
    respond_to do |format|
      format.html { redirect_to award_winner_books_url, notice: "Award winner book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_award_winner_book
      @award_winner_book = AwardWinnerBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def award_winner_book_params
      params.require(:award_winner_book).permit(:title, :date_finished, :pages, :author, :illustrator, :award, :main_characters, :setting, :problem, :solution, :rating, :rationale)
    end
end
