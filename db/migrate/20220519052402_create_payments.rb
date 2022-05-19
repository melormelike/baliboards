class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.integer :total_balance
      t.string :purchase_order
      t.string :payment_method
      t.date :payment_date
      t.references :order, null: false, foreign_key: true
      t.references :shipping, null: false, foreign_key: true
      t.timestamps
    end
  end
end
