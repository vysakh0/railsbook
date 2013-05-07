class HomeController < ApplicationController
  def index
	  @post = Post.new
	  unless user_signed_in?
		  redirect_to new_user_session_path
	  end
  end

end
