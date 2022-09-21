class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: ["Fiction", "Non-Fiction"]

    validate :title_is_clickbait,
    :
end

def title_is_clickbait
   unless self.title != "Won't Believe" || "Secret" || "Top [number]" || "Guess"
   #else self.title != "True Facts"
    errors.add(:title, "make your title hook 'em")
   end
end