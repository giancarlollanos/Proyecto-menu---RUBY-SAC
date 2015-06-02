class DishesType < ActiveRecord::Base
  has_many :dishes
  belongs_to :order_status
end
