class BiographyBooksController < ApplicationController
  before_action :set_biography_book, only: %i[ show edit update destroy ]

  # GET /biography_books or /biography_books.json
  def index
    @biography_books = BiographyBook.all
  end

  # GET /biography_books/1 or /biography_books/1.json
  def show
  end

  # GET /biography_books/new
  def new
    @biography_book = BiographyBook.new
  end

  # GET /biography_books/1/edit
  def edit
  end

  # POST /biography_books or /biography_books.json
  def create
    @biography_book = BiographyBook.new(biography_book_params)

    respond_to do |format|
      if @biography_book.save
        format.html { redirect_to @biography_book, notice: "Biography book was successfully created." }
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
        format.html { redirect_to @biography_book, notice: "Biography book was successfully updated." }
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
      format.html { redirect_to biography_books_url, notice: "Biography book was successfully destroyed." }
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
      params.require(:biography_book).permit(:title, :date_finished, :pages, :author, :things_learned, :words_learned, :question, :connection, :rating, :rationale)
    end
end
