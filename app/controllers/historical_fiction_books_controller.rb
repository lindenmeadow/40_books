class HistoricalFictionBooksController < ApplicationController
  before_action :set_historical_fiction_book, only: %i[ show edit update destroy ]

  # GET /historical_fiction_books or /historical_fiction_books.json
  def index
    @historical_fiction_books = HistoricalFictionBook.all
  end

  # GET /historical_fiction_books/1 or /historical_fiction_books/1.json
  def show
  end

  # GET /historical_fiction_books/new
  def new
    @historical_fiction_book = HistoricalFictionBook.new
  end

  # GET /historical_fiction_books/1/edit
  def edit
  end

  # POST /historical_fiction_books or /historical_fiction_books.json
  def create
    @historical_fiction_book = HistoricalFictionBook.new(historical_fiction_book_params)

    respond_to do |format|
      if @historical_fiction_book.save
        format.html { redirect_to @historical_fiction_book, notice: "Historical fiction book was successfully created." }
        format.json { render :show, status: :created, location: @historical_fiction_book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @historical_fiction_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historical_fiction_books/1 or /historical_fiction_books/1.json
  def update
    respond_to do |format|
      if @historical_fiction_book.update(historical_fiction_book_params)
        format.html { redirect_to @historical_fiction_book, notice: "Historical fiction book was successfully updated." }
        format.json { render :show, status: :ok, location: @historical_fiction_book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @historical_fiction_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historical_fiction_books/1 or /historical_fiction_books/1.json
  def destroy
    @historical_fiction_book.destroy
    respond_to do |format|
      format.html { redirect_to historical_fiction_books_url, notice: "Historical fiction book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historical_fiction_book
      @historical_fiction_book = HistoricalFictionBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def historical_fiction_book_params
      params.require(:historical_fiction_book).permit(:title, :date_finished, :pages, :author, :illustrator, :genre_explanation, :main_characters, :setting, :problem, :solution, :rating, :rationale)
    end
end
