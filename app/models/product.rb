class Product < ActiveRecord::Base
  belongs_to :Invoice
end
