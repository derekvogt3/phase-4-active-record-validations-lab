class Post < ApplicationRecord

    validates :title, presence: true
    validates :content, length: {minimum:250}
    validates :summary, length: {maximum:250}
    validates :category, inclusion:{in:["Fiction","Non-Fiction"]}
    validate :custom_validation

    def custom_validation
        if title == "True Facts"
            errors.add(:title, "Cant name it as true Facts")
        end
    end


end
