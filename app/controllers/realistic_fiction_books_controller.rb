class RealisticFictionBooksController < ApplicationController
  before_action :set_realistic_fiction_book, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /realistic_fiction_books or /realistic_fiction_books.json
  def index
    @realistic_fiction_books = current_user.realistic_fiction_books
  end

  # GET /realistic_fiction_books/1 or /realistic_fiction_books/1.json
  def show
  end

  # GET /realistic_fiction_books/new
  def new
    @realistic_fiction_book = current_user.realistic_fiction_books.build
  end

  # GET /realistic_fiction_books/1/edit
  def edit
  end

  def correct_user 
    @realistic_fiction_book = current_user.realistic_fiction_books.find_by(id: params[:id])
    redirect_to realistic_fiction_books_path, notice: "Sorry, but you aren't allowed to do that." if @realistic_fiction_book.nil?
  end

  # POST /realistic_fiction_books or /realistic_fiction_books.json
  def create
    @realistic_fiction_book = current_user.realistic_fiction_books.build(realistic_fiction_book_params)

    respond_to do |format|
      if @realistic_fiction_book.save
        format.html { redirect_to @realistic_fiction_book, notice: "Realistic fiction review was successfully created." }
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
        format.html { redirect_to @realistic_fiction_book, notice: "Realistic fiction review was successfully updated." }
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
      format.html { redirect_to realistic_fiction_books_url, notice: "Realistic fiction book was successfully deleted." }
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
      params.require(:realistic_fiction_book).permit(:title, :date_finished, :pages, :author, :genre_explanation, :main_characters, :setting, :problem, :solution, :rating, :rationale, :illustrator, :user_id)
    end
end
