class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.boolean :surfboard, default: false
      t.boolean :fins, default: false
      t.boolean :leash, default: false
      t.boolean :covers, default: false

      t.timestamps
    end
  end
end
