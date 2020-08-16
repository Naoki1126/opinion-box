class Comment < ApplicationRecord
    validates :post_id,presence: true
    validates :comment,presence: true
    validates :user_id,presence: true

    def post_comment
        return Post.find_by(id: self.post_id)
    end

    def user_comment
        return User.find_by(id: self.user_id)
    end
end
