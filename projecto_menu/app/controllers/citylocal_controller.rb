class CitylocalController < ApplicationController
  def index
     @locals = Local.all
  end
  
  def show
    
  end
end
