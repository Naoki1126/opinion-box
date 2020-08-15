class Comment < ApplicationRecord
    validates :post_id,presence: true
    validates :comment,presence: true

    def post_comment
        return Comment.find_by(post_id: self.post_id)
    end

    def user_comment
        return Comment.find_by(user_id: self.user_id)
    end
end
