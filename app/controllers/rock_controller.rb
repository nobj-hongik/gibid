class RockController < ApplicationController
  before_action :authenticate_user!

  def index
    
   @posts = Post.where(:posts => { :genre => "Rock" })
  
  end
end
