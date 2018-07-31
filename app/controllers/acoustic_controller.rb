class AcousticController < ApplicationController
  before_action :authenticate_user!

  def index
    
   @posts = Post.where(:posts => { :genre => "Acoustic" })
  
  end
end
