class CommentsController < ApplicationController
    before_filter :authenticate_user!, only: [:create, :destroy]
    def create
        @post = Post.find(params[:comment][:post_id])
        @comment = Comment.new(params[:comment])
        @comment.user = current_user
        @comment.save
        redirect_to @post
    end
    
end
