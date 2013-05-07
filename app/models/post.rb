class Post < ActiveRecord::Base
    attr_accessible :content, :user_id, :avatar
    belongs_to :user
    has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "avatar/missing.jpg"
    has_many :comments
    acts_as_likeable
end
