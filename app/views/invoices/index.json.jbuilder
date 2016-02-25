json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :Date, :Company, :Done_By
  json.url invoice_url(invoice, format: :json)
end
