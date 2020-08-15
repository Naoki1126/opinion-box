class Post < ApplicationRecord
    validates :title,presence:true
    validates :content,presence:true
    validates :user_id,presence:true
    validates :tag_id,presence:true
    
    def user_post
        return Post.find_by(user_id: self.user_id)
    end

    def tag_post
        return Post.find_by(tag_id: self.tag_id)
    end

    def comment_post
        return Comment.where(post_id: self.id)
    end

    def favorite_post
        return Favorite.where(post_id: self.id)
    end
end
