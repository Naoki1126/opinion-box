class PostsController < ApplicationController

    def index
    end

    def show
    end

    def edit
    end
    
    def create
        @postnew = Post.new(post_params)
        @postnew.save
        redirect_back(fallback_location: root_path)
    end

    def update
    end

    def destroy
        @post = Post.find(params_id)
        @post.destroy
        redirect_back(fallback_location: root_path)
    end

    private 
    def post_params
        params.require(:post).permit(:tag_id,:user_id,:content,:image)
    end
end
