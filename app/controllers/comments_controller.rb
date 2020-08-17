class CommentsController < ApplicationController

    def create
        @post = Post.find(params[:id])
        @comment = Comment.new(comment_params)
        @comment.user_id = @current_user.id
        @comment.save

    end

    def destroy
        @comment = Comment.find_by(id: params[:id],post_id: params[:post_id])
        @comment.destroy
    end

    private
    def comment_params
        params.require(:comment).permit(:)
        
end
