class PoetryAnthologyBooksController < ApplicationController
  before_action :set_poetry_anthology_book, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /poetry_anthology_books or /poetry_anthology_books.json
  def index
    @poetry_anthology_books = current_user.poetry_anthology_books
  end

  # GET /poetry_anthology_books/1 or /poetry_anthology_books/1.json
  def show
  end

  # GET /poetry_anthology_books/new
  def new
    @poetry_anthology_book = current_user.poetry_anthology_books.build
  end

  # GET /poetry_anthology_books/1/edit
  def edit
  end

  def correct_user 
    @poetry_anthology_book = current_user.poetry_anthology_books.find_by(id: params[:id])
    redirect_to poetry_anthology_books_path, notice: "Sorry, but you aren't allowed to do that." if @poetry_anthology_book.nil?
  end

  # POST /poetry_anthology_books or /poetry_anthology_books.json
  def create
    @poetry_anthology_book = current_user.poetry_anthology_books.build(poetry_anthology_book_params)

    respond_to do |format|
      if @poetry_anthology_book.save
        format.html { redirect_to @poetry_anthology_book, notice: "Poetry anthology review was successfully created." }
        format.json { render :show, status: :created, location: @poetry_anthology_book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @poetry_anthology_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poetry_anthology_books/1 or /poetry_anthology_books/1.json
  def update
    respond_to do |format|
      if @poetry_anthology_book.update(poetry_anthology_book_params)
        format.html { redirect_to @poetry_anthology_book, notice: "Poetry anthology review was successfully updated." }
        format.json { render :show, status: :ok, location: @poetry_anthology_book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @poetry_anthology_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poetry_anthology_books/1 or /poetry_anthology_books/1.json
  def destroy
    @poetry_anthology_book.destroy
    respond_to do |format|
      format.html { redirect_to poetry_anthology_books_url, notice: "Poetry anthology review was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poetry_anthology_book
      @poetry_anthology_book = PoetryAnthologyBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def poetry_anthology_book_params
      params.require(:poetry_anthology_book).permit(:title, :date_finished, :pages, :author, :illustrator, :favorite_poem, :least_favorite_poem, :rating, :rationale, :literal_language, :nonliteral_language, :stanza, :user_id)
    end
end
