class OrderHeader < ActiveRecord::Base
  belongs_to :menus
  has_many :order_headers
  belongs_to :order_status
end
