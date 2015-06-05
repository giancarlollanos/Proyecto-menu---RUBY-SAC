class DishesController < ApplicationController
  before_action :set_dish, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  

  respond_to :html

  def index
    
    #current_user.profile.id
    @dishes = Dish.all
    respond_with(@dishes)
  end

  def show
    respond_with(@dish)
  end

  def new
    @dish = Dish.new
    respond_with(@dish)
  end

  def edit
  end

  def create
    @dish = Dish.new(dish_params)
    @dish.save
    respond_with(@dish)
  end

  def update
    @dish.update(dish_params)
    respond_with(@dish)
  end

  def destroy
    @dish.destroy
    respond_with(@dish)
  end

  private
    def set_dish
      @dish = Dish.find(params[:id])
    end

    def dish_params
      params.require(:dish).permit(:description, :status, :local_id, :dishes_type_id)
    end
end
