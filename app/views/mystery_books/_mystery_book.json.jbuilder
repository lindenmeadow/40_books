json.extract! mystery_book, :id, :title, :date_finished, :pages, :author, :illustrator, :genre_explanation, :main_characters, :setting, :problem, :solution, :rating, :rationale, :created_at, :updated_at
json.url mystery_book_url(mystery_book, format: :json)
