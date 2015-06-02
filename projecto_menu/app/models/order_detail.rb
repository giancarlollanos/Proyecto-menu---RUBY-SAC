class OrderDetail < ActiveRecord::Base
  belongs_to :order_headers
end
