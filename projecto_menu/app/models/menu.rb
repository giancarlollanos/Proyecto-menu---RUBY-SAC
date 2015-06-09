class Menu < ActiveRecord::Base
  belongs_to :user
  belongs_to :local
  belongs_to :week
  belongs_to :dish
  belongs_to :dishes_type
  
  validates :local, presence: true
  validates :dish, presence: true
  
end
