module BooksHelper

    def book_is_mine?(book_id)
        Book.find(book_id).user_id == current_user.id
    end

    def my_creator(book_id)
        User.find(Book.find(book_id).user_id).username
    end
end
