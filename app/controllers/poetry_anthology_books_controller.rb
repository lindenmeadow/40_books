class PoetryAnthologyBooksController < ApplicationController
  before_action :set_poetry_anthology_book, only: %i[ show edit update destroy ]

  # GET /poetry_anthology_books or /poetry_anthology_books.json
  def index
    @poetry_anthology_books = PoetryAnthologyBook.all
  end

  # GET /poetry_anthology_books/1 or /poetry_anthology_books/1.json
  def show
  end

  # GET /poetry_anthology_books/new
  def new
    @poetry_anthology_book = PoetryAnthologyBook.new
  end

  # GET /poetry_anthology_books/1/edit
  def edit
  end

  # POST /poetry_anthology_books or /poetry_anthology_books.json
  def create
    @poetry_anthology_book = PoetryAnthologyBook.new(poetry_anthology_book_params)

    respond_to do |format|
      if @poetry_anthology_book.save
        format.html { redirect_to @poetry_anthology_book, notice: "Poetry anthology book was successfully created." }
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
        format.html { redirect_to @poetry_anthology_book, notice: "Poetry anthology book was successfully updated." }
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
      format.html { redirect_to poetry_anthology_books_url, notice: "Poetry anthology book was successfully destroyed." }
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
      params.require(:poetry_anthology_book).permit(:title, :date_finished, :pages, :author, :illustrator, :favorite_poem, :least_favorite_poem, :rating, :rationale, :literal_language, :nonliteral_language, :stanza)
    end
end
