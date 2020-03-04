class User < ApplicationRecord
    has_secure_password
    has_many :posts, dependent: :delete_all
    has_many :items
    has_many :comments, through: :posts
    has_many :likes, through: :posts
end
