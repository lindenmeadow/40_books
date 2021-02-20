class TraditionalLiteratureBooksController < ApplicationController
  before_action :set_traditional_literature_book, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /traditional_literature_books or /traditional_literature_books.json
  def index
    @traditional_literature_books = current_user.traditional_literature_books
  end

  # GET /traditional_literature_books/1 or /traditional_literature_books/1.json
  def show
  end

  # GET /traditional_literature_books/new
  def new
    @traditional_literature_book = current_user.traditional_literature_books.build
  end

  # GET /traditional_literature_books/1/edit
  def edit
  end

  def correct_user 
    @traditional_literature_book = current_user.traditional_literature_books.find_by(id: params[:id])
    redirect_to traditional_literature_books_path, notice: "Sorry, but you aren't allowed to do that." if @traditional_literature_book.nil?
  end

  # POST /traditional_literature_books or /traditional_literature_books.json
  def create
    @traditional_literature_book = current_user.traditional_literature_books.build(traditional_literature_book_params)

    respond_to do |format|
      if @traditional_literature_book.save
        format.html { redirect_to @traditional_literature_book, notice: "Traditional literature review was successfully created." }
        format.json { render :show, status: :created, location: @traditional_literature_book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @traditional_literature_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /traditional_literature_books/1 or /traditional_literature_books/1.json
  def update
    respond_to do |format|
      if @traditional_literature_book.update(traditional_literature_book_params)
        format.html { redirect_to @traditional_literature_book, notice: "Traditional literature review was successfully updated." }
        format.json { render :show, status: :ok, location: @traditional_literature_book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @traditional_literature_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /traditional_literature_books/1 or /traditional_literature_books/1.json
  def destroy
    @traditional_literature_book.destroy
    respond_to do |format|
      format.html { redirect_to traditional_literature_books_url, notice: "Traditional literature review was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_traditional_literature_book
      @traditional_literature_book = TraditionalLiteratureBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def traditional_literature_book_params
      params.require(:traditional_literature_book).permit(:title, :date_finished, :pages, :author, :illustrator, :country, :characters, :setting, :problem, :solution, :rating, :rationale, :user_id)
    end
end
