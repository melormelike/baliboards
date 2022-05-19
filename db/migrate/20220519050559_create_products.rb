class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.boolean :sold
      t.string :title
      t.string :brand
      t.text :description
      t.string :type
      t.integer :quantity
      t.string :length
      t.string :condition
      t.integer :weight
      t.integer :price

      t.timestamps
    end
  end
end
