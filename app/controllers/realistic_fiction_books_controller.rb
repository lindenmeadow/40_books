class RealisticFictionBooksController < ApplicationController
  before_action :set_realistic_fiction_book, only: %i[ show edit update destroy ]

  # GET /realistic_fiction_books or /realistic_fiction_books.json
  def index
    @realistic_fiction_books = RealisticFictionBook.all
  end

  # GET /realistic_fiction_books/1 or /realistic_fiction_books/1.json
  def show
  end

  # GET /realistic_fiction_books/new
  def new
    @realistic_fiction_book = RealisticFictionBook.new
  end

  # GET /realistic_fiction_books/1/edit
  def edit
  end

  # POST /realistic_fiction_books or /realistic_fiction_books.json
  def create
    @realistic_fiction_book = RealisticFictionBook.new(realistic_fiction_book_params)

    respond_to do |format|
      if @realistic_fiction_book.save
        format.html { redirect_to @realistic_fiction_book, notice: "Realistic fiction book was successfully created." }
        format.json { render :show, status: :created, location: @realistic_fiction_book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @realistic_fiction_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /realistic_fiction_books/1 or /realistic_fiction_books/1.json
  def update
    respond_to do |format|
      if @realistic_fiction_book.update(realistic_fiction_book_params)
        format.html { redirect_to @realistic_fiction_book, notice: "Realistic fiction book was successfully updated." }
        format.json { render :show, status: :ok, location: @realistic_fiction_book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @realistic_fiction_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /realistic_fiction_books/1 or /realistic_fiction_books/1.json
  def destroy
    @realistic_fiction_book.destroy
    respond_to do |format|
      format.html { redirect_to realistic_fiction_books_url, notice: "Realistic fiction book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_realistic_fiction_book
      @realistic_fiction_book = RealisticFictionBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def realistic_fiction_book_params
      params.require(:realistic_fiction_book).permit(:title, :date_finished, :pages, :author, :genre_explanation, :main_characters, :setting, :problem, :solution, :rating, :rationale, :illustrator)
    end
end
