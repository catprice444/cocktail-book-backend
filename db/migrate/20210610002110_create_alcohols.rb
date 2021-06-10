class CreateAlcohols < ActiveRecord::Migration[6.1]
  def change
    create_table :alcohols do |t|
      t.string :name
      t.string :website
      t.integer :preference

      t.timestamps
    end
  end
end
