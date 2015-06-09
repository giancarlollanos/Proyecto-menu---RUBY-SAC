class MymenuController < ApplicationController
  def index
    
    @locals = Local.all
    
    @locals2 = Local.find(params[:locals_id])
    
    @menus = Menu.all
    
    
    
  end
end
