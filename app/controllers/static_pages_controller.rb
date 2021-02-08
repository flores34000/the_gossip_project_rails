class StaticPagesController < ApplicationController
  def contact
  end

  def team
  end

  def home
    

    @user = User.last
    puts "mon premier user #{@user}"
    params[:gossips] = Gossip.all
    puts "voici toutes les gossips #{params[:gossips]}"

    
    
  end
  
end