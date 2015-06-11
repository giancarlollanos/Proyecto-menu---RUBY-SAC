class CitylocalController < ApplicationController
  before_action :set_local, only: [:show, :edit, :update, :destroy]
  
  respond_to :html

  def index
    @locals = Local.all
    @localswhere = Local.where("locals.city" => params[:id]);
 
    #respond_with(@locals)
  end

  def show
    respond_with(@local)
  end

  def new
    @local = Local.new
    respond_with(@local)
  end

  def edit
  end

  def create
    @local = Local.new(local_params)
    @local.save
    respond_with(@local)
  end

  def update
    @local.update(local_params)
    respond_with(@local)
  end

  def destroy
    @local.destroy
    respond_with(@local)
  end

  private
    def set_local
      @local = Local.find(params[:id])
    end

    def local_params
      params.require(:local).permit(:description, :address, :phone, :city)
    end
end