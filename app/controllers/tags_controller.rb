class TagsController < ApplicationController

    
    def index
        @tags = Tag.all
        @tagnew = Tag.new
    end
    
    def show
        @tag = Tag.find(params[:id])
    end

    def create
        @tagnew = Tag.new(tag_params)
        @tagnew.save
        flash[:notice] = "タグが作成されました"
        redirect_to tag_path(@tagnew) 
    end

    private
    
    def tag_params
        params.require(:tag).permit(:name,:caption)
    end

end
