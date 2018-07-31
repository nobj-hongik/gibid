class ClassicController < ApplicationController
  before_action :authenticate_user!

  def index
    
   @posts = Post.where(:posts => { :genre => "Classic" })
  
  end
end
