class OrderHeader < ActiveRecord::Base
  belongs_to :menus
  belongs_to :order_status
end
