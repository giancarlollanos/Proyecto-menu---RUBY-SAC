class WeekmenusController < ApplicationController
 
 respond_to :html
 def index
      @join6 = Menu.joins(:dish, :local, :dishes_type).where("menus.local_id"  => 1).limit(1);
      @join4 = Menu.joins(:dish, :local, :dishes_type).where("menus.local_id"  => 1).where("dishes_type_id"  => 1 );
      @join5 = Menu.joins(:dish, :local).where("menus.local_id"   => 1);
 end
  
  def show
  
      @join4 = Menu.joins(:dish, :local, :dishes_type).where("menus.local_id" => params[:id]);
      @join5 = Menu.joins(:dish, :local).where("menus.local_id" => params[:id]);
  end
   
end
