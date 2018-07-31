class DanceController < ApplicationController
  before_action :authenticate_user!

  def index
    
   @posts = Post.where(:posts => { :genre => "Dance" })
  
  end
end
