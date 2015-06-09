class DishesType < ActiveRecord::Base
  has_many :dishes
  has_many :menus
  belongs_to :order_status
end
