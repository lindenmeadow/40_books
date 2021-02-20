class InformationalBooksController < ApplicationController
  before_action :set_informational_book, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  # GET /informational_books or /informational_books.json
  def index
    @informational_books = current_user.informational_books
  end

  # GET /informational_books/1 or /informational_books/1.json
  def show
  end

  # GET /informational_books/new
  def new
    @informational_book = current_user.informational_books.build
  end

  # GET /informational_books/1/edit
  def edit
  end

  def correct_user 
    @informational_book = current_user.informational_books.find_by(id: params[:id])
    redirect_to informational_books_path, notice: "Sorry, but you aren't allowed to do that." if @informational_book.nil?
  end

  # POST /informational_books or /informational_books.json
  def create
    @informational_book = current_user.informational_books.build(informational_book_params)

    respond_to do |format|
      if @informational_book.save
        format.html { redirect_to @informational_book, notice: "Nonfiction informational review was successfully created." }
        format.json { render :show, status: :created, location: @informational_book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @informational_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /informational_books/1 or /informational_books/1.json
  def update
    respond_to do |format|
      if @informational_book.update(informational_book_params)
        format.html { redirect_to @informational_book, notice: "Nonfiction informational review was successfully updated." }
        format.json { render :show, status: :ok, location: @informational_book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @informational_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /informational_books/1 or /informational_books/1.json
  def destroy
    @informational_book.destroy
    respond_to do |format|
      format.html { redirect_to informational_books_url, notice: "Nonfiction informational review was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_informational_book
      @informational_book = InformationalBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def informational_book_params
      params.require(:informational_book).permit(:title, :date_finished, :pages, :author, :things_learned, :words_learned, :question, :connection, :rating, :rationale, :user_id)
    end
end
