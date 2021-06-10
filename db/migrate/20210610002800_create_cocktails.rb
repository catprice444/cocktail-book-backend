class CreateCocktails < ActiveRecord::Migration[6.1]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :recipe
      t.string :ingredients
      t.integer :alcohol_id
      t.integer :rating

      t.timestamps
    end
  end
end
