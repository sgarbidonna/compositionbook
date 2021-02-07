json.extract! book, :id, :title, :user, :created_at, :updated_at, :current_user, :notes
json.url book_url(book, format: :json)
