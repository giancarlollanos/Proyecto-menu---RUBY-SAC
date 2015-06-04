class UsersController < ApplicationController
  #before_action :set_user, only: [:show, :index, :edit]
  before_action :authenticate_user!
  
    respond_to :html
    
    def show
        super 
    end
    
    def edit
        super 
    end
    
    def index
    #current_user.profile.id
    @users = User.all
    respond_with(@users)
    end
  
end
