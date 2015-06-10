class OrderDetail < ActiveRecord::Base
  belongs_to :order_header
  belongs_to :dishes
end
