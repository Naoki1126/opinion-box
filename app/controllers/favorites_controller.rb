class FavoritesController < ApplicationController

    def create
        @post = Post.find(params[:id])
        @favorite = Favorite.new(favorite_params)
        @favorite.save
    end

    def destroy
        @favorite = Favorite.find_by(post_id: params[:post_id,user_id: @current_user.id])
        @favorite.destroy
    end

    private
    def favorite_params
        params.require(:favorite).permit(:user_id,:post_id)
    end
end
