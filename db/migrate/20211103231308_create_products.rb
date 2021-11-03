class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.references :category_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
