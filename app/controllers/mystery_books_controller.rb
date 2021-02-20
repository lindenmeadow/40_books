class MysteryBooksController < ApplicationController
  before_action :set_mystery_book, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /mystery_books or /mystery_books.json
  def index
    @mystery_books = current_user.mystery_books
  end

  # GET /mystery_books/1 or /mystery_books/1.json
  def show
  end

  # GET /mystery_books/new
  def new
    @mystery_book = current_user.mystery_books.build
  end

  # GET /mystery_books/1/edit
  def edit
  end

  def correct_user 
    @mystery_book = current_user.mystery_books.find_by(id: params[:id])
    redirect_to mystery_books_path, notice: "Sorry, but you aren't allowed to do that." if @mystery_book.nil?
  end

  # POST /mystery_books or /mystery_books.json
  def create
    @mystery_book = current_user.mystery_books.build(mystery_book_params)

    respond_to do |format|
      if @mystery_book.save
        format.html { redirect_to @mystery_book, notice: "Mystery review was successfully created." }
        format.json { render :show, status: :created, location: @mystery_book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mystery_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mystery_books/1 or /mystery_books/1.json
  def update
    respond_to do |format|
      if @mystery_book.update(mystery_book_params)
        format.html { redirect_to @mystery_book, notice: "Mystery review was successfully updated." }
        format.json { render :show, status: :ok, location: @mystery_book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mystery_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mystery_books/1 or /mystery_books/1.json
  def destroy
    @mystery_book.destroy
    respond_to do |format|
      format.html { redirect_to mystery_books_url, notice: "Mystery review was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mystery_book
      @mystery_book = MysteryBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mystery_book_params
      params.require(:mystery_book).permit(:title, :date_finished, :pages, :author, :illustrator, :genre_explanation, :main_characters, :setting, :problem, :solution, :rating, :rationale, :user_id)
    end
end
