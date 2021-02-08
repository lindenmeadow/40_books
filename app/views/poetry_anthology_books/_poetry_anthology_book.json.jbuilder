json.extract! poetry_anthology_book, :id, :title, :date_finished, :pages, :author, :illustrator, :favorite_poem, :least_favorite_poem, :rating, :rationale, :literal_language, :nonliteral_language, :stanza, :created_at, :updated_at
json.url poetry_anthology_book_url(poetry_anthology_book, format: :json)
