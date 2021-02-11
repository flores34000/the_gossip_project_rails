class GossipsController < ApplicationController

 
  def index
    @gossips = Gossip.all
  end

  
  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: User.all.sample.id)
    if @gossip.save
     
      redirect_to root_path 
    else
      
      render new_gossip_path 
    end
  end
  
  
  def new
    @gossip = Gossip.new
  end

  
  def edit
    @gossip = Gossip.all.find_by(id:params[:id])
  end

  
  def show
    @gossip = Gossip.all.find_by(id: params[:id])
   
    
    
  end

  
  def update
    
  end

  
  def destroy
    @gossip = Gossip.find(params[:id])
    if @gossip.destroy
     
      redirect_to root_path, success: "Gossip suprimé"
    else
      
      redirect_to root_path, danger: "Echec"
    end
  end
end
