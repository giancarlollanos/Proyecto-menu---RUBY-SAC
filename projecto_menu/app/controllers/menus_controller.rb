class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  respond_to :html

  def index
    @menus = Menu.all
    respond_with(@menus)
  end

  def show
    respond_with(@menu)
    @dishes = Dish.select("id, description").where(:dish_id => params[:id]);
  end

  def new
    @menu = Menu.new
    respond_with(@menu)
  end

  def edit
  end

  def create
    @menu = Menu.new(menu_params)
    @menu.save
    respond_with(@menu)
  end

  def update
    @menu.update(menu_params)
    respond_with(@menu)
  end

  def destroy
    @menu.destroy
    respond_with(@menu)
  end

  private
    def set_menu
      @menu = Menu.find(params[:id])
    end

    def menu_params
      params.require(:menu).permit(:date_menu, :stock, :price, :status, :user_id, :local_id, :week_id, :dish_id)
    end
end
