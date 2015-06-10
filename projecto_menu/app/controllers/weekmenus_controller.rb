class WeekmenusController < ApplicationController
 
 respond_to :html
 def index
     
      @join4 = Menu.joins(:dish, :local, :dishes_type).where("menus.local_id" => params[:id]).group("menus.dishes_type_id");
      @join5 = Menu.joins(:dish, :local).where("menus.local_id" => params[:id]);
 end
  
  def show
  
      @join4 = Menu.joins(:dish, :local, :dishes_type).where("menus.local_id" => params[:id]);
      @join5 = Menu.joins(:dish, :local).where("menus.local_id" => params[:id]);
  end
   
end
