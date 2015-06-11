class HomeController < ApplicationController
layout "nivel_cliente"

  def index
  # if current_user.profile_id == 1
  #     redirect_to(locals_path)
  # else
  #     redirect_to(home_path)
  #     #redirect_to(weeks_path)
  #     #redirect_to @week
  # end
      @Orden = OrderDetail.joins(:dish, :order_header).where("order_headers.local_id" => params[:id])
      @users = User.all
      @menus = Menu.all
      @locals = Local.all
      @dishes = Menu.select("id, menus.price").where(:dish_id => params[:id]);
      @join = Menu.joins(:dish, :local, :dishes_type).where("menus.local_id" => params[:id]).group("menus.dishes_type_id");
      @join2 = Menu.joins(:dish, :local).where("menus.local_id" => params[:id]).limit(1);
      

      
  #   @join3 = Menu.joins(:dish, :local, :dishes_type).where("menus.local_id" => params[:id]);
  #    @task_months_2 = @join3.group("menus.dishes_type")
      
      # ("pets.name != ?", "fluffy")
      #respond_with(@join)
      
     # render "home/index"

   # end
  end
  
  def show
      @Orden = OrderDetail.joins(:dish, :order_header).where("order_headers.local_id" => params[:id])
      @menus = Menu.all
      @locals = Local.all
      @dishes = Menu.select("id, menus.price, menus.dishes_types.description").where(:dish_id => params[:id]);
      @join = Menu.joins(:dish, :local).where("menus.local_id" => params[:id]);
      @join2 = Menu.joins(:dish, :local).where("menus.local_id" => params[:id]).limit(1);
     
      
  #    @join3 = Menu.joins(:dish, :local, :dishes_type).where("menus.local_id" => params[:id]);
  #    @task_months_2 = @join3.group("menus.dishes_type")
      
      render "home/index"
  end
  

end
