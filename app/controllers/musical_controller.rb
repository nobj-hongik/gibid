class MusicalController < ApplicationController
  before_action :authenticate_user!

  def index
    
   @posts = Post.where(:posts => { :genre => "Musical" })
  
  end
end
