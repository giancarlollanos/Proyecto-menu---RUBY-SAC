class OrderHeader < ActiveRecord::Base
  belongs_to :local
  belongs_to :order_status
end
