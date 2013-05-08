class Like < ActiveRecord::Base
    acts_as_like_store
    include PublicActivity::Model
    tracked owner: ->(controller, model) { controller && controller.current_user }
end
