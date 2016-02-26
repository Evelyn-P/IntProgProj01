class AddStatusTypeToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :Status_Type, :string
  end
end
