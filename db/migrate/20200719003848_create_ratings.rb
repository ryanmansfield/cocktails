class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.references :cocktail, null: false, foreign_key: true
      t.float :rating

      t.timestamps
    end
  end
end
