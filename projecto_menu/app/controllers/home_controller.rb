class HomeController < ApplicationController
  def index
    if current_user.profile_id == 1
      redirect_to(locals_path)
   else
      #redirect_to(home_path)
      #redirect_to(weeks_path)
      #redirect_to @week
      
      @menus = Menu.all
     # respond_with(@menus)
      
      render "home/index"
      
     
    end
  end
  
end
