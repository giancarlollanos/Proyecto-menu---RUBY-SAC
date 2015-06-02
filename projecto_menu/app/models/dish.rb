class Dish < ActiveRecord::Base
  belongs_to :local
  belongs_to :dishes_type
end
