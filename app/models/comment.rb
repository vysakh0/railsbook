class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  attr_accessible :content, :post_id
end
