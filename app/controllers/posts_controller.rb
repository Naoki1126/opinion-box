class PostsController < ApplicationController

    def index
        @posts = @current_user.posts_user
    end

    def show
        @post = Post.find(params[:id])
        @tag = @post.tag_post
        @comment = Comment.new
    end

    def edit
        @post = Post.find(params[:id])
    end
    
    def create
        @postnew = Post.new(post_params)
        @postnew.save
        redirect_back(fallback_location: root_path)
    end

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        redirect_to post_path(@post)
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_back(fallback_location: root_path)
    end

    private 
    def post_params
        params.require(:post).permit(:tag_id,:user_id,:content,:image)
    end
end
