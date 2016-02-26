class Invoice < ActiveRecord::Base
  has_many :products
end
