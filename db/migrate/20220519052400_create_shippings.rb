class CreateShippings < ActiveRecord::Migration[6.1]
  def change
    create_table :shippings do |t|
      t.date :pickup
      t.string :courier
      t.integer :days_to_ship

      t.timestamps
    end
  end
end
