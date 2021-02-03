class CreateTraditionalLiteratureBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :traditional_literature_books do |t|
      t.string :title
      t.date :date_finished
      t.integer :pages
      t.string :author
      t.string :illustrator
      t.string :country
      t.string :characters
      t.string :setting
      t.text :problem
      t.text :solution
      t.string :rating
      t.text :rationale

      t.timestamps
    end
  end
end
