class UsersController < ApplicationController
  
  def index
  end

  def create

  end
  
  def new
    
  end

  def edit
    
  end

 
  def show
    @user = Gossip.all.find_by(id: params[:id])
    puts @city_id = @user.user.city_id
    @city_name = City.find_by(id: @city_id).name
  end

  def update
    
  end

  def destroy
    
  end
end
