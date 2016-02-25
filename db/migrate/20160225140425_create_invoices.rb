class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.datetime :Date
      t.string :Company
      t.string :Done_By

      t.timestamps null: false
    end
  end
end
