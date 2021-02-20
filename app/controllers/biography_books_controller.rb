class BiographyBooksController < ApplicationController
  before_action :set_biography_book, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /biography_books or /biography_books.json
  def index
    @biography_books = current_user.biography_books
  end

  # GET /biography_books/1 or /biography_books/1.json
  def show
  end

  # GET /biography_books/new
  def new
    @biography_book = current_user.biography_books.build
  end

  # GET /biography_books/1/edit
  def edit
  end

  def correct_user 
    @biography_book = current_user.biography_books.find_by(id: params[:id])
    redirect_to biography_books_path, notice: "Sorry, but you aren't allowed to do that." if @biography_book.nil?
  end

  # POST /biography_books or /biography_books.json
  def create
    @biography_book = current_user.biography_books.build(biography_book_params)

    respond_to do |format|
      if @biography_book.save
        format.html { redirect_to @biography_book, notice: "Biography review was successfully created." }
        format.json { render :show, status: :created, location: @biography_book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @biography_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biography_books/1 or /biography_books/1.json
  def update
    respond_to do |format|
      if @biography_book.update(biography_book_params)
        format.html { redirect_to @biography_book, notice: "Biography review was successfully updated." }
        format.json { render :show, status: :ok, location: @biography_book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @biography_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biography_books/1 or /biography_books/1.json
  def destroy
    @biography_book.destroy
    respond_to do |format|
      format.html { redirect_to biography_books_url, notice: "Biography review was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_biography_book
      @biography_book = BiographyBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def biography_book_params
      params.require(:biography_book).permit(:title, :date_finished, :pages, :author, :things_learned, :words_learned, :question, :connection, :rating, :rationale, :user_id)
    end
end
