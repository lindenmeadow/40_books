class FantasyBooksController < ApplicationController
  before_action :set_fantasy_book, only: %i[ show edit update destroy ]

  # GET /fantasy_books or /fantasy_books.json
  def index
    @fantasy_books = FantasyBook.all
  end

  # GET /fantasy_books/1 or /fantasy_books/1.json
  def show
  end

  # GET /fantasy_books/new
  def new
    @fantasy_book = FantasyBook.new
  end

  # GET /fantasy_books/1/edit
  def edit
  end

  # POST /fantasy_books or /fantasy_books.json
  def create
    @fantasy_book = FantasyBook.new(fantasy_book_params)

    respond_to do |format|
      if @fantasy_book.save
        format.html { redirect_to @fantasy_book, notice: "Fantasy book was successfully created." }
        format.json { render :show, status: :created, location: @fantasy_book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fantasy_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fantasy_books/1 or /fantasy_books/1.json
  def update
    respond_to do |format|
      if @fantasy_book.update(fantasy_book_params)
        format.html { redirect_to @fantasy_book, notice: "Fantasy book was successfully updated." }
        format.json { render :show, status: :ok, location: @fantasy_book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fantasy_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fantasy_books/1 or /fantasy_books/1.json
  def destroy
    @fantasy_book.destroy
    respond_to do |format|
      format.html { redirect_to fantasy_books_url, notice: "Fantasy book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fantasy_book
      @fantasy_book = FantasyBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fantasy_book_params
      params.require(:fantasy_book).permit(:title, :date_finished, :pages, :author, :illustrator, :genre_explanation, :main_characters, :setting, :problem, :solution, :rating, :rationale)
    end
end
