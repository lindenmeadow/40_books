class ScienceFictionBooksController < ApplicationController
  before_action :set_science_fiction_book, only: %i[ show edit update destroy ]

  # GET /science_fiction_books or /science_fiction_books.json
  def index
    @science_fiction_books = ScienceFictionBook.all
  end

  # GET /science_fiction_books/1 or /science_fiction_books/1.json
  def show
  end

  # GET /science_fiction_books/new
  def new
    @science_fiction_book = ScienceFictionBook.new
  end

  # GET /science_fiction_books/1/edit
  def edit
  end

  # POST /science_fiction_books or /science_fiction_books.json
  def create
    @science_fiction_book = ScienceFictionBook.new(science_fiction_book_params)

    respond_to do |format|
      if @science_fiction_book.save
        format.html { redirect_to @science_fiction_book, notice: "Science fiction book was successfully created." }
        format.json { render :show, status: :created, location: @science_fiction_book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @science_fiction_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /science_fiction_books/1 or /science_fiction_books/1.json
  def update
    respond_to do |format|
      if @science_fiction_book.update(science_fiction_book_params)
        format.html { redirect_to @science_fiction_book, notice: "Science fiction book was successfully updated." }
        format.json { render :show, status: :ok, location: @science_fiction_book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @science_fiction_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /science_fiction_books/1 or /science_fiction_books/1.json
  def destroy
    @science_fiction_book.destroy
    respond_to do |format|
      format.html { redirect_to science_fiction_books_url, notice: "Science fiction book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_science_fiction_book
      @science_fiction_book = ScienceFictionBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def science_fiction_book_params
      params.require(:science_fiction_book).permit(:title, :date_finished, :pages, :author, :illustrator, :genre_explanation, :main_characters, :setting, :problem, :solution, :rating, :rationale)
    end
end
