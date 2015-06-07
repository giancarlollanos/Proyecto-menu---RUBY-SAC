class Local < ActiveRecord::Base
    
     has_many :dishes
     validates :description, presence: true
     
end
