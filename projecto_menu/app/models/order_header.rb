class OrderHeader < ActiveRecord::Base
  has_many :order_detail
  belongs_to :order_status
end