json.extract! biography_book, :id, :title, :date_finished, :pages, :author, :things_learned, :words_learned, :question, :connection, :rating, :rationale, :created_at, :updated_at
json.url biography_book_url(biography_book, format: :json)
