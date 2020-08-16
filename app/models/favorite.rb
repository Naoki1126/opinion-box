class Favorite < ApplicationRecord
    validates :post_id,presence:true
    validates :user_id,presence:true

    def post_favorite
        return Post.find_by(id: self.post_id)
    end

    def user_favorite
        return User.find_by(id: self.user_id)
    end
end
