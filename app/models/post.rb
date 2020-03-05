class Post < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy
    has_one_attached :picture
    has_many :comments
end
