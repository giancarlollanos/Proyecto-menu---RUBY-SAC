class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
<<<<<<< HEAD
  before_action :authenticate_user!
  
=======
>>>>>>> 4600c9f2c3c1bd033827f184aae0099a85c5fe3c
  respond_to :html

  def index
    
    if current_user.profile.id==1
      flash[:notice] = 'Acceso'
    else 
      flash[:notice] = 'No tiene acceso'
    end
    
    @profiles = Profile.all
    respond_with(@profiles)
  end

  def show
    respond_with(@profile)
  end

  def new
    @profile = Profile.new
    respond_with(@profile)
  end

  def edit
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.save
    respond_with(@profile)
  end

  def update
    @profile.update(profile_params)
    respond_with(@profile)
  end

  def destroy
    @profile.destroy
    respond_with(@profile)
  end

  private
    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:name, :status)
    end
end
