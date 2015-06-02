class WeeksController < ApplicationController
  before_action :set_week, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  respond_to :html

  def index
    @weeks = Week.all
    respond_with(@weeks)
  end

  def show
    respond_with(@week)
  end

  def new
    @week = Week.new
    respond_with(@week)
  end

  def edit
  end

  def create
    @week = Week.new(week_params)
    @week.save
    respond_with(@week)
  end

  def update
    @week.update(week_params)
    respond_with(@week)
  end

  def destroy
    @week.destroy
    respond_with(@week)
  end

  private
    def set_week
      @week = Week.find(params[:id])
    end

    def week_params
      params.require(:week).permit(:name, :date_inic, :date_fini, :status)
    end
end
