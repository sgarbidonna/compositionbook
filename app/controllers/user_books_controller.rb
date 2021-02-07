class UserBooksController < ApplicationController
    before_action :set_book, :set_current_user, only: %i[ show edit update destroy ]
  
    def current_user_books
      @books = Book.where(user_id: current_user.id).all()
  
      respond_to do |format|
        format.html 
        format.json {render json: @books}
      end
    end
  
    def select_user_books
      @books = Book.where(user_id: current_user.id).all()
  
      respond_to do |format|
        format.html 
        format.json {render json: @books}
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
        params.require(:book).permit(:title, :user, :current_user, :book_notes, :user_id)
      end
  end
  