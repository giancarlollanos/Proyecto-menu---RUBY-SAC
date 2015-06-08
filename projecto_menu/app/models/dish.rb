class Dish < ActiveRecord::Base
  belongs_to :local
  belongs_to :dishes_type
  
  validates :description, presence: true
  validates :local, presence: true
end
