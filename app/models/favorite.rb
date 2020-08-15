class Favorite < ApplicationRecord
    validates :post_id,presence:true
    validates :user_id,presence:true

    def post_favorite
        return Favorite.find_by(post_id: self.post_id)
    end
end
