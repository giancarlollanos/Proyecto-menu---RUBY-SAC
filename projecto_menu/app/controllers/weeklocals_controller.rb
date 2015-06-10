class WeeklocalsController < ApplicationController
  
  respond_to :html

  def index
      @menus = Menu.all
      @locals = Local.all
      @dishes = Menu.select("id, menus.price").where(:dish_id => params[:id]);
      @join = Menu.joins(:dish, :local, :dishes_type).where("menus.local_id" => params[:id]).group("menus.dishes_type_id");
      @join2 = Menu.joins(:dish, :local).where("menus.local_id" => params[:id]).limit(1);
  end
  
  def show
  
  @menus = Menu.all
      @locals = Local.all
      @dishes = Menu.select("id, menus.price").where(:dish_id => params[:id]);
      @join = Menu.joins(:dish, :local, :dishes_type).where("menus.local_id" => params[:id]).group("menus.dishes_type_id");
      @join2 = Menu.joins(:dish, :local).where("menus.local_id" => params[:id]).limit(1);
  end
  
end