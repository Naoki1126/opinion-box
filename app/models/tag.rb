class Tag < ApplicationRecord
    validates :name,presence: true,uniqueness: true
    validates :caption,presence: true

    def posts_tag
        return Post.where(tag_id: self.id)
    end
end
