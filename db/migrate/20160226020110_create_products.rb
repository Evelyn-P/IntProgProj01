class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :Invoice, index: true, foreign_key: true
      t.string :Product_Name
      t.string :Category
      t.string :Product_URL
      t.integer :Quantity
      t.string :Details

      t.timestamps null: false
    end
  end
end
