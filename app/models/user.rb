class User < ApplicationRecord
    validates :name, presence:true
    validates :email, presence:true, uniqueness: true
    has_secure_password

    mount_uploader :image_name, ImagesUploader
    def posts_user
        return Post.where(user_id: self.id)
    end

    def comments_user
        return Comment.where(user_id: self.id)
    end

    def favorites_user
        return Favorite.where(user_id: self.id)
    end
end
