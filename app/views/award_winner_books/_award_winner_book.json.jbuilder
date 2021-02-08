json.extract! award_winner_book, :id, :title, :date_finished, :pages, :author, :illustrator, :award, :main_characters, :setting, :problem, :solution, :rating, :rationale, :created_at, :updated_at
json.url award_winner_book_url(award_winner_book, format: :json)
