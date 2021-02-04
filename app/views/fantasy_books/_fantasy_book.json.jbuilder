json.extract! fantasy_book, :id, :title, :date_finished, :pages, :author, :illustrator, :genre_explanation, :main_characters, :setting, :problem, :solution, :rating, :rationale, :created_at, :updated_at
json.url fantasy_book_url(fantasy_book, format: :json)
