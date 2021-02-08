class BooksController < ApplicationController
  before_action :set_book, :set_current_user, only: %i[ show edit update destroy ]

  # GET /books or /books.json
  def index

    @books = Book.all

    respond_to do |format|
      format.html # index.html.erb 
      format.json {render json: @books}
    end
  end

  # GET /books/1 or /books/1.json
  def show
    @book = Book.find(params[:id])
    @book_notes = Note.where(book_id: params[:id]).all()

    respond_to do |format|
      format.html # show.html.erb 
      format.json {render json: @book}
    end

  end

  # GET /books/new
  def new
    @book = Book.new
    
    respond_to do |format|
      format.html # new.html.erb 
      format.json {render json: @book}
    end
  end

  # GET /books/1/edit
  def edit
    @book = Book.find(params[:id])

  end


  # POST /books or /books.json
  def create
   
    @book = Book.new(private: book_params[:private],title: book_params[:title], user_id: current_user.id) 

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: "Book was successfully created." }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end


  def currentuserbooks
    @books = Book.where(user_id: current_user.id)

    respond_to do |format|
      format.html 
      format.json {render json: @books}
    end
  end

  def selecteduserbooks

    @books = Book.where(user_id: params[:user_id])

    respond_to do |format|
      format.html 
      format.json {render json: @books}
    end
  end

  # PATCH/PUT /books/1 or /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params) #(params[:book])
        format.html { redirect_to @book, notice: "Book was successfully updated." }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1 or /books/1.json
  def destroy

    @book = Book.find(params[:id])
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: "Book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    def set_current_user
      @current_user=current_user
    end
    # Only allow a list of trusted parameters through.
    def book_params
      params.require(:book).permit(:title, :user, :current_user, :book_notes, :user_id, :private)
    end
end
