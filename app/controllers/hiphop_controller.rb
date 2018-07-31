class HiphopController < ApplicationController
  before_action :authenticate_user!

  def index
   @posts = Post.where(:posts => { :genre => "Hip Hop" })
  end
end
