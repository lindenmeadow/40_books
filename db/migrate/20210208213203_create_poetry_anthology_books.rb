class CreatePoetryAnthologyBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :poetry_anthology_books do |t|
      t.string :title
      t.date :date_finished
      t.integer :pages
      t.string :author
      t.string :illustrator
      t.text :favorite_poem
      t.text :least_favorite_poem
      t.string :rating
      t.text :rationale
      t.text :literal_language
      t.text :nonliteral_language
      t.text :stanza
      t.integer :user_id

      t.timestamps
    end
  end
end
