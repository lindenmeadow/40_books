class CreateRealisticFictionBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :realistic_fiction_books do |t|
      t.string :title
      t.date :date_finished
      t.integer :pages
      t.string :author
      t.text :genre_explanation
      t.string :main_characters
      t.string :setting
      t.text :problem
      t.text :solution
      t.string :rating
      t.text :rationale
      t.string :illustrator
      t.integer :user_id

      t.timestamps
    end
  end
end
