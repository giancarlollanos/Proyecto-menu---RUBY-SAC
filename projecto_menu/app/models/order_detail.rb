class OrderDetail < ActiveRecord::Base
  has_many :order_headers
  belongs_to :dishes
end
