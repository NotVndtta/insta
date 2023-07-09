class Post < ApplicationRecord
    belongs_to:user
    has_many_attached :images
    has_many :comments
    has_many :likes
    has_many :users, through: :likes
end
