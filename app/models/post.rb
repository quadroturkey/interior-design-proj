class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :likes, dependent: :destroy
    has_one_attached :picture
end
