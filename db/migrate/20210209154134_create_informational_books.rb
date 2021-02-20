class CreateInformationalBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :informational_books do |t|
      t.string :title
      t.date :date_finished
      t.integer :pages
      t.string :author
      t.text :things_learned
      t.text :words_learned
      t.text :question
      t.text :connection
      t.string :rating
      t.text :rationale
      t.integer :user_id

      t.timestamps
    end
  end
end
