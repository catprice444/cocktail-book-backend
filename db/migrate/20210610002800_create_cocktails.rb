class CreateCocktails < ActiveRecord::Migration[6.1]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.text :recipe
      t.text :ingredients
      t.references :alcohol, null: false, foreign_key: true
      t.integer :rating

      t.timestamps
    end
  end
end
