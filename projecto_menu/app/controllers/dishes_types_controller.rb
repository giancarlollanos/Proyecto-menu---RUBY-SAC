class DishesTypesController < ApplicationController
  before_action :set_dishes_type, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  respond_to :html

  def index
    @dishes_types = DishesType.all
    respond_with(@dishes_types)
  end

  def show
    respond_with(@dishes_type)
  end

  def new
    @dishes_type = DishesType.new
    respond_with(@dishes_type)
  end

  def edit
  end

  def create
    @dishes_type = DishesType.new(dishes_type_params)
    @dishes_type.save
    respond_with(@dishes_type)
  end

  def update
    @dishes_type.update(dishes_type_params)
    respond_with(@dishes_type)
  end

  def destroy
    @dishes_type.destroy
    respond_with(@dishes_type)
  end

  private
    def set_dishes_type
      @dishes_type = DishesType.find(params[:id])
    end

    def dishes_type_params
      params.require(:dishes_type).permit(:description, :order_status_id)
    end
end
