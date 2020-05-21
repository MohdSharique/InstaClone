class Post < ApplicationRecord
    belongs_to :user

    has_attached_file :image

    validates_attachment :image,
    content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
    
    def image_presence
        errors.add(:image, "can't be blank") unless image.attached?
    end
end
