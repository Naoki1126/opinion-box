class Post < ApplicationRecord
    validates :content,presence:true
    validates :user_id,presence:true
    validates :tag_id,presence:true
    
    mount_uploader :image, ImagesUploader
    def user_post
        return User.find_by(id: self.user_id)
    end

    def tag_post
        return Tag.find_by(id: self.tag_id)
    end

    def comment_post
        return Comment.where(post_id: self.id)
    end

    def favorite_post
        return Favorite.where(post_id: self.id)
    end
end
