class HomeController < ApplicationController
    def index
        unless user_signed_in?
            redirect_to new_user_session_path
        else
        @post = Post.new
        followees_ids = current_user.followees(User).pluck(:id)
        #get only the ids of the people current_user folllows
        #followees_ids << current_user.id
        @activities = PublicActivity::Activity.where(owner_id: followees_ids, owner_type: "User")
        end
    end

end
