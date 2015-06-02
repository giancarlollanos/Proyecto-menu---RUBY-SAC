class Menu < ActiveRecord::Base
  belongs_to :user
  belongs_to :local
  belongs_to :week
  belongs_to :dish
end
